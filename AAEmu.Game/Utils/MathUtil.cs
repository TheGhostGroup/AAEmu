﻿using System;
using System.Numerics;
using AAEmu.Game.Models.Game.World;
using Microsoft.VisualBasic.CompilerServices;

namespace AAEmu.Game.Utils
{
    public class MathUtil
    {
        // Return degree value of object 2 to the horizontal line with object 1 being the origin
        public static double CalculateAngleFrom(GameObject obj1, GameObject obj2)
        {
            return CalculateAngleFrom(obj1.Position.X, obj1.Position.Y, obj2.Position.X, obj2.Position.Y);
        }

        // Return degree value of object 2 to the horizontal line with object 1 being the origin
        public static double CalculateAngleFrom(float obj1X, float obj1Y, float obj2X, float obj2Y)
        {
            var angleTarget = RadianToDegree(Math.Atan2(obj2Y - obj1Y, obj2X - obj1X));
            if (angleTarget < 0)
                angleTarget += 360;
            return angleTarget;
        }

        public static double RadianToDegree(double angle)
        {
            return angle * (180.0 / Math.PI);
        }

        public static double ConvertDirectionToDegree(sbyte direction)
        {
            var angle = direction * (360f / 128) + 90;
            if (angle < 0)
                angle += 360;
            return angle;
        }

        public static sbyte ConvertDegreeToDirection(double degree)
        {
            if (degree < 0)
                degree = 360 + degree;
            degree -= 90;
            var res = (sbyte)(degree / (360f / 128));
            if (res > 85)
                res = (sbyte)((degree - 360) / (360f / 128));
            return res;
        }
        public static sbyte ConvertDegreeToDoodadDirection(double degree)
        {
            while (degree < 0f)
                degree += 360f;
            if ((degree > 90f) && (degree <= 180f))
                return (sbyte)((((degree - 90f) / 90f * 37f) + 90f) * - 1); 
            if (degree > 180f)
                return (sbyte)((((degree - 270f) / 90f * 37f) - 90f) * -1);
            // When range is between -90 and 90, no rotation scaling is applied for doodads
            return (sbyte)(degree * - 1);
        }
        public static bool IsFront(GameObject obj1, GameObject obj2)
        {
            var degree = CalculateAngleFrom(obj1, obj2);
            var degree2 = ConvertDirectionToDegree(obj2.Position.RotationZ);
            var diff = Math.Abs(degree - degree2);

            if (diff >= 90 && diff <= 270)
                return true;

            return false;
        }

        public static double ConvertDirectionToRadian(sbyte direction)
        {
            return ConvertDirectionToDegree(direction) * Math.PI / 180.0;
        }

        public static (float, float, float) GetYawPitchRollFromQuat(Quaternion quat)
        {
            var roll = (float)Math.Atan2(2 * (quat.W * quat.X + quat.Y * quat.Z),
                1 - 2 * (quat.X * quat.X + quat.Y * quat.Y));
            var sinp = 2 * (quat.W * quat.Y - quat.Z * quat.X);
            var pitch = 0.0f;
            if (Math.Abs(sinp) >= 1)
                pitch = (float)Math.CopySign(Math.PI / 2, sinp);
            else
            {
                pitch = (float)Math.Asin(sinp);
            }

            var yaw = (float)Math.Atan2(2 * (quat.W * quat.Z + quat.X * quat.Y), 1 - 2 * (quat.Y * quat.Y + quat.Z * quat.Z));

            return (roll, pitch, yaw);
        }
        
        public static (float, float, float) GetSlaveRotationInDegrees(short rotX, short rotY, short rotZ)
        {
            var quatX = rotX * 0.00003052f;
            var quatY = rotY * 0.00003052f;
            var quatZ = rotZ * 0.00003052f;
            var quatNorm = quatX * quatX + quatY * quatY + quatZ * quatZ;

            var quatW = 0.0f;
            if (quatNorm < 0.99750)
            {
                quatW = (float)Math.Sqrt(1.0 - quatNorm);
            }

            var quat = new Quaternion(quatX, quatY, quatZ, quatW);
            //
            // var roll = (float)Math.Atan2(2 * (quat.W * quat.X + quat.Y * quat.Z),
            //     1 - 2 * (quat.X * quat.X + quat.Y * quat.Y));
            // var sinp = 2 * (quat.W * quat.Y - quat.Z * quat.X);
            // var pitch = 0.0f;
            // if (Math.Abs(sinp) >= 1)
            //     pitch = (float)Math.CopySign(Math.PI / 2, sinp);
            // else
            // {
            //     pitch = (float)Math.Asin(sinp);
            // }
            //
            // var yaw = (float)Math.Atan2(2 * (quat.W * quat.Z + quat.X * quat.Y), 1 - 2 * (quat.Y * quat.Y + quat.Z * quat.Z));

            return GetYawPitchRollFromQuat(quat);
        }

        public static (short, short, short) GetSlaveRotationFromDegrees(float degX, float degY, float degZ)
        {
            var reverseQuat = Quaternion.CreateFromYawPitchRoll(degZ, degX, degY);
            return ((short)(reverseQuat.X / 0.00003052f), (short)(reverseQuat.Z / 0.00003052f),
                (short)(reverseQuat.Y / 0.00003052f));
        }
        
        public static (short, short, short) GetSlaveRotationFromQuat(Quaternion quaternion)
        {
            return ((short)(quaternion.X / 0.00003052f), (short)(quaternion.Z / 0.00003052f),
                (short)(quaternion.Y / 0.00003052f));
        }

        public static (float, float) AddDistanceToFrontDeg(float distance, float x, float y, float deg)
        {
            var rad = deg * Math.PI / 180.0;
            var newX = (distance * (float)Math.Cos(rad)) + x;
            var newY = (distance * (float)Math.Sin(rad)) + y;
            return (newX, newY);
        }
        
        public static (float, float) AddDistanceToFront(float distance, float x, float y, sbyte rotZ)
        {
            var rad = ConvertDirectionToRadian(rotZ);
            var newX = (distance * (float)Math.Cos(rad)) + x;
            var newY = (distance * (float)Math.Sin(rad)) + y;
            return (newX, newY);
        }

        public static (float, float) AddDistanceToRight(float distance, float x, float y, sbyte rotZ)
        {
            var rad = ConvertDirectionToRadian(rotZ) - (Math.PI / 2);
            var newX = (distance * (float)Math.Cos(rad)) + x;
            var newY = (distance * (float)Math.Sin(rad)) + y;
            return (newX, newY);
        }

        public static sbyte ConvertRadianToDirection(double radian) // TODO float zRot
        {
            var degree = RadianToDegree(radian);
            if (degree < 0)
                degree = 360 + degree;
            var res = (sbyte)(degree / (360f / 128));
            if (res > 85)
                res = (sbyte)((degree - 360) / (360f / 128));
            return res;
        }

        public static float CalculateDistance(Point loc, Point loc2, bool includeZAxis = false)
        {
            double dx = loc.X - loc2.X;
            double dy = loc.Y - loc2.Y;

            if (includeZAxis)
            {
                double dz = loc.Z - loc2.Z;
                return (float)Math.Sqrt(dx * dx + dy * dy + dz * dz);
            }

            return (float)Math.Sqrt(dx * dx + dy * dy);
        }

        public static Vector3 GetVectorFromQuat(Quaternion quat)
        {
                double sqw = quat.W*quat.W;
                double sqx = quat.X*quat.X;
                double sqy = quat.Y*quat.Y;
                double sqz = quat.Z*quat.Z;
                
                var rotX = (float)Math.Atan2(2.0 * (quat.X*quat.Y + quat.Z*quat.W),(sqx - sqy - sqz + sqw));
                var rotY = (float)Math.Atan2(2.0 * (quat.Y*quat.Z + quat.X*quat.W),(-sqx - sqy + sqz + sqw));
                var rotZ = (float)Math.Asin(-2.0 * (quat.X*quat.Z - quat.Y*quat.W)/(sqx + sqy + sqz + sqw));

                return new Vector3(rotX, rotY, rotZ);
        }
    }
}

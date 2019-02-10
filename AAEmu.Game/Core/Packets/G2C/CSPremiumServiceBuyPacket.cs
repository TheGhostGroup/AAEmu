using AAEmu.Commons.Network;
using AAEmu.Game.Core.Network.Game;

namespace AAEmu.Game.Core.Packets.G2C
{
    public class CSPremiumServiceBuyPacket : GamePacket
    {
        public CSPremiumServiceBuyPacket() : base(0x131, 1)
        {
        }

        public override void Read(PacketStream stream)
        {
            var cid = stream.ReadInt32();
            
            _log.Warn("PremiumServiceBuy, CId: {0}", cid);
        }
    }
}

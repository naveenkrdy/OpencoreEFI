// Injects missing PPMC device
DefinitionBlock ("", "SSDT", 2, "XLNC", "PPMC", 0x00005000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (PPMC)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}


// Injects missing MCHC device
DefinitionBlock ("", "SSDT", 2, "XLNC", "MCHC", 0x00005000)
{
    External(_SB_.PCI0, DeviceObj)
    
    Scope (\_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
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


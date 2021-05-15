// Disables Thunderbolt PCI
DefinitionBlock ("", "SSDT", 2, "XLNC", "TBDL", 0x00005000)
{
    External (_SB_.PCI0.RP17, DeviceObj)

    Scope (_SB.PCI0.RP17)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (DE01, PCI_Config, 0x50, One)
            Field (DE01, AnyAcc, NoLock, Preserve)
            {
                    ,   4, 
                DDDD,   1
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                DDDD = One
                Return (Zero)
            }
        }
    }
}


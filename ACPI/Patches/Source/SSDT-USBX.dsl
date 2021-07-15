// Injects USB Power Properties
DefinitionBlock ("", "SSDT", 2, "XLNC", "USBX", 0x00005000)
{
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)

    Scope (_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC
                })
            }

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


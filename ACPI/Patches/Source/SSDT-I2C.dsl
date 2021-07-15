// Touchpad functioning
DefinitionBlock ("", "SSDT", 2, "XLNC", "I2C_", 0x00005000)
{
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (TPDM, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            TPDM = Zero
        }
    }

    Scope (_SB.PCI0.I2C0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}


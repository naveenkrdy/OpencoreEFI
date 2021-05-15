// Brightness keys functioning
DefinitionBlock ("", "SSDT", 2, "XLNC", "BRT6", 0x00005000)
{
    External (_SB_.ACOS, IntObj)
    External (_SB_.ACSE, IntObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.BRTX, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            _SB.ACOS = 0x80
            _SB.ACSE = Zero
        }
    }

    Scope (_SB.PCI0.GFX0)
    {
        Method (BRT6, 2, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If ((Arg0 == One))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
                }

                If ((Arg0 & 0x02))
                {
                    Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
                }
            }
            Else
            {
                BRTX (Arg0, Arg1)
            }
        }
    }
}


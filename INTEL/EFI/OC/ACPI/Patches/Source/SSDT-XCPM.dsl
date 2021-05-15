// Enables CPU PowerManagement
DefinitionBlock ("", "SSDT", 2, "XLNC", "XCPM", 0x00005000)
{
    External (_SB_.PR00, ProcessorObj)

    Scope (_SB.PR00)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }
}


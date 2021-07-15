// Custom Sleep/Wake overriding functionality
DefinitionBlock ("", "SSDT", 2, "XLNC", "PSWK", 0x00005000)
{
    External (DGPU._OFF, MethodObj)    // 0 Arguments
    External (DGPU._ON_, MethodObj)    // 0 Arguments
    External (LIDW, MethodObj)    // 0 Arguments
    External (ZPTS, MethodObj)    // 1 Arguments
    External (ZWAK, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            If (CondRefOf (\DGPU._ON))
            {
                \DGPU._ON ()
            }
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            If (CondRefOf (\DGPU._OFF))
            {
                \DGPU._OFF ()
            }

            If (CondRefOf (LIDW))
            {
                LIDW ()
            }
        }

        Local0 = ZWAK (Arg0)
        Return (Local0)
    }
}

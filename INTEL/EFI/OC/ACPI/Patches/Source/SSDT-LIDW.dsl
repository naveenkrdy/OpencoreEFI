// Wakes screen on opening lid
// Companion to SSDT-PSWK
DefinitionBlock ("", "SSDT", 2, "XLNC", "LIDW", 0x00005000)
{
    External (_SB_.LID0, DeviceObj)

    Method (LIDW, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (CondRefOf (\_SB.LID0))
            {
                Notify (\_SB.LID0, 0x80) // Status Change
            }
        }
    }
}

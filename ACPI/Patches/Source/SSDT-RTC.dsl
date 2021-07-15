// Enables RTC device
DefinitionBlock ("", "SSDT", 2, "XLNC", "RTC_", 0x00005000)
{
    External (STAS, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            STAS = One
        }
    }
}


// VoodooPS2 configuration
// Companion to VoodooPS2.kext
DefinitionBlock ("", "SSDT", 2, "XLNC", "PS2K", 0x00005000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        If (_OSI ("Darwin"))
        {
            Name (RMCF, Package (0x0A)
            {
                "Keyboard", 
                Package (0x06)
                {
                    "Custom ADB Map", 
                    Package (0x01)
                    {
                        Package (0x00){}
                    }, 

                    "Custom PS2 Map", 
                    Package (0x01)
                    {
                        Package (0x00){}
                    }, 

                    "Swap command and option", 
                    ">n"
                }, 

                "Mouse", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }, 

                "ALPS GlidePoint", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }, 

                "Sentelic FSP", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }, 

                "Synaptics TouchPad", 
                Package (0x02)
                {
                    "DisableDevice", 
                    ">y"
                }
            })
        }
    }
}


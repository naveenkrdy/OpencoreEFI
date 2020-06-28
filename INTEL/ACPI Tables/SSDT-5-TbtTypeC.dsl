/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/naveen/Desktop/ACPI Tables/SSDT-5-TbtTypeC.aml, Thu Jun 25 03:37:48 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000037A (890)
 *     Revision         0x02
 *     Checksum         0xD9
 *     OEM ID           "DELL\x"
 *     OEM Table ID     "TbtTypeC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "DELL\x", "TbtTypeC", 0x00000000)
{
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)
    External (DPM1, IntObj)
    External (DPM2, IntObj)
    External (DPM3, IntObj)
    External (NDUS, IntObj)
    External (NTUS, IntObj)
    External (RPS0, IntObj)
    External (RPS1, IntObj)
    External (TBTS, IntObj)
    External (TP1D, IntObj)
    External (TP1P, IntObj)
    External (TP1T, IntObj)
    External (TP2D, IntObj)
    External (TP2P, IntObj)
    External (TP2T, IntObj)
    External (TP3D, IntObj)
    External (TP3P, IntObj)
    External (TP3T, IntObj)
    External (TP4D, IntObj)
    External (TP4P, IntObj)
    External (TP4T, IntObj)
    External (TP5D, IntObj)
    External (TP5P, IntObj)
    External (TP5T, IntObj)
    External (TP6D, IntObj)
    External (TP6P, IntObj)
    External (TP6T, IntObj)

    If (((TBTS == One) && ((RPS0 == 0x11) || (RPS1 == 0x11))))
    {
        If (CondRefOf (\_SB.PCI0.RP17.PXSX))
        {
            Scope (\_SB.PCI0.RP17.PXSX)
            {
                Name (TURP, 0x11)
                Device (TBDU)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                    Device (XHC)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (GPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                Return (PCKG) /* \_SB_.PCI0.RP17.PXSX.TBDU.XHC_.RHUB.GPLD.PCKG */
                            }

                            Method (GUPC, 1, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    Zero, 
                                    0xFF, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [Zero] = Arg0
                                Return (PCKG) /* \_SB_.PCI0.RP17.PXSX.TBDU.XHC_.RHUB.GUPC.PCKG */
                            }

                            Method (TPLD, 2, Serialized)
                            {
                                Name (PCKG, Package (0x01)
                                {
                                    Buffer (0x10){}
                                })
                                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                                REV = One
                                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                                VISI = Arg0
                                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                                GPOS = Arg1
                                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                                SHAP = One
                                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                                WID = 0x08
                                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                                HGT = 0x03
                                Return (PCKG) /* \_SB_.PCI0.RP17.PXSX.TBDU.XHC_.RHUB.TPLD.PCKG */
                            }

                            Method (TUPC, 1, Serialized)
                            {
                                Name (PCKG, Package (0x04)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                })
                                PCKG [One] = Arg0
                                Return (PCKG) /* \_SB_.PCI0.RP17.PXSX.TBDU.XHC_.RHUB.TUPC.PCKG */
                            }

                            Device (UB21)
                            {
                                Name (_ADR, One)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (TUPC (Zero))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Device (UB22)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (TUPC (Zero))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }

                            Device (UB31)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (GUPC (One))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (GPLD (One, 0x05))
                                }
                            }

                            Device (UB32)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (TUPC (Zero))
                                }

                                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                {
                                    Return (TPLD (Zero, Zero))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


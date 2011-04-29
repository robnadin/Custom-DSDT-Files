/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20091214
 *
 * Disassembly of ./dsdt.dat, Fri Apr 29 10:05:57 2011
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000043F7 (17399)
 *     Revision         0x01 **** ACPI 1.0, no 64-bit math support
 *     Checksum         0x77
 *     OEM ID           "SHUTTL"
 *     OEM Table ID     "SX48EV10"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000000 (50331648)
 */
DefinitionBlock ("./dsdt.aml", "DSDT", 1, "SHUTTL", "SX48EV10", 0x00001000)
{
    Scope (\_PR)
    {
        Processor (\_PR.CPU0, 0x00, 0x00000000, 0x00) {}
        Processor (\_PR.CPU1, 0x01, 0x00000000, 0x00) {}
        Processor (\_PR.CPU2, 0x02, 0x00000000, 0x00) {}
        Processor (\_PR.CPU3, 0x03, 0x00000000, 0x00) {}
    }

    Name (\_S0, Package (0x04)
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\SS1, Package (0x04)
    {
        0x01, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)
    {
        0x05, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)
    {
        0x06, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)
    {
        0x07, 
        0x00, 
        0x00, 
        0x00
    })
    Name (FLAG, 0x00)
    Name (STAT, 0x00)
    OperationRegion (\DEBG, SystemIO, 0x80, 0x01)
    Field (\DEBG, ByteAcc, NoLock, Preserve)
    {
        DBG1,   8
    }

    OperationRegion (\GLED, SystemIO, 0x048F, 0x01)
    Field (\GLED, ByteAcc, NoLock, Preserve)
    {
        LED,    8
    }

    OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
    Field (RCRB, DWordAcc, Lock, Preserve)
    {
                Offset (0x3404), 
            ,   7, 
        HPTF,   1, 
                Offset (0x3418), 
            ,   1, 
        PATD,   1, 
        SATD,   1
    }

    OperationRegion (ELKM, SystemMemory, 0x000FFFEA, 0x01)
    Field (ELKM, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
            ,   1, 
        ELSO,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1
    }

    OperationRegion (EXTM, SystemMemory, 0x000FF830, 0x10)
    Field (EXTM, WordAcc, NoLock, Preserve)
    {
        ROM1,   16, 
        RMS1,   16, 
        ROM2,   16, 
        RMS2,   16, 
        ROM3,   16, 
        RMS3,   16, 
        AMEM,   32
    }

    OperationRegion (\SMIC, SystemIO, 0xB2, 0x01)
    Field (\SMIC, ByteAcc, NoLock, Preserve)
    {
        SCP,    8
    }

    OperationRegion (\PM1S, SystemIO, 0x0400, 0x04)
    Field (\PM1S, ByteAcc, NoLock, Preserve)
    {
        PM00,   8, 
        PM01,   8, 
        PM02,   8, 
        PM03,   8
    }

    OperationRegion (\PM2S, SystemIO, 0x0429, 0x01)
    Field (\PM2S, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
        PM29,   1
    }

    OperationRegion (\SPEN, SystemIO, 0x0430, 0x01)
    Field (\SPEN, ByteAcc, NoLock, Preserve)
    {
            ,   4, 
        TRAP,   1
    }

    OperationRegion (\GBLE, SystemIO, 0x0421, 0x01)
    Field (\GBLE, ByteAcc, NoLock, Preserve)
    {
        ESMI,   8
    }

    OperationRegion (APMP, SystemIO, 0xB2, 0x02)
    Field (APMP, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (\GPO, SystemIO, 0x048C, 0x04)
    Field (\GPO, ByteAcc, NoLock, Preserve)
    {
        GO00,   1, 
        GO01,   1, 
        GO02,   1, 
        GO03,   1, 
        GO04,   1, 
        GO05,   1, 
        GO06,   1, 
        GO07,   1, 
        GO08,   1, 
        GO09,   1, 
        GO0A,   1, 
        GO0B,   1, 
        GO0C,   1, 
        GO0D,   1, 
        GO0E,   1, 
        GO0F,   1, 
        GO10,   1, 
        GO11,   1, 
        GO12,   1, 
        GO13,   1, 
        GO14,   1, 
        GO15,   1, 
        GO16,   1, 
        GO17,   1, 
        GO18,   1, 
        GO19,   1, 
        GO1A,   1, 
        GO1B,   1, 
        GO1C,   1, 
        GO1D,   1, 
        GO1E,   1, 
        GO1F,   1
    }

    OperationRegion (\GPO2, SystemIO, 0x04B8, 0x04)
    Field (\GPO2, ByteAcc, NoLock, Preserve)
    {
        GO20,   1, 
        GO21,   1, 
        GO22,   1, 
        GO23,   1, 
        GO24,   1, 
        GO25,   1, 
        GO26,   1, 
        GO27,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
                Offset (0x02), 
        GO30,   1, 
        GO31,   1
    }

    Name (OSFX, 0x01)
    Name (OSFL, 0x01)
    Method (STRC, 2, NotSerialized)
    {
        If (LNotEqual (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (0x00)
        }

        Add (SizeOf (Arg0), 0x01, Local0)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
                BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    OperationRegion (RTCM, SystemIO, 0x70, 0x02)
    Field (RTCM, ByteAcc, NoLock, Preserve)
    {
        CMIN,   8, 
        CMDA,   8
    }

    IndexField (CMIN, CMDA, ByteAcc, NoLock, Preserve)
    {
                Offset (0x0F), 
        SHUT,   8
    }

    OperationRegion (INFO, SystemMemory, 0x000FF840, 0x01)
    Field (INFO, ByteAcc, NoLock, Preserve)
    {
        KBDI,   1, 
        RTCW,   1, 
        PS2F,   1, 
        IRFL,   2, 
        DISE,   1, 
        SSHU,   1, 
        AWMD,   1
    }

    OperationRegion (BEEP, SystemIO, 0x61, 0x01)
    Field (BEEP, ByteAcc, NoLock, Preserve)
    {
        S1B,    8
    }

    OperationRegion (CONT, SystemIO, 0x40, 0x04)
    Field (CONT, ByteAcc, NoLock, Preserve)
    {
        CNT0,   8, 
        CNT1,   8, 
        CNT2,   8, 
        CTRL,   8
    }

    Method (SPKR, 1, NotSerialized)
    {
        Store (S1B, Local0)
        Store (0xB6, CTRL)
        Store (0x55, CNT2)
        Store (0x03, CNT2)
        Store (Arg0, Local2)
        While (LGreater (Local2, 0x00))
        {
            Or (S1B, 0x03, S1B)
            Store (0x5FFF, Local3)
            While (LGreater (Local3, 0x00))
            {
                Decrement (Local3)
            }

            And (S1B, 0xFC, S1B)
            Store (0x0EFF, Local3)
            While (LGreater (Local3, 0x00))
            {
                Decrement (Local3)
            }

            Decrement (Local2)
        }

        Store (Local0, S1B)
    }

    Scope (\)
    {
        Name (PICF, 0x00)
        Method (_PIC, 1, NotSerialized)
        {
            Store (Arg0, PICF)
        }
    }

    Method (\_PTS, 1, NotSerialized)
    {
        Or (Arg0, 0xF0, Local0)
        Store (Local0, DBG1)
        Store (0x01, PM29)
        If (LNotEqual (VID0, 0xFFFF))
        {
            If (LEqual (And (RSR0, 0x01), 0x01))
            {
                Or (RSR0, 0x01, RSR0)
                Or (PMC0, 0x80, PMC0)
            }
        }

        If (LNotEqual (VID1, 0xFFFF))
        {
            If (LEqual (And (RSR1, 0x01), 0x01))
            {
                Or (RSR1, 0x01, RSR1)
                Or (PMC1, 0x80, PMC1)
            }
        }

        If (LNotEqual (VID2, 0xFFFF))
        {
            If (LEqual (And (RSR2, 0x01), 0x01))
            {
                Or (RSR2, 0x01, RSR2)
                Or (PMC2, 0x80, PMC2)
            }
        }

        If (LNotEqual (VID3, 0xFFFF))
        {
            If (LEqual (And (RSR3, 0x01), 0x01))
            {
                Or (RSR3, 0x01, RSR3)
                Or (PMC3, 0x80, PMC3)
            }
        }

        OSTP ()
        If (LEqual (Arg0, 0x01))
        {
            And (LED, 0xEF, LED)
        }

        If (LEqual (Arg0, 0x03))
        {
            And (LED, 0xEF, LED)
        }

        If (LEqual (Arg0, 0x05))
        {
            Store (ESMI, Local0)
            And (Local0, 0xFB, Local0)
            Store (Local0, ESMI)
        }

        If (LEqual (Arg0, 0x04))
        {
            And (LED, 0xEF, LED)
            If (LNot (PICF))
            {
                Sleep (0x64)
            }
        }
    }

    Method (\_WAK, 1, NotSerialized)
    {
        Store (0xFF, DBG1)
        Or (LED, 0x10, LED)
        If (LEqual (Arg0, 0x03))
        {
            Store (0x88, SCP)
        }

        Notify (\_SB.PCI0.PX40.UAR1, 0x00)
        If (OSFL)
        {
            Notify (\_SB.PWRB, 0x02)
        }
        Else
        {
            If (LEqual (RTCW, 0x00))
            {
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Notify (\_SB.PCI0.USB0, 0x00)
        Notify (\_SB.PCI0.USB1, 0x00)
        Notify (\_SB.PCI0.USB2, 0x00)
        Notify (\_SB.PCI0.USB3, 0x00)
        Notify (\_SB.PCI0.USB4, 0x00)
        Notify (\_SB.PCI0.USB5, 0x00)
    }

    Scope (\_SI)
    {
        Method (_MSG, 1, NotSerialized)
        {
            Store (Local0, Local0)
        }

        Method (_SST, 1, NotSerialized)
        {
            Store (Local0, Local0)
        }
    }

    Scope (\_GPE)
    {
        Method (_L03, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB0, 0x02)
        }

        Method (_L04, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB1, 0x02)
        }

        Method (_L0C, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB2, 0x02)
        }

        Method (_L0E, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB3, 0x02)
        }

        Method (_L05, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB4, 0x02)
        }

        Method (_L20, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB5, 0x02)
        }

        Method (_L0D, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.IGBE, 0x02)
        }

        Method (_L0B, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.HUB0, 0x02)
        }

        Method (_L08, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.PX40.UAR1, 0x02)
        }

        Method (_L09, 0, NotSerialized)
        {
            If (LNotEqual (VID0, 0xFFFF))
            {
                If (LEqual (And (RSR0, 0x01), 0x01))
                {
                    Store (0xFF, RSR0)
                    Store (0x80, PMC0)
                    Notify (\_SB.PCI0.PEX0, 0x02)
                }
            }

            If (LNotEqual (VID1, 0xFFFF))
            {
                If (LEqual (And (RSR1, 0x01), 0x01))
                {
                    Store (0xFF, RSR1)
                    Store (0x80, PMC1)
                    Notify (\_SB.PCI0.PEX1, 0x02)
                }
            }

            If (LNotEqual (VID2, 0xFFFF))
            {
                If (LEqual (And (RSR2, 0x01), 0x01))
                {
                    Store (0xFF, RSR2)
                    Store (0x80, PMC2)
                    Notify (\_SB.PCI0.PEX2, 0x02)
                }
            }

            If (LNotEqual (VID3, 0xFFFF))
            {
                If (LEqual (And (RSR3, 0x01), 0x01))
                {
                    Store (0xFF, RSR3)
                    Store (0x80, PMC3)
                    Notify (\_SB.PCI0.PEX3, 0x02)
                }
            }

            If (LNotEqual (VID4, 0xFFFF))
            {
                If (LEqual (And (RSR4, 0x01), 0x01))
                {
                    Store (0xFF, RSR4)
                    Store (0x80, PMC4)
                    Notify (\_SB.PCI0.PEX4, 0x02)
                }
            }

            If (LNotEqual (VID5, 0xFFFF))
            {
                If (LEqual (And (RSR5, 0x01), 0x01))
                {
                    Store (0xFF, RSR5)
                    Store (0x80, PMC5)
                    Notify (\_SB.PCI0.PEX5, 0x02)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0B)
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))
            Name (_CID, EisaId ("PNP0A03"))
            Name (_ADR, 0x00)
            Name (_UID, 0x01)
            Name (_BBN, 0x00)
            Method (_S3D, 0, NotSerialized)
            {
                If (LEqual (OSFL, 0x02))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)
            {
                Name (BUF0, ResourceTemplate ()
                {
                    WordBusNumber (ResourceConsumer, MinNotFixed, MaxNotFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0100,             // Length
                        ,, )
                    IO (Decode16,
                        0x0CF8,             // Range Minimum
                        0x0CF8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        )
                    WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x0CF7,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0CF8,             // Length
                        ,, , TypeStatic)
                    WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000,             // Granularity
                        0x0D00,             // Range Minimum
                        0xFFFF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0xF300,             // Length
                        ,, , TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x000A0000,         // Range Minimum
                        0x000BFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x00020000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x000C0000,         // Range Minimum
                        0x000DFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x00020000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x00100000,         // Range Minimum
                        0xFEBFFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0xFFF00000,         // Length
                        ,, _Y00, AddressRangeMemory, TypeStatic)
                })
                CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._MIN, TCMM)
                CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._LEN, TOMM)
                Add (AMEM, 0x00060000, TCMM)
                Add (TCMM, 0x00010000, TCMM)
                Subtract (0xFEC00000, TCMM, TOMM)
                Return (BUF0)
            }

            Name (PICM, Package (0x1A)
            {
                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    \_SB.PCI0.LNK0, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    \_SB.PCI0.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.PCI0.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x01, 
                    \_SB.PCI0.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    \_SB.PCI0.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x00, 
                    \_SB.PCI0.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x01, 
                    \_SB.PCI0.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    \_SB.PCI0.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.PCI0.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.PCI0.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.PCI0.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.PCI0.LNK1, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.PCI0.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    \_SB.PCI0.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    \_SB.PCI0.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.PCI0.LNKD, 
                    0x00
                }
            })
            Name (APIC, Package (0x1A)
            {
                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)
            {
                If (LNot (PICF))
                {
                    Return (PICM)
                }
                Else
                {
                    Return (APIC)
                }
            }

            Device (PEX0)
            {
                Name (_ADR, 0x001C0000)
                Device (J368)
                {
                    Name (_ADR, 0x00)
                    Name (PIOT, Package (0x05)
                    {
                        0x0258, 
                        0x0186, 
                        0x014A, 
                        0xB4, 
                        0x78
                    })
                    Name (UDMA, Package (0x07)
                    {
                        0x78, 
                        0x50, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14, 
                        0x0F
                    })
                    Name (MDMA, Package (0x03)
                    {
                        0x01E0, 
                        0x96, 
                        0x78
                    })
                    OperationRegion (CF40, PCI_Config, 0x40, 0x01)
                    Field (CF40, ByteAcc, NoLock, Preserve)
                    {
                        CHE0,   1, 
                            ,   2, 
                        CAB0,   1, 
                                Offset (0x01)
                    }

                    Name (IDEB, Buffer (0x14) {})
                    CreateDWordField (IDEB, 0x00, GTM0)
                    CreateDWordField (IDEB, 0x04, GTM1)
                    CreateDWordField (IDEB, 0x08, GTM2)
                    CreateDWordField (IDEB, 0x0C, GTM3)
                    CreateDWordField (IDEB, 0x10, GTM4)
                    Name (PIO0, 0x04)
                    Name (DMA0, 0x06)
                    Name (MDA0, 0x02)
                    Name (PIO1, 0x04)
                    Name (DMA1, 0x06)
                    Name (MDA1, 0x02)
                    Name (FLAG, 0x1F)
                    Device (IDE0)
                    {
                        Name (_ADR, 0x00)
                        Method (_GTM, 0, NotSerialized)
                        {
                            Store (DerefOf (Index (PIOT, PIO0)), Local0)
                            Store (DerefOf (Index (PIOT, PIO1)), Local2)
                            Store (0x1A, Local4)
                            If (LAnd (FLAG, 0x01))
                            {
                                If (CAB0)
                                {
                                    Store (0x02, DMA0)
                                }

                                Store (DerefOf (Index (UDMA, DMA0)), Local1)
                                Or (Local4, 0x01, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, MDA0)), Local1)
                            }

                            If (LAnd (FLAG, 0x04))
                            {
                                If (CAB0)
                                {
                                    Store (0x02, DMA1)
                                }

                                Store (DerefOf (Index (UDMA, DMA1)), Local3)
                                Or (Local4, 0x04, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, MDA1)), Local3)
                            }

                            Store (Local0, GTM0)
                            Store (Local1, GTM1)
                            Store (Local2, GTM2)
                            Store (Local3, GTM3)
                            Store (Local4, GTM4)
                            Return (IDEB)
                        }

                        Method (_STM, 3, NotSerialized)
                        {
                            Store (Arg0, IDEB)
                            Store (GTM0, Local0)
                            Store (GTM1, Local1)
                            Store (GTM2, Local2)
                            Store (GTM3, Local3)
                            Store (GTM4, Local4)
                            Store (Local4, FLAG)
                            If (LAnd (LNotEqual (Local0, 0xFFFFFFFF), LNotEqual (Local0, 0x00)))
                            {
                                Store (Match (PIOT, MEQ, Local0, MTR, 0x00, 0x00), PIO0)
                            }

                            If (LAnd (LNotEqual (Local1, 0xFFFFFFFF), LNotEqual (Local1, 0x00)))
                            {
                                If (LAnd (FLAG, 0x01))
                                {
                                    Store (Match (UDMA, MEQ, Local1, MTR, 0x00, 0x00), DMA0)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local1, MTR, 0x00, 0x00), MDA0)
                                }
                            }

                            If (LAnd (LNotEqual (Local2, 0xFFFFFFFF), LNotEqual (Local2, 0x00)))
                            {
                                Store (Match (PIOT, MEQ, Local2, MTR, 0x00, 0x00), PIO1)
                            }

                            If (LAnd (LNotEqual (Local3, 0xFFFFFFFF), LNotEqual (Local3, 0x00)))
                            {
                                If (LAnd (FLAG, 0x04))
                                {
                                    Store (Match (UDMA, MEQ, Local3, MTR, 0x00, 0x00), DMA1)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local3, MTR, 0x00, 0x00), MDA1)
                                }
                            }
                        }

                        Device (PRI0)
                        {
                            Name (_ADR, 0x00)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Store (Buffer (0x07)
                                    {
                                        0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                        0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, 0x01, PIOM)
                                CreateByteField (Local1, 0x01, DMAM)
                                Store (PIO0, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                If (LAnd (FLAG, 0x01))
                                {
                                    Store (DMA0, DMAM)
                                    If (CAB0)
                                    {
                                        Store (0x02, DMAM)
                                    }

                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Store (MDA0, DMAM)
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }

                        Device (SEC0)
                        {
                            Name (_ADR, 0x01)
                            Method (_GTF, 0, NotSerialized)
                            {
                                Store (Buffer (0x07)
                                    {
                                        0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                        0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, 0x01, PIOM)
                                CreateByteField (Local1, 0x01, DMAM)
                                Store (PIO1, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                If (LAnd (FLAG, 0x04))
                                {
                                    Store (DMA1, DMAM)
                                    If (CAB0)
                                    {
                                        Store (0x02, DMAM)
                                    }

                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Store (MDA1, DMAM)
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }
                    }
                }

                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE0, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX0.PCE0, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                                Offset (0x62), 
                        RSR0,   8, 
                                Offset (0xDF), 
                        PMC0,   8
                    }
                }

                Name (PIC0, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }
                })
                Name (API0, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC0)
                    }
                    Else
                    {
                        Return (API0)
                    }
                }
            }

            Device (PEX1)
            {
                Name (_ADR, 0x001C0001)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE1, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX1.PCE1, ByteAcc, NoLock, Preserve)
                    {
                        VID1,   16, 
                                Offset (0x62), 
                        RSR1,   8, 
                                Offset (0xDF), 
                        PMC1,   8
                    }
                }

                Name (PIC1, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }
                })
                Name (API1, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC1)
                    }
                    Else
                    {
                        Return (API1)
                    }
                }
            }

            Device (PEX2)
            {
                Name (_ADR, 0x001C0002)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE2, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX2.PCE2, ByteAcc, NoLock, Preserve)
                    {
                        VID2,   16, 
                                Offset (0x62), 
                        RSR2,   8, 
                                Offset (0xDF), 
                        PMC2,   8
                    }
                }

                Name (PIC2, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }
                })
                Name (API2, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC2)
                    }
                    Else
                    {
                        Return (API2)
                    }
                }
            }

            Device (PEX3)
            {
                Name (_ADR, 0x001C0003)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE3, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX3.PCE3, ByteAcc, NoLock, Preserve)
                    {
                        VID3,   16, 
                                Offset (0x62), 
                        RSR3,   8, 
                                Offset (0xDF), 
                        PMC3,   8
                    }
                }

                Name (PIC3, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }
                })
                Name (API3, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC3)
                    }
                    Else
                    {
                        Return (API3)
                    }
                }
            }

            Device (PEX4)
            {
                Name (_ADR, 0x001C0004)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE4, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX4.PCE4, ByteAcc, NoLock, Preserve)
                    {
                        VID4,   16, 
                                Offset (0x62), 
                        RSR4,   8, 
                                Offset (0xDF), 
                        PMC4,   8
                    }
                }

                Name (PIC4, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }
                })
                Name (API4, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC4)
                    }
                    Else
                    {
                        Return (API4)
                    }
                }
            }

            Device (PEX5)
            {
                Name (_ADR, 0x001C0005)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE5, PCI_Config, 0x00, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX5.PCE5, ByteAcc, NoLock, Preserve)
                    {
                        VID5,   16, 
                                Offset (0x62), 
                        RSR5,   8, 
                                Offset (0xDF), 
                        PMC5,   8
                    }
                }

                Name (PIC5, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }
                })
                Name (API5, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PIC5)
                    }
                    Else
                    {
                        Return (API5)
                    }
                }
            }

            Device (HUB0)
            {
                Name (_ADR, 0x001E0000)
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Name (PICM, Package (0x04)
                {
                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x00, 
                        \_SB.PCI0.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x01, 
                        \_SB.PCI0.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x02, 
                        \_SB.PCI0.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x03, 
                        \_SB.PCI0.LNKB, 
                        0x00
                    }
                })
                Name (APIC, Package (0x04)
                {
                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0x000AFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (LNot (PICF))
                    {
                        Return (PICM)
                    }
                    Else
                    {
                        Return (APIC)
                    }
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x0B, 
                        0x05
                    })
                }
            }

            Device (PX40)
            {
                Name (_ADR, 0x001F0000)
                OperationRegion (PREV, PCI_Config, 0x08, 0x01)
                Scope (\)
                {
                    Field (\_SB.PCI0.PX40.PREV, ByteAcc, NoLock, Preserve)
                    {
                        REV0,   8
                    }
                }

                OperationRegion (PIRQ, PCI_Config, 0x60, 0x04)
                Scope (\)
                {
                    Field (\_SB.PCI0.PX40.PIRQ, ByteAcc, NoLock, Preserve)
                    {
                        PIRA,   8, 
                        PIRB,   8, 
                        PIRC,   8, 
                        PIRD,   8
                    }
                }

                OperationRegion (PIR2, PCI_Config, 0x68, 0x04)
                Scope (\)
                {
                    Field (\_SB.PCI0.PX40.PIR2, ByteAcc, NoLock, Preserve)
                    {
                        PIRE,   8, 
                        PIRF,   8, 
                        PIRG,   8, 
                        PIRH,   8
                    }
                }

                OperationRegion (LPIO, PCI_Config, 0x80, 0x0E)
                Scope (\)
                {
                    Field (\_SB.PCI0.PX40.LPIO, ByteAcc, NoLock, Preserve)
                    {
                        UAIO,   8, 
                        PRIO,   8, 
                        LPE1,   8, 
                        LPE2,   8, 
                        GN1L,   8, 
                        GN1H,   8, 
                                Offset (0x07), 
                                Offset (0x08), 
                        GN2L,   8, 
                        GN2H,   8
                    }

                    Method (DISD, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x00))
                        {
                            And (LPE1, 0xFE, LPE1)
                        }

                        If (LEqual (Arg0, 0x01))
                        {
                            And (LPE1, 0xFD, LPE1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            And (LPE1, 0xFB, LPE1)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            And (LPE1, 0xF7, LPE1)
                        }

                        If (LEqual (Arg0, 0x04))
                        {
                            And (LPE2, 0xFC, LPE2)
                        }

                        If (LEqual (Arg0, 0x05))
                        {
                            And (LPE1, 0xDF, LPE1)
                        }

                        If (LEqual (Arg0, 0x06))
                        {
                            And (GN2L, 0xFE, GN2L)
                        }
                    }

                    Method (CKIO, 2, NotSerialized)
                    {
                        If (LEqual (Arg1, 0x00))
                        {
                            Or (LPE1, 0x01, LPE1)
                            And (UAIO, 0xF0, Local0)
                            If (LEqual (Arg0, 0x03F8))
                            {
                                Or (Local0, 0x00, UAIO)
                            }

                            If (LEqual (Arg0, 0x02F8))
                            {
                                Or (Local0, 0x01, UAIO)
                            }

                            If (LEqual (Arg0, 0x02E8))
                            {
                                Or (Local0, 0x05, UAIO)
                            }

                            If (LEqual (Arg0, 0x03E8))
                            {
                                Or (Local0, 0x07, UAIO)
                            }
                        }

                        If (LEqual (Arg1, 0x01))
                        {
                            Or (LPE1, 0x02, LPE1)
                            And (UAIO, 0x0F, Local0)
                            If (LEqual (Arg0, 0x03F8))
                            {
                                Or (Local0, 0x00, UAIO)
                            }

                            If (LEqual (Arg0, 0x02F8))
                            {
                                Or (Local0, 0x10, UAIO)
                            }

                            If (LEqual (Arg0, 0x02E8))
                            {
                                Or (Local0, 0x50, UAIO)
                            }

                            If (LEqual (Arg0, 0x03E8))
                            {
                                Or (Local0, 0x70, UAIO)
                            }
                        }

                        If (LEqual (Arg1, 0x02))
                        {
                            Or (LPE1, 0x04, LPE1)
                            And (PRIO, 0xFC, Local0)
                            If (LEqual (Arg0, 0x0378))
                            {
                                Or (Local0, 0x00, PRIO)
                            }

                            If (LEqual (Arg0, 0x0278))
                            {
                                Or (Local0, 0x01, PRIO)
                            }

                            If (LEqual (Arg0, 0x03BC))
                            {
                                Or (Local0, 0x02, PRIO)
                            }
                        }

                        If (LEqual (Arg1, 0x03))
                        {
                            Or (LPE1, 0x08, LPE1)
                        }

                        If (LEqual (Arg1, 0x04))
                        {
                            If (LEqual (Arg0, 0x0201))
                            {
                                Or (LPE2, 0x01, LPE2)
                            }

                            If (LEqual (Arg0, 0x0209))
                            {
                                Or (LPE2, 0x02, LPE2)
                            }
                        }

                        If (LEqual (Arg1, 0x06))
                        {
                            If (LNotEqual (Arg0, 0xFFFF))
                            {
                                And (Arg0, 0xFF, Local0)
                                Or (Local0, 0x01, GN2L)
                                ShiftRight (Arg0, 0x08, GN2H)
                            }
                            Else
                            {
                                Store (Zero, GN2H)
                                Store (Zero, GN2L)
                            }
                        }
                    }
                }

                Scope (\)
                {
                    Method (SLDM, 2, NotSerialized)
                    {
                    }
                }

                Scope (\)
                {
                    OperationRegion (\SCPP, SystemIO, 0xB2, 0x01)
                    Field (\SCPP, ByteAcc, NoLock, Preserve)
                    {
                        SMIP,   8
                    }
                }

                Method (\_SB.PCI0._INI, 0, NotSerialized)
                {
                    If (STRC (\_OS, "Microsoft Windows"))
                    {
                        Store (0x56, SMIP)
                    }
                    Else
                    {
                        If (STRC (\_OS, "Microsoft Windows NT"))
                        {
                            If (CondRefOf (\_OSI, Local0))
                            {
                                If (\_OSI ("Windows 2001"))
                                {
                                    Store (0x59, SMIP)
                                    Store (0x00, OSFL)
                                    Store (0x03, OSFX)
                                }

                                If (\_OSI ("Windows 2006"))
                                {
                                    Store (0x59, SMIP)
                                    Store (0x00, OSFL)
                                    Store (0x04, OSFX)
                                }
                            }
                            Else
                            {
                                Store (0x58, SMIP)
                                Store (0x00, OSFX)
                                Store (0x00, OSFL)
                            }
                        }
                        Else
                        {
                            Store (0x57, SMIP)
                            Store (0x02, OSFX)
                            Store (0x02, OSFL)
                        }
                    }
                }

                Scope (\)
                {
                    Method (OSTP, 0, NotSerialized)
                    {
                        If (LEqual (OSFX, 0x01))
                        {
                            Store (0x56, SMIP)
                        }

                        If (LEqual (OSFX, 0x02))
                        {
                            Store (0x57, SMIP)
                        }

                        If (LEqual (OSFX, 0x00))
                        {
                            Store (0x58, SMIP)
                        }

                        If (LEqual (OSFX, 0x03))
                        {
                            Store (0x59, SMIP)
                        }

                        If (LEqual (OSFX, 0x04))
                        {
                            Store (0x59, SMIP)
                        }
                    }
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x01)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x01,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0074,             // Range Minimum
                            0x0074,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                        IO (Decode16,
                            0x0091,             // Range Minimum
                            0x0091,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0290,             // Range Minimum
                            0x0290,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0880,             // Range Minimum
                            0x0880,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMA1)
                {
                    Name (_HID, EisaId ("PNP0200"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0094,             // Range Minimum
                            0x0094,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (ATT5, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Name (ATT6, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSFX, 0x03))
                        {
                            If (HPTF)
                            {
                                Return (ATT6)
                            }
                            Else
                            {
                                Return (ATT5)
                            }
                        }
                        Else
                        {
                            Return (ATT5)
                        }
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))
                    Name (ATT3, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Name (ATT4, ResourceTemplate ()
                    {
                    })
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSFX, 0x03))
                        {
                            If (HPTF)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSFX, 0x03))
                        {
                            If (HPTF)
                            {
                                Return (ATT3)
                            }
                            Else
                            {
                                Return (ATT4)
                            }
                        }
                        Else
                        {
                            Return (ATT4)
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (ATT0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Name (ATT1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSFX, 0x03))
                        {
                            If (HPTF)
                            {
                                Return (ATT1)
                            }
                            Else
                            {
                                Return (ATT0)
                            }
                        }
                        Else
                        {
                            Return (ATT0)
                        }
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Scope (\)
                {
                    OperationRegion (WIN1, SystemIO, 0x2E, 0x02)
                    Field (WIN1, ByteAcc, NoLock, Preserve)
                    {
                        INDP,   8, 
                        DATP,   8
                    }

                    IndexField (INDP, DATP, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0x02), 
                        CFG,    8, 
                                Offset (0x07), 
                        LDN,    8, 
                                Offset (0x20), 
                        IDHI,   8, 
                        IDLO,   8, 
                        POWC,   8, 
                                Offset (0x30), 
                        ACTR,   8, 
                                Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IO2H,   8, 
                        IO2L,   8, 
                                Offset (0x70), 
                        INTR,   8, 
                                Offset (0x72), 
                        INT1,   8, 
                                Offset (0x74), 
                        DMCH,   8, 
                                Offset (0xF0), 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8
                    }

                    Method (ENFG, 0, NotSerialized)
                    {
                        Store (0x87, INDP)
                        Store (0x01, INDP)
                        Store (0x55, INDP)
                        Store (0x55, INDP)
                        Or (POWC, 0x80, POWC)
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        Store (0x02, CFG)
                    }

                    Method (GSRG, 1, NotSerialized)
                    {
                        Store (Arg0, INDP)
                        Return (DATP)
                    }

                    Method (SSRG, 2, NotSerialized)
                    {
                        Store (Arg0, INDP)
                        Store (Arg1, DATP)
                    }
                }

                Device (FDC0)
                {
                    Name (_HID, EisaId ("PNP0700"))
                    Method (_STA, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (Zero, LDN)
                        If (ACTR)
                        {
                            EXFG ()
                            Return (0x0F)
                        }
                        Else
                        {
                            If (LOr (IOAH, IOAL))
                            {
                                EXFG ()
                                Return (0x0D)
                            }
                            Else
                            {
                                EXFG ()
                                Return (0x00)
                            }
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x00, LDN)
                        Store (Zero, ACTR)
                        SLDM (DMCH, 0x04)
                        EXFG ()
                        DISD (0x03)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                _Y01)
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {2}
                        })
                        CreateByteField (BUF0, \_SB.PCI0.PX40.FDC0._CRS._Y01._MIN, IOLO)
                        CreateByteField (BUF0, 0x03, IOHI)
                        CreateByteField (BUF0, \_SB.PCI0.PX40.FDC0._CRS._Y01._MAX, IORL)
                        CreateByteField (BUF0, 0x05, IORH)
                        ENFG ()
                        EXFG ()
                        Return (BUF0)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {2}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x02, IOAD)
                        CreateWordField (Arg0, 0x19, IRQW)
                        CreateByteField (Arg0, 0x1C, DMAV)
                        ENFG ()
                        Store (Zero, LDN)
                        Store (One, ACTR)
                        SLDM (DMCH, DMCH)
                        CKIO (IOAD, 0x03)
                        EXFG ()
                    }
                }

                Device (UAR1)
                {
                    Name (_HID, EisaId ("PNP0501"))
                    Name (_UID, 0x01)
                    Method (_STA, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x01, LDN)
                        If (ACTR)
                        {
                            EXFG ()
                            Return (0x0F)
                        }
                        Else
                        {
                            If (LOr (IOAH, IOAL))
                            {
                                EXFG ()
                                Return (0x0D)
                            }
                            Else
                            {
                                EXFG ()
                                Return (0x00)
                            }
                        }

                        EXFG ()
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x01, LDN)
                        Store (Zero, ACTR)
                        EXFG ()
                        DISD (0x00)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF1, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                _Y02)
                            IRQNoFlags (_Y03)
                                {}
                        })
                        CreateByteField (BUF1, \_SB.PCI0.PX40.UAR1._CRS._Y02._MIN, IOLO)
                        CreateByteField (BUF1, 0x03, IOHI)
                        CreateByteField (BUF1, \_SB.PCI0.PX40.UAR1._CRS._Y02._MAX, IORL)
                        CreateByteField (BUF1, 0x05, IORH)
                        CreateWordField (BUF1, \_SB.PCI0.PX40.UAR1._CRS._Y03._INT, IRQW)
                        ENFG ()
                        Store (0x01, LDN)
                        Store (IOAL, IOLO)
                        Store (IOAL, IORL)
                        Store (IOAH, IOHI)
                        Store (IOAH, IORH)
                        Store (One, Local0)
                        ShiftLeft (Local0, INTR, IRQW)
                        EXFG ()
                        Return (BUF1)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x02, IOAD)
                        CreateWordField (Arg0, 0x09, IRQW)
                        ENFG ()
                        Store (0x01, LDN)
                        Store (One, ACTR)
                        Store (IOLO, IOAL)
                        Store (IOHI, IOAH)
                        FindSetRightBit (IRQW, Local0)
                        Subtract (Local0, 0x01, INTR)
                        EXFG ()
                        CKIO (IOAD, 0x00)
                    }
                }

                Device (LPT1)
                {
                    Name (_HID, EisaId ("PNP0400"))
                    Name (_UID, 0x01)
                    Method (_STA, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x03, LDN)
                        And (OPT1, 0x02, Local0)
                        If (LNotEqual (Local0, 0x02))
                        {
                            If (ACTR)
                            {
                                EXFG ()
                                Return (0x0F)
                            }
                            Else
                            {
                                If (LOr (IOAH, IOAL))
                                {
                                    EXFG ()
                                    Return (0x0D)
                                }
                                Else
                                {
                                    EXFG ()
                                    Return (0x00)
                                }
                            }
                        }
                        Else
                        {
                            EXFG ()
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x03, LDN)
                        Store (Zero, ACTR)
                        EXFG ()
                        DISD (0x02)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF5, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                _Y04)
                            IRQNoFlags (_Y05)
                                {}
                        })
                        CreateByteField (BUF5, \_SB.PCI0.PX40.LPT1._CRS._Y04._MIN, IOLO)
                        CreateByteField (BUF5, 0x03, IOHI)
                        CreateByteField (BUF5, \_SB.PCI0.PX40.LPT1._CRS._Y04._MAX, IORL)
                        CreateByteField (BUF5, 0x05, IORH)
                        CreateByteField (BUF5, \_SB.PCI0.PX40.LPT1._CRS._Y04._LEN, IOLE)
                        CreateWordField (BUF5, \_SB.PCI0.PX40.LPT1._CRS._Y05._INT, IRQW)
                        ENFG ()
                        Store (0x03, LDN)
                        Store (IOAL, IOLO)
                        Store (IOLO, IORL)
                        Store (IOAH, IOHI)
                        Store (IOHI, IORH)
                        If (LEqual (IOLO, 0xBC))
                        {
                            Store (0x04, IOLE)
                        }
                        Else
                        {
                            Store (0x08, IOLE)
                        }

                        Store (One, Local0)
                        Store (INTR, Local5)
                        ShiftLeft (Local0, Local5, IRQW)
                        EXFG ()
                        Return (BUF5)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x02, IOAD)
                        CreateByteField (Arg0, 0x04, IORL)
                        CreateByteField (Arg0, 0x05, IORH)
                        CreateWordField (Arg0, 0x09, IRQW)
                        ENFG ()
                        Store (0x03, LDN)
                        Store (One, ACTR)
                        Store (IOLO, IOAL)
                        Store (IOHI, IOAH)
                        FindSetLeftBit (IRQW, Local0)
                        Subtract (Local0, 0x01, Local0)
                        Store (Local0, INTR)
                        EXFG ()
                        CKIO (IOAD, 0x02)
                    }
                }

                Device (ECP1)
                {
                    Name (_HID, EisaId ("PNP0401"))
                    Name (_UID, 0x01)
                    Method (_STA, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x03, LDN)
                        And (OPT1, 0x02, Local0)
                        If (LEqual (Local0, 0x02))
                        {
                            If (ACTR)
                            {
                                EXFG ()
                                Return (0x0F)
                            }
                            Else
                            {
                                If (LOr (IOAH, IOAL))
                                {
                                    EXFG ()
                                    Return (0x0D)
                                }
                                Else
                                {
                                    EXFG ()
                                    Return (0x00)
                                }
                            }
                        }
                        Else
                        {
                            EXFG ()
                            Return (0x00)
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        ENFG ()
                        Store (0x03, LDN)
                        Store (Zero, ACTR)
                        SLDM (DMCH, 0x04)
                        EXFG ()
                        DISD (0x02)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF6, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                _Y06)
                            IO (Decode16,
                                0x0000,             // Range Minimum
                                0x0000,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                _Y07)
                            IRQNoFlags (_Y08)
                                {}
                            DMA (Compatibility, NotBusMaster, Transfer8, _Y09)
                                {}
                        })
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y06._MIN, IOLO)
                        CreateByteField (BUF6, 0x03, IOHI)
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y06._MAX, IORL)
                        CreateByteField (BUF6, 0x05, IORH)
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y06._LEN, IOLE)
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y07._MIN, IOEL)
                        CreateByteField (BUF6, 0x0B, IOEH)
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y07._MAX, IOML)
                        CreateByteField (BUF6, 0x0D, IOMH)
                        CreateWordField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y08._INT, IRQW)
                        CreateByteField (BUF6, \_SB.PCI0.PX40.ECP1._CRS._Y09._DMA, DMAC)
                        ENFG ()
                        Store (0x03, LDN)
                        Store (IOAL, Local2)
                        Store (Local2, IOLO)
                        Store (IOAH, Local3)
                        Store (Local3, IOHI)
                        Or (Local3, 0x04, Local3)
                        Store (Local3, IOEH)
                        Store (Local3, IOMH)
                        Store (IOLO, IORL)
                        Store (IOLO, IOEL)
                        Store (IOLO, IOML)
                        Store (IOHI, IORH)
                        If (LEqual (IOLO, 0xBC))
                        {
                            Store (0x04, IOLE)
                        }
                        Else
                        {
                            Store (0x08, IOLE)
                        }

                        Store (One, Local0)
                        Store (INTR, Local5)
                        ShiftLeft (Local0, Local5, IRQW)
                        Store (One, Local0)
                        Store (DMCH, Local5)
                        ShiftLeft (Local0, Local5, DMAC)
                        EXFG ()
                        Return (BUF6)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x00,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x00,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x00,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x00,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x00,               // Alignment
                                0x04,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x00,               // Alignment
                                0x04,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,7,9,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {1,3}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, IOLO)
                        CreateByteField (Arg0, 0x03, IOHI)
                        CreateWordField (Arg0, 0x02, IOAD)
                        CreateWordField (Arg0, 0x11, IRQW)
                        CreateByteField (Arg0, 0x14, DMAC)
                        ENFG ()
                        Store (0x03, LDN)
                        Store (One, ACTR)
                        Store (IOLO, IOAL)
                        Store (IOHI, IOAH)
                        FindSetLeftBit (IRQW, Local0)
                        Subtract (Local0, 0x01, Local0)
                        Store (Local0, INTR)
                        FindSetLeftBit (DMAC, Local1)
                        Store (DMCH, Local0)
                        Subtract (Local1, 0x01, DMCH)
                        SLDM (Local0, DMCH)
                        EXFG ()
                        CKIO (IOAD, 0x02)
                    }
                }

                OperationRegion (\GRAM, SystemMemory, 0x0400, 0x0100)
                Field (\GRAM, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x10), 
                    FLG0,   8
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (PS2F)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUFM, ResourceTemplate ()
                        {
                            IRQNoFlags ()
                                {12}
                        })
                        Name (BUF2, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {12}
                        })
                        If (KBDI)
                        {
                            If (LEqual (OSFL, 0x02))
                            {
                                Return (BUFM)
                            }

                            If (LEqual (OSFL, 0x01))
                            {
                                Return (BUFM)
                            }
                            Else
                            {
                                Return (BUF2)
                            }
                        }
                        Else
                        {
                            Return (BUFM)
                        }
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (KBDI)
                        {
                            If (LEqual (OSFX, 0x03))
                            {
                                Return (0x0F)
                            }

                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF7, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        })
                        Return (BUF7)
                    }
                }

                Device (PSMR)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x03)
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LEqual (KBDI, 0x00))
                        {
                            Return (0x00)
                        }

                        If (LEqual (PS2F, 0x00))
                        {
                            If (LEqual (OSFL, 0x02))
                            {
                                Return (0x0F)
                            }

                            If (LEqual (OSFL, 0x01))
                            {
                                Return (0x0F)
                            }

                            Return (0x00)
                        }

                        Return (0x00)
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (PMIO)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x02)
                    Method (_CRS, 0, NotSerialized)
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0400,             // Range Minimum
                                0x0400,             // Range Maximum
                                0x01,               // Alignment
                                0xC0,               // Length
                                )
                        })
                        Return (BUF0)
                    }
                }
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x05
                    })
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x03, 
                    0x03
                })
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x04, 
                    0x03
                })
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x0C, 
                    0x03
                })
            }

            Device (USB3)
            {
                Name (_ADR, 0x001A0000)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x0E, 
                    0x03
                })
            }

            Device (USB4)
            {
                Name (_ADR, 0x001A0001)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x05, 
                    0x03
                })
            }

            Device (USB5)
            {
                Name (_ADR, 0x001A0002)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x20, 
                    0x03
                })
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0007)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0007)
                Method (_S3D, 0, NotSerialized)
                {
                    If (LEqual (OSFL, 0x02))
                    {
                        Return (0x02)
                    }

                    Return (0x03)
                }

                Name (_PRW, Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }

            Device (IDE0)
            {
                Name (_ADR, 0x001F0002)
                OperationRegion (PCI, PCI_Config, 0x40, 0x20)
                Field (PCI, DWordAcc, NoLock, Preserve)
                {
                    ITM0,   16, 
                    ITM1,   16, 
                    SIT0,   4, 
                    SIT1,   4, 
                            Offset (0x08), 
                    UDC0,   2, 
                    UDC1,   2, 
                            Offset (0x0A), 
                    UDT0,   8, 
                    UDT1,   8, 
                            Offset (0x14), 
                    ICF0,   2, 
                    ICF1,   2, 
                        ,   6, 
                    WPPE,   1, 
                        ,   1, 
                    FAS0,   2, 
                    FAS1,   2
                }

                Device (PRIM)
                {
                    Name (_ADR, 0x00)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Store (GTM (ITM0, SIT0, UDC0, UDT0, ICF0, FAS0), Local0)
                        Return (Local0)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Store (STM (Arg0, Arg1, Arg2), Local0)
                        CreateDWordField (Local0, 0x00, ITM)
                        CreateDWordField (Local0, 0x04, SIT)
                        CreateDWordField (Local0, 0x08, UDC)
                        CreateDWordField (Local0, 0x0C, UDT)
                        CreateDWordField (Local0, 0x10, ICF)
                        CreateDWordField (Local0, 0x14, FAS)
                        Store (UDC, UDC0)
                        Store (UDT, UDT0)
                        Store (ICF, ICF0)
                        Store (FAS, FAS0)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, 0x00)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF0 (ITM0, SIT0, UDC0, UDT0, ICF0, H15F, FAS0), Local0)
                            Return (Local0)
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, 0x01)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF1 (ITM0, SIT0, UDC0, UDT0, ICF0, H15F, FAS0), Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, 0x01)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Store (GTM (ITM1, SIT1, UDC1, UDT1, ICF1, FAS1), Local0)
                        Return (Local0)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Store (STM (Arg0, Arg1, Arg2), Local0)
                        CreateDWordField (Local0, 0x00, ITM)
                        CreateDWordField (Local0, 0x04, SIT)
                        CreateDWordField (Local0, 0x08, UDC)
                        CreateDWordField (Local0, 0x0C, UDT)
                        CreateDWordField (Local0, 0x10, ICF)
                        CreateDWordField (Local0, 0x14, FAS)
                        Store (UDC, UDC1)
                        Store (UDT, UDT1)
                        Store (ICF, ICF1)
                        Store (FAS, FAS1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, 0x00)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF0 (ITM1, SIT1, UDC1, UDT1, ICF1, H15F, FAS1), Local0)
                            Return (Local0)
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, 0x01)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF1 (ITM1, SIT1, UDC1, UDT1, ICF1, H15F, FAS1), Local0)
                            Return (Local0)
                        }
                    }
                }
            }

            Device (IDE1)
            {
                Name (_ADR, 0x001F0005)
                OperationRegion (PCI, PCI_Config, 0x40, 0x20)
                Field (PCI, DWordAcc, NoLock, Preserve)
                {
                    ITM0,   16, 
                    ITM1,   16, 
                    SIT0,   4, 
                    SIT1,   4, 
                            Offset (0x08), 
                    UDC0,   1, 
                        ,   1, 
                    UDC1,   1, 
                            Offset (0x0A), 
                    UDT0,   8, 
                    UDT1,   8, 
                            Offset (0x14), 
                    ICF0,   2, 
                    ICF1,   2, 
                        ,   6, 
                    WPPE,   1, 
                        ,   1, 
                    FAS0,   2, 
                    FAS1,   2
                }

                Device (PRIM)
                {
                    Name (_ADR, 0x00)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Store (GTM (ITM0, SIT0, UDC0, UDT0, ICF0, FAS0), Local0)
                        Return (Local0)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Store (STM (Arg0, Arg1, Arg2), Local0)
                        CreateDWordField (Local0, 0x00, ITM)
                        CreateDWordField (Local0, 0x04, SIT)
                        CreateDWordField (Local0, 0x08, UDC)
                        CreateDWordField (Local0, 0x0C, UDT)
                        CreateDWordField (Local0, 0x10, ICF)
                        CreateDWordField (Local0, 0x14, FAS)
                        Store (UDC, UDC0)
                        Store (UDT, UDT0)
                        Store (ICF, ICF0)
                        Store (FAS, FAS0)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, 0x00)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF0 (ITM0, SIT0, UDC0, UDT0, ICF0, H15F, FAS0), Local0)
                            Return (Local0)
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, 0x01)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF1 (ITM0, SIT0, UDC0, UDT0, ICF0, H15F, FAS0), Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, 0x01)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Store (GTM (ITM1, SIT1, UDC1, UDT1, ICF1, FAS1), Local0)
                        Return (Local0)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Store (STM (Arg0, Arg1, Arg2), Local0)
                        CreateDWordField (Local0, 0x00, ITM)
                        CreateDWordField (Local0, 0x04, SIT)
                        CreateDWordField (Local0, 0x08, UDC)
                        CreateDWordField (Local0, 0x0C, UDT)
                        CreateDWordField (Local0, 0x10, ICF)
                        CreateDWordField (Local0, 0x14, FAS)
                        Store (UDC, UDC1)
                        Store (UDT, UDT1)
                        Store (ICF, ICF1)
                        Store (FAS, FAS1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, 0x00)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF0 (ITM1, SIT1, UDC1, UDT1, ICF1, H15F, FAS1), Local0)
                            Return (Local0)
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, 0x01)
                        Name (H15F, Zero)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Store (GTF1 (ITM1, SIT1, UDC1, UDT1, ICF1, H15F, FAS1), Local0)
                            Return (Local0)
                        }
                    }
                }
            }

            Method (GTM, 6, NotSerialized)
            {
                Store (Buffer (0x14) {}, Local0)
                CreateDWordField (Local0, 0x00, PIO0)
                CreateDWordField (Local0, 0x04, DMA0)
                CreateDWordField (Local0, 0x08, PIO1)
                CreateDWordField (Local0, 0x0C, DMA1)
                CreateDWordField (Local0, 0x10, FLAG)
                Store (0x10, FLAG)
                If (LOr (And (Arg0, 0x08), LNot (And (Arg0, 0x01
                    ))))
                {
                    Store (0x0384, PIO0)
                }
                Else
                {
                    Add (ShiftRight (And (Arg0, 0x0300), 0x08), ShiftRight (And (
                        Arg0, 0x3000), 0x0C), Local1)
                    Multiply (Subtract (0x09, Local1), 0x1E, PIO0)
                }

                If (LOr (LAnd (Arg0, 0x4000), LAnd (Arg2, 0x01)))
                {
                    If (LOr (And (Arg0, 0x80), LNot (And (Arg0, 0x10
                        ))))
                    {
                        Store (0x0384, PIO1)
                    }
                    Else
                    {
                        Add (And (Arg1, 0x03), ShiftRight (And (Arg1, 0x0C), 
                            0x02), Local1)
                        Multiply (Subtract (0x09, Local1), 0x1E, PIO1)
                    }
                }
                Else
                {
                    Store (PIO0, PIO1)
                }

                If (And (Arg2, 0x01))
                {
                    Subtract (0x04, And (Arg3, 0x03), Local1)
                    If (And (Arg5, 0x01))
                    {
                        Store (0x14, DMA0)
                    }
                    Else
                    {
                        If (And (Arg4, 0x01))
                        {
                            Multiply (Local1, 0x0F, DMA0)
                        }
                        Else
                        {
                            Multiply (Local1, 0x1E, DMA0)
                        }
                    }
                }
                Else
                {
                    Store (PIO0, DMA0)
                }

                If (LOr (LAnd (Arg0, 0x4000), LAnd (Arg2, 0x01)))
                {
                    If (And (Arg2, 0x02))
                    {
                        Subtract (0x04, ShiftRight (And (Arg3, 0x30), 0x04), Local1)
                        If (And (Arg5, 0x02))
                        {
                            Store (0x14, DMA1)
                        }
                        Else
                        {
                            If (And (Arg4, 0x02))
                            {
                                Multiply (Local1, 0x0F, DMA1)
                            }
                            Else
                            {
                                Multiply (Local1, 0x1E, DMA1)
                            }
                        }
                    }
                    Else
                    {
                        Store (PIO1, DMA1)
                    }
                }
                Else
                {
                    Store (DMA0, DMA1)
                }

                Store (Zero, FLAG)
                If (And (Arg0, 0x01))
                {
                    Or (FLAG, 0x10, FLAG)
                }

                If (And (Arg2, 0x01))
                {
                    Or (FLAG, 0x01, FLAG)
                }

                If (And (Arg0, 0x02))
                {
                    Or (FLAG, 0x02, FLAG)
                }

                If (And (Arg2, 0x02))
                {
                    Or (FLAG, 0x04, FLAG)
                }

                If (And (Arg0, 0x20))
                {
                    Or (FLAG, 0x08, FLAG)
                }

                Return (Local0)
            }

            Method (STM, 3, NotSerialized)
            {
                Store (Buffer (0x18) {}, Local7)
                CreateDWordField (Local7, 0x00, ITM)
                CreateDWordField (Local7, 0x04, SIT)
                CreateDWordField (Local7, 0x08, UDC)
                CreateDWordField (Local7, 0x0C, UDT)
                CreateDWordField (Local7, 0x10, ICF)
                CreateDWordField (Local7, 0x14, FAS)
                CreateDWordField (Arg0, 0x00, PIO0)
                CreateDWordField (Arg0, 0x04, DMA0)
                CreateDWordField (Arg0, 0x08, PIO1)
                CreateDWordField (Arg0, 0x0C, DMA1)
                CreateDWordField (Arg0, 0x10, FLAG)
                Store (FLAG, Local4)
                Store (0x8000, Local0)
                If (And (Local4, 0x02))
                {
                    Or (Local0, 0x07, Local0)
                }

                If (And (Local4, 0x08))
                {
                    Or (Local0, 0x4000, Local0)
                    Or (Local0, 0x70, Local0)
                }

                If (LAnd (LLess (DMA0, PIO0), LNot (And (Local4, 0x01))))
                {
                    Or (Local0, 0x08, Local0)
                }

                If (LAnd (LLess (DMA1, PIO1), LNot (And (Local4, 0x04))))
                {
                    Or (Local0, 0x80, Local0)
                }

                If (PIO0)
                {
                    If (LLess (PIO0, 0x0384))
                    {
                        Or (Local0, 0x01, Local0)
                    }
                }

                If (PIO1)
                {
                    If (LLess (PIO1, 0x0384))
                    {
                        Or (Local0, 0x10, Local0)
                    }
                }

                If (And (Local4, 0x01))
                {
                    Store (PIO0, Local1)
                }
                Else
                {
                    Store (DMA0, Local1)
                }

                If (Local1)
                {
                    If (LLessEqual (Local1, 0x78))
                    {
                        Or (Local0, 0x2300, Local0)
                    }
                    Else
                    {
                        If (LLessEqual (Local1, 0xB4))
                        {
                            Or (Local0, 0x2100, Local0)
                        }
                        Else
                        {
                            If (LLessEqual (Local1, 0xF0))
                            {
                                Or (Local0, 0x1000, Local0)
                            }
                        }
                    }
                }

                Store (Local0, ITM)
                Store (Zero, Local0)
                If (And (Local4, 0x04))
                {
                    Store (PIO1, Local1)
                }
                Else
                {
                    Store (DMA1, Local1)
                }

                If (Local1)
                {
                    If (LLessEqual (Local1, 0x78))
                    {
                        Store (0x0B, Local0)
                    }
                    Else
                    {
                        If (LLessEqual (Local1, 0xB4))
                        {
                            Store (0x09, Local0)
                        }
                        Else
                        {
                            If (LLessEqual (Local1, 0xF0))
                            {
                                Store (0x04, Local0)
                            }
                        }
                    }
                }

                Store (Local0, SIT)
                Store (0x00, Local0)
                If (And (Local4, 0x01))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (Local4, 0x04))
                {
                    Or (Local0, 0x02, Local0)
                }

                Store (Local0, UDC)
                Store (0x00, Local0)
                If (And (Local4, 0x01))
                {
                    If (LEqual (DMA0, 0x14))
                    {
                        Store (0x01, Local0)
                    }
                    Else
                    {
                        If (LLess (DMA0, 0x3C))
                        {
                            Divide (DMA0, 0x0F, , Local1)
                        }
                        Else
                        {
                            Divide (DMA0, 0x1E, , Local1)
                        }

                        Subtract (0x04, Local1, Local0)
                    }
                }

                If (And (Local4, 0x04))
                {
                    If (LEqual (DMA1, 0x14))
                    {
                        Store (0x01, Local1)
                    }
                    Else
                    {
                        If (LLess (DMA1, 0x3C))
                        {
                            Divide (DMA1, 0x0F, , Local1)
                        }
                        Else
                        {
                            Divide (DMA1, 0x1E, , Local1)
                        }

                        Subtract (0x04, Local1, Local1)
                    }

                    ShiftLeft (Local1, 0x04, Local1)
                    Or (Local0, Local1, Local0)
                }

                Store (Local0, UDT)
                Store (0x00, Local0)
                If (DMA0)
                {
                    If (LGreater (DMA0, 0x14))
                    {
                        If (LLess (DMA0, 0x3C))
                        {
                            Or (Local0, 0x01, Local0)
                        }
                    }
                }

                If (DMA1)
                {
                    If (LGreater (DMA1, 0x14))
                    {
                        If (LLess (DMA1, 0x3C))
                        {
                            Or (Local0, 0x02, Local0)
                        }
                    }
                }

                Store (Local0, ICF)
                Store (0x00, Local0)
                If (LEqual (DMA0, 0x14))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (LEqual (DMA1, 0x14))
                {
                    Or (Local0, 0x02, Local0)
                }

                Store (Local0, FAS)
                Return (Local7)
            }

            Method (H15P, 1, NotSerialized)
            {
                Name (BUFF, Buffer (0x08)
                {
                    /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                })
                Store (Arg0, Local0)
                Store (BUFF, Local1)
                Concatenate (Local0, Local1, Local7)
                CreateWordField (Local7, 0x02, CYL)
                CreateWordField (Local7, 0x06, HEAD)
                CreateWordField (Local7, 0x0C, SPT)
                If (LAnd (LGreaterEqual (HEAD, 0x10), LGreaterEqual (CYL, 0x2000)))
                {
                    Return (SPT)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GTF0, 7, NotSerialized)
            {
                Store (Buffer (0x07)
                    {
                        0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                    }, Local7)
                CreateByteField (Local7, 0x01, MODE)
                If (And (Arg2, 0x01))
                {
                    And (Arg3, 0x03, Local0)
                    If (And (Arg6, 0x01))
                    {
                        Add (Local0, 0x04, Local0)
                    }
                    Else
                    {
                        If (And (Arg4, 0x01))
                        {
                            Add (Local0, 0x02, Local0)
                        }
                    }

                    Or (Local0, 0x40, MODE)
                }
                Else
                {
                    Add (ShiftRight (And (Arg0, 0x0300), 0x08), ShiftRight (And (
                        Arg0, 0x3000), 0x0C), Local0)
                    If (LGreaterEqual (Local0, 0x05))
                    {
                        Store (0x22, MODE)
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x03))
                        {
                            Store (0x21, MODE)
                        }
                        Else
                        {
                            Store (0x20, MODE)
                        }
                    }
                }

                Concatenate (Local7, Local7, Local6)
                If (LOr (And (Arg0, 0x08), LNot (And (Arg0, 0x01
                    ))))
                {
                    If (And (Arg0, 0x02))
                    {
                        Store (0x00, MODE)
                    }
                    Else
                    {
                        Store (0x01, MODE)
                    }
                }
                Else
                {
                    Add (ShiftRight (And (Arg0, 0x0300), 0x08), ShiftRight (And (
                        Arg0, 0x3000), 0x0C), Local0)
                    If (LGreaterEqual (Local0, 0x05))
                    {
                        Store (0x0C, MODE)
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x03))
                        {
                            Store (0x0B, MODE)
                        }
                        Else
                        {
                            Store (0x0A, MODE)
                        }
                    }
                }

                Concatenate (Local6, Local7, Local5)
                If (Arg5)
                {
                    Store (Buffer (0x07)
                        {
                            0x00, 0x00, 0x00, 0x00, 0x00, 0xAE, 0x91
                        }, Local4)
                    CreateByteField (Local4, 0x01, SPT)
                    Store (Arg5, SPT)
                    Concatenate (Local5, Local4, Local6)
                    Return (Local6)
                }
                Else
                {
                    Return (Local5)
                }
            }

            Method (GTF1, 7, NotSerialized)
            {
                Store (Buffer (0x07)
                    {
                        0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                    }, Local7)
                CreateByteField (Local7, 0x01, MODE)
                If (And (Arg2, 0x02))
                {
                    ShiftRight (And (Arg3, 0x30), 0x04, Local0)
                    If (And (Arg6, 0x02))
                    {
                        Add (Local0, 0x04, Local0)
                    }
                    Else
                    {
                        If (And (Arg4, 0x02))
                        {
                            Add (Local0, 0x02, Local0)
                        }
                    }

                    Or (Local0, 0x40, MODE)
                }
                Else
                {
                    Add (ShiftRight (And (Arg1, 0x03), 0x02), And (Arg1, 
                        0x0C), Local0)
                    If (LGreaterEqual (Local0, 0x05))
                    {
                        Store (0x22, MODE)
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x03))
                        {
                            Store (0x21, MODE)
                        }
                        Else
                        {
                            Store (0x20, MODE)
                        }
                    }
                }

                Concatenate (Local7, Local7, Local6)
                If (LOr (And (Arg0, 0x80), LNot (And (Arg0, 0x10
                    ))))
                {
                    If (And (Arg0, 0x20))
                    {
                        Store (0x00, MODE)
                    }
                    Else
                    {
                        Store (0x01, MODE)
                    }
                }
                Else
                {
                    Add (ShiftRight (And (Arg1, 0x03), 0x02), And (Arg1, 
                        0x0C), Local0)
                    If (LGreaterEqual (Local0, 0x05))
                    {
                        Store (0x0C, MODE)
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x03))
                        {
                            Store (0x0B, MODE)
                        }
                        Else
                        {
                            Store (0x0A, MODE)
                        }
                    }
                }

                Concatenate (Local6, Local7, Local5)
                If (Arg5)
                {
                    Store (Buffer (0x07)
                        {
                            0x00, 0x00, 0x00, 0x00, 0x00, 0xBE, 0x91
                        }, Local4)
                    CreateByteField (Local4, 0x01, SPT)
                    Store (Arg5, SPT)
                    Concatenate (Local5, Local4, Local6)
                    Return (Local6)
                }
                Else
                {
                    Return (Local5)
                }
            }

            Device (PX43)
            {
                Name (_ADR, 0x001F0003)
                OperationRegion (PBAS, PCI_Config, 0x20, 0x02)
                Field (PBAS, ByteAcc, NoLock, Preserve)
                {
                    BAS0,   16
                }

                Method (SMBB, 0, NotSerialized)
                {
                    And (BAS0, 0xFFFE, Local0)
                    Return (Local0)
                }
            }

            Device (AZAL)
            {
                Name (_ADR, 0x001B0000)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x05
                    })
                }
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,7,9,10,11,12,14,15}
            })
            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y0A)
                    {}
            })
            CreateWordField (BUFB, \_SB.PCI0._Y0A._INT, IRQV)
            Device (LNKA)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x01)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRA, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRA, 0x80, PIRA)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRA, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRA)
                }
            }

            Device (LNKB)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x02)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRB, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRB, 0x80, PIRB)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRB, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRB)
                }
            }

            Device (LNKC)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x03)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRC, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRC, 0x80, PIRC)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRC, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRC)
                }
            }

            Device (LNKD)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x04)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRD, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRD, 0x80, PIRD)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRD, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRD)
                }
            }

            Device (LNKE)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x05)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRE, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRE, 0x80, PIRE)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRE, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRE)
                }
            }

            Device (LNKF)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x06)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRF, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRF, 0x80, PIRF)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRF, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRF)
                }
            }

            Device (LNK0)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x07)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRG, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRG, 0x80, PIRG)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRG, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRG)
                }
            }

            Device (LNK1)
            {
                Name (_HID, EisaId ("PNP0C0F"))
                Name (_UID, 0x08)
                Method (_STA, 0, NotSerialized)
                {
                    And (PIRH, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)
                {
                    Or (PIRH, 0x80, PIRH)
                }

                Method (_CRS, 0, NotSerialized)
                {
                    And (PIRH, 0x0F, Local0)
                    ShiftLeft (0x01, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)
                {
                    CreateWordField (Arg0, 0x01, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRH)
                }
            }

            Method (_PRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x0B, 
                    0x05
                })
            }

            Method (\_SB.PCI0.PX40.UAR1._PRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x08, 
                    0x05
                })
            }
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01"))
            Method (_CRS, 0, NotSerialized)
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0x000F0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00200000,         // Address Length
                        _Y0C)
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000100,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00060000,         // Address Length
                        _Y0B)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x000A0000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00100000,         // Address Base
                        0x00000000,         // Address Length
                        _Y0D)
                    Memory32Fixed (ReadWrite,
                        0xFEC00000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED13000,         // Address Base
                        0x0000D000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED20000,         // Address Base
                        0x00080000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEE00000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFFB00000,         // Address Base
                        0x00080000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFFF00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x000E0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
                CreateDWordField (BUF0, \_SB.MEM._CRS._Y0B._BAS, ACMM)
                CreateDWordField (BUF0, \_SB.MEM._CRS._Y0B._LEN, ASSM)
                CreateDWordField (BUF0, \_SB.MEM._CRS._Y0C._BAS, RMA5)
                CreateDWordField (BUF0, \_SB.MEM._CRS._Y0C._LEN, RSS5)
                CreateDWordField (BUF0, \_SB.MEM._CRS._Y0D._LEN, EXTM)
                And (AMEM, 0xFFF00000, Local0)
                Add (Local0, 0x00100000, RMA5)
                Store (0x00100000, RSS5)
                Subtract (AMEM, 0x00100000, EXTM)
                Store (AMEM, ACMM)
                And (AMEM, 0x000FFFFF, Local0)
                Subtract (0x00100000, Local0, ASSM)
                Return (BUF0)
            }
        }

        Device (\_SB.PCI0.PX40.FWH)
        {
            Name (_HID, EisaId ("INT0800"))
            Method (_CRS, 0, NotSerialized)
            {
                Name (FWH0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFFB80000,         // Address Base
                        0x00080000,         // Address Length
                        )
                })
                Return (FWH0)
            }
        }

        Device (\_SB.PCI0.EXPL)
        {
            Name (_HID, EisaId ("PNP0C02"))
            Name (_UID, 0x04)
            Method (_CRS, 0, NotSerialized)
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE0000000,         // Address Base
                        0x10000000,         // Address Length
                        )
                })
                Return (BUF0)
            }
        }
    }

    OperationRegion (TEMM, SystemMemory, 0x000FF810, 0x0C)
    Field (TEMM, WordAcc, NoLock, Preserve)
    {
        TP1H,   16, 
        TP1L,   16, 
        TP2H,   16, 
        TP2L,   16, 
        TRPC,   16, 
        SENF,   16
    }

    Name (TVAR, Buffer (0x05)
    {
        0x00, 0x00, 0x00, 0x00, 0x00
    })
    CreateByteField (TVAR, 0x00, PLCY)
    CreateWordField (TVAR, 0x01, CTOS)
    CreateWordField (TVAR, 0x03, CTHY)
    Name (TBUF, Buffer (0x04)
    {
        0x00, 0x00, 0x00, 0x00
    })
    CreateByteField (TBUF, 0x00, DB00)
    CreateByteField (TBUF, 0x01, DB01)
    CreateWordField (TBUF, 0x00, DW00)
    CreateWordField (TBUF, 0x02, DW01)
    CreateDWordField (TBUF, 0x00, DATD)
    OperationRegion (IP, SystemIO, 0x0295, 0x02)
    Field (IP, ByteAcc, NoLock, Preserve)
    {
        INDX,   8, 
        DAT0,   8
    }

    Method (SCFG, 1, NotSerialized)
    {
        SBYT (0x40, Arg0)
    }

    Method (STOS, 3, NotSerialized)
    {
        Divide (Arg2, 0x0A, Local0)
        If (LGreater (Local0, 0x0111))
        {
            Subtract (Local0, 0x0111, Local0)
        }
        Else
        {
            Subtract (0x0111, Local0, Local0)
            Or (Local0, 0x80, Local0)
        }

        SBYT (0x40, Local0)
    }

    Method (STHY, 3, NotSerialized)
    {
        Divide (Arg2, 0x0A, Local0)
        If (LGreater (Local0, 0x0111))
        {
            Subtract (Local0, 0x0111, Local0)
        }
        Else
        {
            Subtract (0x0111, Local0, Local0)
            Or (Local0, 0x80, Local0)
        }

        SBYT (0x41, Local0)
    }

    Method (RTMP, 0, NotSerialized)
    {
        Store (GBYT (0x29), Local0)
        FindSetLeftBit (Local0, Local1)
        If (LEqual (Local1, 0x08))
        {
            And (Local0, 0x7F, Local0)
            Multiply (Local0, 0x0A, Local0)
            Subtract (0x0AAC, Local0, Local0)
        }
        Else
        {
            Multiply (Local0, 0x0A, Local0)
            Add (0x0AAC, Local0, Local0)
        }

        If (LEqual (SSHU, 0x01))
        {
            Return (0x0C3C)
        }
        Else
        {
            Return (Local0)
        }
    }

    Method (SBYT, 2, NotSerialized)
    {
        Store (Arg0, INDX)
        Store (Arg1, DAT0)
    }

    Method (GBYT, 1, NotSerialized)
    {
        Store (Arg0, INDX)
        Store (DAT0, Local0)
        Return (Local0)
    }

    Method (SFAN, 1, NotSerialized)
    {
        And (SENF, 0x02, Local0)
        If (LEqual (Local0, Zero))
        {
            If (LEqual (Arg0, Zero))
            {
                FOFF ()
            }
            Else
            {
                FON ()
            }
        }
    }

    Method (FON, 0, NotSerialized)
    {
        SBYT (0x14, 0x00)
    }

    Method (FOFF, 0, NotSerialized)
    {
        XOr (0x00, 0x07, Local0)
        SBYT (0x14, Local0)
    }

    Scope (\_TZ)
    {
        Device (FAN)
        {
            Name (_HID, EisaId ("PNP0C0B"))
            Method (_INI, 0, NotSerialized)
            {
                Store (TP1H, CTOS)
                Store (TP1L, CTHY)
            }
        }

        ThermalZone (THRM)
        {
            Name (_AL0, Package (0x01)
            {
                FAN
            })
            Method (_AC0, 0, NotSerialized)
            {
                If (Or (PLCY, PLCY, Local7))
                {
                    Return (TP2H)
                }
                Else
                {
                    Return (TP1H)
                }
            }

            Name (_PSL, Package (0x01)
            {
                \_PR.CPU0
            })
            Name (_TSP, 0x3C)
            Name (_TC1, 0x04)
            Name (_TC2, 0x03)
            Method (_PSV, 0, NotSerialized)
            {
                If (Or (PLCY, PLCY, Local7))
                {
                    Return (TP1H)
                }
                Else
                {
                    Return (TP2H)
                }
            }

            Method (_CRT, 0, NotSerialized)
            {
                Return (TRPC)
            }

            Method (_TMP, 0, NotSerialized)
            {
                And (SENF, 0x01, Local6)
                If (LEqual (Local6, 0x01))
                {
                    Return (RTMP ())
                }
                Else
                {
                    Return (0x0B86)
                }
            }

            Method (_SCP, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Store (One, PLCY)
                }
                Else
                {
                    Store (Zero, PLCY)
                }

                Notify (\_TZ.THRM, 0x81)
            }

            Method (STMP, 2, NotSerialized)
            {
                Store (Arg1, DW00)
                If (Arg0)
                {
                    STHY (DB00, DB01, DW00)
                }
                Else
                {
                    STOS (DB00, DB01, DW00)
                }
            }
        }
    }
}


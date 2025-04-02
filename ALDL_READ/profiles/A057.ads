//--------------------------------------------------------------------------------------
// Created by TunerPro. Hand editing is *not* recommended or supported.
//--------------------------------------------------------------------------------------


//--------------------------------------------------------------------------------------
//--------------------------------- HEADER ------------------------------------
//--------------------------------------------------------------------------------------

{
	fDefFrmtVers             =1.21;
	strDefVersion            =Version 1.01;
	strDefTitle              =A057;
	strAuthor                =Robert Saar;
	strEngine                =2.8/3.1;
	strYear                  =87-90;
	strVINCode               =W/T;
	strCodeMask              =??;
	strComments              =see A057.DS for application specifics. robertisaar@yahoo.com for comments/support.;
	iBaud                    =8192;
	dwFlags                  =0x00000000;
	dwCSID                   =0x00024FEF;
	btNumDumpRequests        =2;

	strCommandName           =Transmit Stream;
	rgbtCommand              =F0, 56, 01;
	iTotalBytesInCommand     =4;
	bChecksumCommand         =1;
	iNumBytesInPayload       =63;
	iNumBytesBeforePayload   =3;
	bMaster                  =1;
	bMonitor                 =1;
	iChainTo                 =-1;

	strCommandName           =Clear Codes (may not work);
	rgbtCommand              =F0, 56, 0A;
	iTotalBytesInCommand     =4;
	bChecksumCommand         =1;
	iNumBytesInPayload       =3;
	iNumBytesBeforePayload   =0;
	bMaster                  =0;
	bMonitor                 =0;
	iChainTo                 =-1;
}

//--------------------------------------------------------------------------------------
//---------------------------------- DASH -------------------------------------
//--------------------------------------------------------------------------------------

{
	dwItemType               =6;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =0;

	btNumGauges              =6;
	strIDsDisplayed          =0,0,0,0,0,0,;
	btNumMonitors            =4;
	strMonsDisplayed         =0,0,0,0,;
}

//--------------------------------------------------------------------------------------
//--------------------------------- VALUES ------------------------------------
//--------------------------------------------------------------------------------------

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =1;

	btByteNumber             =1;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =PROM ID;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =21;

	btByteNumber             =7;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.750000;
	dOffset                  =-40.000000;
	strItemTitle             =Coolant Temp C;
	strUnitLabel             =*C;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =22;

	btByteNumber             =7;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =1.350000;
	dOffset                  =-40.000000;
	strItemTitle             =Coolant Temp F;
	strUnitLabel             =*F;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =23;

	btByteNumber             =8;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.750000;
	dOffset                  =-40.000000;
	strItemTitle             =Startup Coolant Temp C;
	strUnitLabel             =*C;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =24;

	btByteNumber             =8;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =1.350000;
	dOffset                  =-40.000000;
	strItemTitle             =Startup Coolant Temp F;
	strUnitLabel             =*F;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =25;

	btByteNumber             =9;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.019608;
	dOffset                  =0.000000;
	strItemTitle             =TPS Volts;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =26;

	btByteNumber             =10;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.392157;
	dOffset                  =0.000000;
	strItemTitle             =TPS %;
	strUnitLabel             =%;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =27;

	btByteNumber             =11;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =25.000000;
	dOffset                  =0.000000;
	strItemTitle             =Engine Speed;
	strUnitLabel             =RPM;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =28;

	btByteNumber             =12;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =0;
	dFactor                  =3.125000;
	dOffset                  =0.000000;
	strItemTitle             =Cranking RPM;
	strUnitLabel             =RPM;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =29;

	btByteNumber             =14;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =0;
	dFactor                  =0.015260;
	dOffset                  =0.000000;
	strItemTitle             =Time Between Reference Pulses;
	strUnitLabel             =mSec;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =65536;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =30;

	btByteNumber             =16;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =D-Ref Pulses;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =31;

	btByteNumber             =17;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Vehicle Speed;
	strUnitLabel             =MPH;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =32;

	btByteNumber             =19;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =4.440000;
	dOffset                  =0.000000;
	strItemTitle             =O2 Sensor;
	strUnitLabel             =mV;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =33;

	btByteNumber             =20;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Rich/Lean Transitions;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =??;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =34;

	btByteNumber             =21;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Closed Loop Correction;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =35;

	btByteNumber             =22;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =BLM;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =36;

	btByteNumber             =23;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =BLM Cell;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =37;

	btByteNumber             =24;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =INT;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =38;

	btByteNumber             =25;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =IAC Position;
	strUnitLabel             =Steps;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =39;

	btByteNumber             =26;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =IAC Direction;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =40;

	btByteNumber             =27;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =12.500000;
	dOffset                  =0.000000;
	strItemTitle             =Desired Idle Speed;
	strUnitLabel             =RPM;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =41;

	btByteNumber             =28;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.019608;
	dOffset                  =0.000000;
	strItemTitle             =Barometric Volts;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =108;

	btByteNumber             =28;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.369000;
	dOffset                  =10.354000;
	strItemTitle             =Barometric kPa;
	strUnitLabel             =kPa;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =42;

	btByteNumber             =29;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.019608;
	dOffset                  =0.000000;
	strItemTitle             =MAP Volts;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =109;

	btByteNumber             =29;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.369000;
	dOffset                  =10.354000;
	strItemTitle             =MAP kPa;
	strUnitLabel             =kPa;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =45;

	btByteNumber             =30;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =6;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =MAT C;
	strUnitLabel             =*C;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =99;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =46;

	btByteNumber             =30;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =6;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =MAT F;
	strUnitLabel             =*F;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =100;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =43;

	btByteNumber             =31;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.100000;
	dOffset                  =0.000000;
	strItemTitle             =Fuel Pump Voltage;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =48;

	btByteNumber             =32;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.392157;
	dOffset                  =0.000000;
	strItemTitle             =EGR Duty Cycle;
	strUnitLabel             =%;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =56;

	btByteNumber             =33;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.392157;
	dOffset                  =0.000000;
	strItemTitle             =EGR Position Sensor;
	strUnitLabel             =%;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =49;

	btByteNumber             =34;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.100000;
	dOffset                  =0.000000;
	strItemTitle             =Battery Voltage;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =50;

	btByteNumber             =35;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =3;
	dFactor                  =0.015259;
	dOffset                  =0.000000;
	strItemTitle             =Async Pulse Width;
	strUnitLabel             =mSec;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =65536;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =51;

	btByteNumber             =37;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Airflow;
	strUnitLabel             =Grams/Sec;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =relative to TDC. if not displayed correctly, change byte to 39 and item size to 8 bit.;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =44;

	btByteNumber             =38;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =0;
	dFactor                  =0.352941;
	dOffset                  =0.000000;
	strItemTitle             =Spark Advance;
	strUnitLabel             =*;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =52;

	btByteNumber             =42;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =0;
	dFactor                  =0.015259;
	dOffset                  =0.000000;
	strItemTitle             =BPW;
	strUnitLabel             =mSec;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =65536;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =53;

	btByteNumber             =41;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.100000;
	dOffset                  =0.000000;
	strItemTitle             =Target AFR;
	strUnitLabel             =:1;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =71;

	btByteNumber             =44;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.019600;
	dOffset                  =0.000000;
	strItemTitle             =Corrosivity Sensor;
	strUnitLabel             =Volts;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =73;

	btByteNumber             =45;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.392157;
	dOffset                  =0.000000;
	strItemTitle             =CCP Duty Cycle;
	strUnitLabel             =%;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =47;

	btByteNumber             =46;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =0.352941;
	dOffset                  =0.000000;
	strItemTitle             =Knock Retard;
	strUnitLabel             =*;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =54;

	btByteNumber             =47;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =N/V Ratio;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =97;

	btByteNumber             =48;
	btMessageNumber          =1;
	dwItemSizeBits           =16;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Engine Runtime;
	strUnitLabel             =Seconds;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =57;

	btByteNumber             =50;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =3.000000;
	dOffset                  =300.000000;
	strItemTitle             =Estimated Cat Temp C;
	strUnitLabel             =*C;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =58;

	btByteNumber             =50;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =0;
	dFactor                  =5.400000;
	dOffset                  =572.000000;
	strItemTitle             =Estimated Cat Temp F;
	strUnitLabel             =*F;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

{
	dwItemType               =1;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =101;

	btByteNumber             =51;
	btMessageNumber          =1;
	dwItemSizeBits           =8;
	dwOperation              =3;
	dFactor                  =1.000000;
	dOffset                  =0.000000;
	strItemTitle             =Knock Counter;
	strUnitLabel             =;
	dwAlarmHigh              =255;
	bAlarmHighENable         =0;
	dwAlarmLow               =0;
	bAlarmLowEnable          =0;
	iRangeHigh               =255;
	iRangeLow                =0;
	iLookupTableIndex        =-1;
}

//--------------------------------------------------------------------------------------
//---------------------------------- BITS -------------------------------------
//--------------------------------------------------------------------------------------

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =1;
	bVisible                 =1;
	dwUniqueID               =2;

	btByteNumber             =0;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =Malfunction Codes;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =1;
	strBitClearTitle         =0;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =3;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =12 - System Test;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =4;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =13 - O2 Sensor;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =5;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =14 - Coolant High;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =6;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =15 - Coolant Low;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =7;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =21 - TPS High;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =8;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =22 - TPS Low;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =9;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =23 - MAT Circuit Open;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =10;

	btByteNumber             =3;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =24 - VSS;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =11;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =25 - MAT Circuit Shorted;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =12;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =31 - Fuel Injectors;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =91;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =32 - EGR;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =13;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =33 - MAP High;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =14;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =34 - MAP Low;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =90;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =35 - IAC;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =93;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =41 - Cylinder Select;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =15;

	btByteNumber             =4;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =42 - EST Monitor;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =92;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =43 - ESC;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =16;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =44 - O2 Lean;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =17;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =45 - O2 Rich;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =106;

	btByteNumber             =6;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =46 - VATS;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =18;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =51 - PROM;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =94;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =52 - QDM;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =95;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =53 - Battery Voltage Too High;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =19;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =54 - Fuel Pump Voltage;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =20;

	btByteNumber             =5;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =55 - A/D Unit;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =72;

	btByteNumber             =6;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =56 - Corrosivity Sensor;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =96;

	btByteNumber             =6;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =61 - O2 Sensor Degraded;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =107;

	btByteNumber             =6;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =62 - Transmission Gear Switch;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ERROR;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =1;
	bVisible                 =1;
	dwUniqueID               =59;

	btByteNumber             =0;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =Misc;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =1;
	strBitClearTitle         =0;
}

{
	dwItemType               =2;
	strItemComments          =???;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =110;

	btByteNumber             =52;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =Torque Valve;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ON;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =55;

	btByteNumber             =52;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =TCC;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =LOCKED;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =60;

	btByteNumber             =53;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =Low A/C Pressure;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =;
	strBitClearTitle         =YES;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =111;

	btByteNumber             =53;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =2nd Gear;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =112;

	btByteNumber             =53;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =Defrost;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =61;

	btByteNumber             =53;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =Fan 2 Request;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =62;

	btByteNumber             =55;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =Fuel Shutoff Due to Low Oil Pressure;
	bAlarmSetEnable          =1;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =63;

	btByteNumber             =55;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =Idle Conditions Met (for BLM Logic);
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =64;

	btByteNumber             =56;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =Highway Spark;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =65;

	btByteNumber             =56;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =EGR;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ACTIVE;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =66;

	btByteNumber             =56;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =A/C Disengaged due to High RPM;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =67;

	btByteNumber             =56;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =VATS;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =1;
	strBitSetTitle           =OK;
	strBitClearTitle         =FAILED;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =68;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =PRP4 Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =69;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =PW5(AIR Switch) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =70;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =PW4(A/C) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =113;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =SCI 04(TCC/Shift Light) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =114;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =PW7(Fan 1) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =115;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =PW2(CCP) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =116;

	btByteNumber             =57;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =PW3(EGR) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =74;

	btByteNumber             =58;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =Shift Light;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ON;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =75;

	btByteNumber             =58;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =SES Delay;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =76;

	btByteNumber             =58;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =Launch Mode;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =117;

	btByteNumber             =58;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =AIR Switched to Port;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =118;

	btByteNumber             =58;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =CCP;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =ACTIVE;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =77;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =P/N Switch;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =D;
	strBitClearTitle         =P/N;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =78;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =3rd Gear Switch;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =79;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =4th Gear Switch;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =80;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =Power Steering Cramp;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =81;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =Fan Request;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =82;

	btByteNumber             =59;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =A/C Request;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =83;

	btByteNumber             =60;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =O2 Sensor Status;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =1;
	strBitSetTitle           =READY;
	strBitClearTitle         =NOT READY;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =119;

	btByteNumber             =60;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =Minimum IAC Position Learned;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =84;

	btByteNumber             =60;
	btMessageNumber          =1;
	btBitNumber              =5;
	strItemTitle             =Speed Sensor;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =OPTICAL;
	strBitClearTitle         =MAGNETIC;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =120;

	btByteNumber             =61;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =SCI 02(Bit 1) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =121;

	btByteNumber             =61;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =OPORT1(Low Coolant Light) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =122;

	btByteNumber             =61;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =DO1(Fan 2) Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =123;

	btByteNumber             =61;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =PWM6 Forced High;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =85;

	btByteNumber             =62;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =DFCO;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =86;

	btByteNumber             =62;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =NVRAM;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =BOMBED;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =87;

	btByteNumber             =62;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =Closed Throttle;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =88;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =0;
	strItemTitle             =Arsen Divert;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =89;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =1;
	strItemTitle             =BLM Enable;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =0;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =98;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =2;
	strItemTitle             =Slow O2;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =102;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =3;
	strItemTitle             =Double Fire/Single Fire;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =DOUBLE;
	strBitClearTitle         =SINGLE;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =103;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =4;
	strItemTitle             =Quasi-Async Pulse;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =YES;
	strBitClearTitle         =;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =104;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =6;
	strItemTitle             =Rich/Lean;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =0;
	strBitSetTitle           =RICH;
	strBitClearTitle         =LEAN;
}

{
	dwItemType               =2;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =105;

	btByteNumber             =63;
	btMessageNumber          =1;
	btBitNumber              =7;
	strItemTitle             =Loop Status;
	bAlarmSetEnable          =0;
	bAlarmNotSetEnable       =1;
	strBitSetTitle           =CLOSED;
	strBitClearTitle         =OPEN;
}

//--------------------------------------------------------------------------------------
//---------------------------- LOOKUP TABLES ----------------------------------
//--------------------------------------------------------------------------------------

{
	dwItemType               =5;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =99;

	btDataType               =2;
	wTableSize               =256;
	wIndexSize               =4;
	strTableName             =MAT C;
	dwReserved               =0;
	dwReserved               =0;
	pbtData                  =0, -40.00
				 4, -30.00
				 5, -25.00
				 8, -20.00
				 10, -15.00
				 14, -10.00
				 18, -5.00
				 24, 0.00
				 30, 5.00
				 37, 10.00
				 46, 15.00
				 56, 20.00
				 66, 25.00
				 78, 30.00
				 90, 35.00
				 103, 40.00
				 116, 45.00
				 129, 50.00
				 141, 55.00
				 153, 60.00
				 163, 65.00
				 174, 70.00
				 183, 75.00
				 191, 80.00
				 199, 85.00
				 205, 90.00
				 211, 95.00
				 216, 100.00
				 221, 105.00
				 225, 110.00
				 229, 115.00
				 232, 120.00
				 234, 125.00
				 237, 130.00
				 239, 135.00
				 241, 140.00
				 242, 145.00
				 243, 150.00
				 255, 200.00;
}

{
	dwItemType               =5;
	strItemComments          =<Comments>;
	bSeparator               =0;
	bVisible                 =1;
	dwUniqueID               =100;

	btDataType               =2;
	wTableSize               =256;
	wIndexSize               =4;
	strTableName             =MAT F;
	dwReserved               =0;
	dwReserved               =0;
	pbtData                  =0, -40.00
				 4, -22.00
				 5, -13.00
				 8, -4.00
				 10, 5.00
				 14, 14.00
				 18, 23.00
				 24, 32.00
				 30, 41.00
				 37, 50.00
				 46, 59.00
				 56, 68.00
				 66, 77.00
				 78, 86.00
				 90, 95.00
				 103, 104.00
				 116, 113.00
				 129, 122.00
				 141, 131.00
				 153, 140.00
				 163, 149.00
				 174, 158.00
				 183, 167.00
				 191, 176.00
				 199, 185.00
				 205, 194.00
				 211, 203.00
				 216, 212.00
				 221, 221.00
				 225, 230.00
				 229, 239.00
				 232, 248.00
				 234, 257.00
				 237, 266.00
				 239, 275.00
				 241, 284.00
				 242, 293.00
				 243, 302.00
				 255, 392.00;
}


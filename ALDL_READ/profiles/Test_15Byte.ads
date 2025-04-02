[Definition]
Title           = ALDL Test Profile
Type            = 0
Mode            = 1
Baud            = 8192
StreamControlByteEnabled = 0
HeaderBytes     = 1
CommandBytes    = 3
ResponseBytes   = 15
ResponseTimeout = 20
InterpacketDelay = 0

{ 
  dwItemType             = 1;
  strItemTitle           = Coolant Temp;
  btByteNumber           = 4;
  dwItemSizeBits         = 8;
  dFactor                = 1.0;
  dOffset                = 0.0;
  strUnitLabel           = °C;
}

{ 
  dwItemType             = 1;
  strItemTitle           = RPM;
  btByteNumber           = 5;
  dwItemSizeBits         = 8;
  dFactor                = 25.0;
  dOffset                = 0.0;
  strUnitLabel           = RPM;
}

{ 
  dwItemType             = 1;
  strItemTitle           = Battery Voltage;
  btByteNumber           = 6;
  dwItemSizeBits         = 8;
  dFactor                = 0.1;
  dOffset                = 0.0;
  strUnitLabel           = V;
}

enum DeviceType{
  mobile,
  tablet,
  desktop
}
class ScreenUtis{
  static const double mobileMaxSize=640;
  static const double tabletMaxsize=1008;
  static const double desktopMinsize=1008;

  static DeviceType getDeviceType(double width){
    if(width<ScreenUtis.mobileMaxSize){
      return DeviceType.mobile;
    }else if(width>=ScreenUtis.mobileMaxSize && width<ScreenUtis.tabletMaxsize){
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}
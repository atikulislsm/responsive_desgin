import 'package:flutter/material.dart';
import 'package:untitled/uits/screen_utis.dart';
class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({super.key, required this.mobile, required this.desktop, required this.tablet});

  final Widget mobile;
  final Widget desktop;
  final Widget tablet;


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    final DeviceType deviceType=ScreenUtis.getDeviceType(size.width);
    if(deviceType ==DeviceType.mobile ){
      return mobile;
    }else if(deviceType ==DeviceType.tablet ){
      return tablet ?? mobile;
    }
    return desktop;
  }
}

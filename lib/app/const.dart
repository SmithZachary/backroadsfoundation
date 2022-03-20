import 'dart:io';

import 'package:flutter/foundation.dart';

String aboutUs = '''
We are team of prior military from the US, UK and Czech Republic. 
                          
We’ve become a trusted and reliable source for the Ukrainian community and non-profits. I have two separate supply trains going to Kviv today and on Monday that have Ukrainians leading the way with our personnel.

In addition I’ve got word today that I have 50 tons of medical supplies arriving that need to get to hospitals.

Many non-profit agencies are coming to us for help to get their supplies to the right locations.''';

class Device {
  static bool get isDesktop => !isWeb && (isWindows || isLinux || isMacOS);
  static bool get isMobile => isAndroid || isIOS;
  static bool get isWeb => kIsWeb;

  static bool get isWindows => Platform.isWindows;
  static bool get isLinux => Platform.isLinux;
  static bool get isMacOS => Platform.isMacOS;
  static bool get isAndroid => Platform.isAndroid;
  static bool get isFuchsia => Platform.isFuchsia;
  static bool get isIOS => Platform.isIOS;
}

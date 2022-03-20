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

String whatWeAreDoing =
    '''I arrived in Poland couple weeks ago to help with the Ukrainian refugees. Through networking with other charities in the area, we have began to establish a collaborative effort to focus on getting supplies to the smaller towns in Ukraine that are not receiving support.

We’ve been in contact with the Red Cross and other large charity organizations, they are doing GREAT helping the larger cities in Ukraine, operating at large quantity scenarios through official channels which takes all their supplies (medical and other donations) into the major cities. 

This is great for about 85% of the people still in the Ukraine. As Ukraine is cut off from routine supply chains.The other 15% are really left without support unless small organizations like us step in and help out. 

They are stuck in a unusual circumstance where they have a large influx of people from the large cities being targeted by Russia running away,  but haven’t made it across the border to where supplies and resources are waiting. 

These small towns/villages are left to fend for themselves as they are too far away from the conflict but still within Ukraine to not get any support of any kind. 

We’ve been acting as a crucial connection between charity groups that have supplies and being the delivery arm that is able and willing to travel into Ukraine and deliver these supplies throughout Ukraine.

We’ve been obtaining essential lists of needs from various clinics, hospitals and communities in Ukraine and going to the charity groups, and stores in Poland and Romania to obtain the supplies and convoy them to the groups. Items include medications/medical supplies, generators for the clinics as there isn’t anymore power, medical aid, food and hygiene products. 

International donations are on their way, but won’t be able to be accessed by smaller groups for a while if at all. The only supplies we are able to bring into small town Ukraine are those purchased or donated locally. We are currently filling as many vehicles as possible with essential items and are heading onto the backroads of Ukraine very soon to deliver needed items to local contacts including doctors, pastors, teachers, and parents who have asked for our help.''';

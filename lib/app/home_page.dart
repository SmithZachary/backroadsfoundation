import 'package:backroads_foundation/app/web/desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mobile/mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.isPhone ? const Mobile() : const Desktop();
  }
}

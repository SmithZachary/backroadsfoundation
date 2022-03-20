import 'package:backroads_foundation/app/const.dart';
import 'package:flutter/material.dart';

import '../components/_componenets.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backroads Foundation'),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Text(
                'Help support the people of Ukraine.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              'assets/ukraine.png',
              height: 120,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '>>>Update 20 March 2022<<<',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.7,
              child: Text(
                aboutUs,
                style: const TextStyle(),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22.0, bottom: 22.0),
              child: Text(
                'Scan or Click QR Code To Donate',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Venmo Pressed');
              },
              child: Image.asset(
                'assets/qr.png',
                height: 200,
              ),
            ),
            const Text(
              'Venmo: @backroadsfoundation',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

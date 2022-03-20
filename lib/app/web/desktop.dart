import 'package:backroads_foundation/app/web/screens/_screens.dart';
import '../const.dart';
import 'package:flutter/material.dart';

import 'components/_components.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MenuWebButton(
                  route: UpdatesScreen(),
                  label: 'Updates',
                ),
                MenuWebButton(
                  route: UpdatesScreen(),
                  label: 'Donate',
                ),
                Text(
                  'Backroads Foundation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MenuWebButton(
                  route: UpdatesScreen(),
                  label: 'About Us',
                ),
                MenuWebButton(
                  route: UpdatesScreen(),
                  label: 'Contact',
                ),
              ],
            ),
          )),
      body: Center(
        child: ListView(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 22.0),
                child: Text(
                  'Help support the people of Ukraine.',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'assets/ukraine.png',
                scale: 12,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('>>>Update 20 March 2022<<<'),
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
                  'Scan QR Code To Donate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Venmo Pressed');
                },
                child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 10,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 7), // changes position of shadow
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: Image.asset(
                      'assets/qr.png',
                    )),
              ),
              const Text('Venmo: @backroadsfoundation')
            ],
          ),
        ]),
      ),
    );
  }
}

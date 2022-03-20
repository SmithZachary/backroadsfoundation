import 'package:backroads_foundation/app/const.dart';
import 'package:flutter/material.dart';

import '../components/_componenets.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/backroad.jpeg',
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Backroads Foundation',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        // drawer: const MainDrawer(),
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Text(
                    'Help support the people of Ukraine.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                const PictureRow(
                  picturwRowHeight: 300,
                ),
                const TextContainer(
                  title: 'Who We Are',
                  body:
                      '''We are team of prior military from the US, UK and Czech Republic. 
                              
We’ve become a trusted and reliable source for the Ukrainian community and non-profits.
 ''',
                ),
                TextContainer(
                  title: 'What We Are Doing',
                  body: whatWeAreDoing,
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
                  child: SizedBox(
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
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        child: Image.asset(
                          'assets/qr.png',
                        )),
                  ),
                ),
                const Text('Venmo: @backroadsfoundation')
              ],
            ),
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Backroads Foundation ©2022'),
            ],
          ),
        ),
      ),
    );
  }
}

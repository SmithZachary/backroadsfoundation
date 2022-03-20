import '../colors.dart';
import '../components/common.dart';
import '../const.dart';
import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({
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
        appBar:
            AppBar(backgroundColor: Colors.white, title: const AppBarTitle()),
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
                const PictureRow(
                  picturwRowHeight: 500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: TextContainer(
                        title: 'Who We Are',
                        body:
                            '''We are team of prior military from the US, UK and Czech Republic. 
                            
We’ve become a trusted and reliable source for the Ukrainian community and non-profits.

 I have two separate supply trains going to Kviv that have Ukrainians leading the way with our personnel. ''',
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextContainer(
                        title: 'What We Are Doing',
                        body: whatWeAreDoing,
                      ),
                    ),
                  ],
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

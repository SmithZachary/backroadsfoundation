import 'package:backroads_foundation/app/colors.dart';
import 'package:flutter/material.dart';

import '../web/components/menu_button.dart';
import '../web/screens/updates.dart';

class PictureRow extends StatelessWidget {
  const PictureRow({Key? key, required this.picturwRowHeight})
      : super(key: key);
  final double picturwRowHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
        color: AppColors.primaryBrown,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.8),
            spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
      ),
      height: picturwRowHeight,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            PictureRowImage(
              assetLocation: 'assets/1.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/2.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/3.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/4.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/5.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/6.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/7.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/8.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/9.png',
            ),
            PictureRowImage(
              assetLocation: 'assets/10.png',
            ),
          ],
        ),
      ),
    );
  }
}

class PictureRowImage extends StatelessWidget {
  const PictureRowImage({
    Key? key,
    required this.assetLocation,
    this.assetHeight,
    this.assetWidth,
  }) : super(key: key);
  final String assetLocation;
  final double? assetHeight;
  final double? assetWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
        child: Image.asset(
          assetLocation,
          height: assetHeight,
          width: assetWidth,
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          // MenuWebButton(
          //   route: UpdatesScreen(),
          //   label: 'Updates',
          // ),
          // MenuWebButton(
          //   route: UpdatesScreen(),
          //   label: 'Donate',
          // ),
          Text(
            'Backroads Foundation',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          // MenuWebButton(
          //   route: UpdatesScreen(),
          //   label: 'About Us',
          // ),
          // MenuWebButton(
          //   route: UpdatesScreen(),
          //   label: 'Contact',
          // ),
        ],
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key? key,
    required this.title,
    required this.body,
    this.body2,
  }) : super(key: key);
  final String title;
  final String body;
  final Widget? body2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: AppColors.primaryTan,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                body,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

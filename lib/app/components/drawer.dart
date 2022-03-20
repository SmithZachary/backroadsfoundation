import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const SizedBox(
          height: 70,
          child: DrawerHeader(
            child: Text(
              'Backroads Foundation',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            margin: EdgeInsets.all(0),
          ),
        ),
        ListTile(
          title: const Text('Updates'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Donate'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('About Us'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Contact'),
          onTap: () {},
        )
      ],
    ));
  }
}

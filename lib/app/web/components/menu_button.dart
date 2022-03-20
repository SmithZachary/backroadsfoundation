import 'package:flutter/material.dart';

class MenuWebButton extends StatelessWidget {
  const MenuWebButton({Key? key, required this.label, required this.route})
      : super(key: key);
  final String label;
  final Widget route;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Text(
        label,
      ),
      style: const ButtonStyle(),
    );
  }
}

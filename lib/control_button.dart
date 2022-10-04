import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
 final VoidCallback onPressed;
 final Icon icon;
 const ControlButton({Key? key , required this.onPressed,required this.icon}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Container(
        width: 50.0,
        height: 50.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            elevation: 0,
            onPressed: this.onPressed,
            child: this.icon,
          ),
        ),
      ),
    );
  }
}

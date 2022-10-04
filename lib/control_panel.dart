import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_game/control_button.dart';

import 'direction.dart';

class ControlPanel extends StatelessWidget {
  final void Function(Direction direction) onTapped;

  const ControlPanel({Key? key, required this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width / 2 - 80,
        right: 0.0,
        bottom: 50.0,
        child: Row(
          children: [
            ControlButton(
                onPressed: () {
                  onTapped(Direction.left);
                },
                icon: Icon(Icons.arrow_left)),
            Column(
              children: [
                ControlButton(
                    onPressed: () {
                      onTapped(Direction.down);
                    },
                    icon: Icon(Icons.arrow_drop_up)),
                SizedBox(
                  height: 50,
                ),
                ControlButton(
                    onPressed: () {
                      onTapped(Direction.up);
                    },
                    icon: Icon(Icons.arrow_drop_down))
              ],
            ),
            ControlButton(
                onPressed: () {
                  onTapped(Direction.right);
                },
                icon: Icon(Icons.arrow_right)),
          ],
        ));
  }
}

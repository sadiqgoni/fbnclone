import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNotificationBar extends StatelessWidget {
  final double top;final double bottom;final double right;final double left;
  const CustomNotificationBar({
    super.key, required this.top, required this.bottom, required this.right, required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            color: Colors.white,
            size: 28,
          ),
        ),
        Positioned(
          top: top,
          bottom: bottom,
          right: right,
          left: left,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              color: Colors.red,
            ),
            child: const Center(
              child: Text(
                '10',
                style: TextStyle(fontSize: 10,),
              ),
            ),
          ),
        )
      ],
    );
  }
}

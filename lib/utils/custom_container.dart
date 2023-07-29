import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomContainer({
    super.key, required this.title, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0.7,
                )
              ]),
          child:  Icon( icon,
            color: Colors.orangeAccent,
            size: 30,),
        ),
        const SizedBox(height: 8),
         Text(title,style: TextStyle(fontSize: 16),)
      ],
    );
  }
}

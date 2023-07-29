import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onSearchTap;

  MyAppBar({
    Key? key,
    required this.onSearchTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 30.h,
            width: 100.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/bg.png',),fit: BoxFit.fill
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 52,
                  ),
                ),
              ),
              GestureDetector(
                onTap: onSearchTap,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.search,
                    size: 36,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
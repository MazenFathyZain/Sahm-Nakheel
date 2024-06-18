import 'package:flutter/material.dart';

class PersonAvatar extends StatelessWidget {
  const PersonAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 150.0,
          height: 130.0,
          child: Container(
            width: 130.0,
            height: 130.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
              ),
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.76),
            ),
            child: Image.asset('assets/images/profile.png'),
          ),
        ),
        Positioned(
          top: 110.0,
          left: 130.0,
          child: Image.asset(
            'assets/images/edit.png',
            scale: 0.8,
          ),
        ),
      ],
    );
  }
}

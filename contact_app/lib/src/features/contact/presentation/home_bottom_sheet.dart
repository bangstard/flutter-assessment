import 'package:flutter/material.dart';

class homeBottomSheet extends StatelessWidget {
  const homeBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        margin: const EdgeInsets.only(top: 6.0), //Same as `blurRadius` i guess
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0, 0.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}

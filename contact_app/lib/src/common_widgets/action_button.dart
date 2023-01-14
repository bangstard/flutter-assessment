import 'package:flutter/material.dart';

import 'package:contact_app/src/common_widgets/custom_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.title,
    required this.color,
    required this.action,
  }) : super(key: key);
  final String title;
  final Color color;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomButton(
          height: double.infinity,
          borderRadius: 0,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          isShadow: false,
          color: Colors.white,
          onTap: () {
            // todo trigger delete to api
            action();
          },
          child: Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: color),
          ))),
    );
  }
}

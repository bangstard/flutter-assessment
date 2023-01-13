import 'package:flutter/material.dart';

import 'package:contact_app/src/common_widgets/empty_placeholder_widget.dart';

/// Simple not found screen used for 404 errors
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const EmptyPlaceholderWidget(
        message: '404 - Page not found!',
      ),
    );
  }
}

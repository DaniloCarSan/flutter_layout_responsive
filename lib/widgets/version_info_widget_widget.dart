import 'package:flutter/material.dart';

class VersionInfoWidgetWidget extends StatelessWidget {
  const VersionInfoWidgetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: const [
          Text(
            'Version',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'v1.0.0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }
}

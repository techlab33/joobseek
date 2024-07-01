import 'package:flutter/material.dart';
import 'package:jobseek/utils/color_res.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        SizedBox(
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              'Choose a language',
              style: TextStyle(
                  color: ColorRes.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    ));
  }
}

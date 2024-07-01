import 'package:flutter/material.dart';
import 'package:jobseek/utils/app_style.dart';
import 'package:jobseek/utils/asset_res.dart';

class VideoReceiveScreen extends StatelessWidget {
  const VideoReceiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetRes.videoReceiveScreen),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 620,
          left: 145,
          child: Text(
            '04:37 mines',
            style: appTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Positioned(
          top: 650,
          left: 120,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: const Color(0xff950D00).withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage(
                    AssetRes.callReject,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: const Color(0xff4000BB).withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Image(
                  image: AssetImage(AssetRes.callReceive),
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseek/utils/app_style.dart';
import 'package:jobseek/utils/asset_res.dart';
import 'package:jobseek/utils/color_res.dart';
import 'package:jobseek/utils/string.dart';

class CallReceiveScreen extends StatelessWidget {
  const CallReceiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: Get.height - 500,
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: const DecorationImage(
                    image: AssetImage(
                      AssetRes.chatBoxMenImage,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            Strings.airBNB,
            style: appTextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: ColorRes.black),
          ),
          const SizedBox(height: 8),
          Text(
            '04:37 mins',
            style: appTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorRes.black.withOpacity(0.8)),
          ),
          const SizedBox(height: 200),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: ColorRes.deleteColor,
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
                color: ColorRes.logoColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(
                  image: AssetImage(AssetRes.callReceive),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

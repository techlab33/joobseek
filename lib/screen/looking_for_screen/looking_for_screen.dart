import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseek/screen/looking_for_screen/looking_for_widget/looking_for_widget.dart';
import 'package:jobseek/screen/looking_for_screen/looking_for_you_screen_controller.dart';
import 'package:jobseek/utils/app_style.dart';
import 'package:jobseek/utils/asset_res.dart';
import 'package:jobseek/utils/color_res.dart';
import 'package:jobseek/utils/string.dart';

class LookingForScreen extends StatelessWidget {
  const LookingForScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LookingForYouScreenController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF8F8F8),
      body: Column(
        children: [
          Container(
            height: Get.height * 0.6,
            width: Get.width,
            padding: EdgeInsets.only(
              left: Get.width * 0.088,
              right: Get.width * 0.144,
              top: Get.height * 0.130,
            ),
            child: Image.asset(AssetRes.lookingForYou),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              height: Get.height * 0.4,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  SizedBox(
                      height: Get.height * 0.045,
                      width: Get.height * 0.045,
                      child: Image.asset(
                        AssetRes.userIcon,
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    Strings.whatAreYouLookingFor,
                    style: appTextStyle(color: ColorRes.black, fontSize: 14),
                  ),
                  SizedBox(
                    height: Get.height * 0.035,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Get.width * 0.048),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => controller.onChangeWantJobChoice(),
                          child: Obx(
                            () => lookingForYouBox(AssetRes.wantJob,
                                "I want job", controller.isJob.value),
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.onChangeEmployeeChoice(),
                          child: Obx(
                            () => lookingForYouBox(
                                AssetRes.person,
                                "I want an employee",
                                controller.isEmployee.value),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

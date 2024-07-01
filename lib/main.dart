import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jobseek/screen/dashboard/applications/applications_screen.dart';
import 'package:jobseek/screen/first_page/first_screen.dart';
import 'package:jobseek/screen/job_detail_screen/job_detail_screen.dart';
import 'package:jobseek/screen/job_detail_screen/job_detail_upload_cv_screen/upload_cv_screen.dart';
import 'package:jobseek/screen/job_detail_screen/job_details_success_or_fails/job_details_success_or_faild_screen.dart';
import 'package:jobseek/screen/job_recommendation_screen/job_recommendation_screen.dart';
import 'package:jobseek/screen/manager_section/Notification/notification_services.dart';
import 'package:jobseek/screen/manager_section/applicants_detail_screen/applicants_detail_screen.dart';
import 'package:jobseek/screen/manager_section/auth_manager/first_page/first_screen.dart';
import 'package:jobseek/screen/manager_section/dashboard/manager_dashboard_screen.dart';
import 'package:jobseek/screen/manager_section/manager_application_detail_screen/manager_application_detail_screen.dart';
import 'package:jobseek/screen/manager_section/notification1/notification1_screen.dart';
import 'package:jobseek/screen/manager_section/resume_screen/resume_screen.dart';
import 'package:jobseek/screen/new_home_page/new_home_page_screen.dart';
import 'package:jobseek/screen/notification_screen/notification_screen.dart';
import 'package:jobseek/screen/organization_profile_screen/organization_profile_screen.dart';
import 'package:jobseek/screen/see_details/see_details_screen.dart';
import 'package:jobseek/screen/splashScreen/splash_screen.dart';
import 'package:jobseek/screen/update_vacancies_requirements/update_vacancies_requirements_screen.dart';
import 'package:jobseek/service/pref_services.dart';
import 'package:jobseek/utils/app_res.dart';
import 'package:jobseek/utils/pref_keys.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  NotificationService.init();
  await PrefService.init();
  String? value = await FirebaseMessaging.instance.getToken();
  await PrefService.setValue(PrefKeys.deviceToken, value);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "jobSeek",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      //const SplashScreen(),

      initialRoute: "/",
      getPages: [
        GetPage(
            name: AppRes.notificationScreen,
            page: () => const NotificationScreenU()),
        // GetPage(name: AppRes.jobDetailScreen, page: () => JobDetailScreen()),
        GetPage(
            name: AppRes.newHomePageUi,
            page: () => HomePageNewScreenU()),
        GetPage(
            name: AppRes.jobDetailUploadCvScreen,
            page: () => JobDetailsUploadCvScreen()),
        GetPage(
            name: AppRes.jobDetailSuccessOrFailed,
            page: () => JobDetailsSuccessOrFailedScreen()),
        GetPage(
            name: AppRes.notificationScreen, page: () => NotificationScreenM()),
        //GetPage(name: AppRes.jobDetailScreen, page: () => JobDetailScreen()),
        GetPage(name: AppRes.jobDetailScreen, page: () => JobDetailScreen()),
        GetPage(
            name: AppRes.jobRecommendationScreen,
            page: () => const JobRecommendation()),
        GetPage(
            name: AppRes.organizationProfileScreen,
            page: () => const OrganizationProfileScreen()),
        GetPage(
            name: AppRes.applicationsUser,
            page: () => ApplicationsScreen()),
        GetPage(
            name: AppRes.managerDashboardScreen,
            page: () => ManagerDashBoardScreen()),
        GetPage(
            name: AppRes.managerApplicationDetailScreen,
            page: () => ManagerApplicationDetailScreen()),
        GetPage(
            name: AppRes.resumeScreen,
            page: () => const ResumeScreen()),
        GetPage(
            name: AppRes.applicantsDetails,
            page: () => ApplicantsDetailScreen(isWrong: false)),
        GetPage(
            name: AppRes.firstPageScreenM,
            page: () => const FirstPageScreenM()),
        GetPage(
            name: AppRes.seeDetailsScreen,
            page: () => const SeeDetailsScreen()),
        GetPage(
            name: AppRes.updateVacanciesRequirementScreen,
            page: () => const UpdateVacanciesRequirementsScreen()),
        GetPage(name: AppRes.firstScreen, page: () => FirstScreen()),
      ],
    );
  }
}

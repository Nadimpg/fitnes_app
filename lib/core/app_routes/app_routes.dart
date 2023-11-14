import 'package:fitness/view/screens/activity/activity_screen.dart';
import 'package:fitness/view/screens/auth/changepassword/change_password_screen.dart';
import 'package:fitness/view/screens/auth/forget_password/forget_password_screen.dart';
import 'package:fitness/view/screens/auth/login/login_screen.dart';
import 'package:fitness/view/screens/auth/otp/otp_screen.dart';
import 'package:fitness/view/screens/auth/reser_password/reset_password_screen.dart';
import 'package:fitness/view/screens/auth/signup/sign_up_screen.dart';
import 'package:fitness/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:fitness/view/screens/edit_card/edit_card_screen.dart';
import 'package:fitness/view/screens/home/home_screen.dart';
import 'package:fitness/view/screens/payment/payment_screen.dart';
import 'package:fitness/view/screens/profile/daily_meal_plan/daily_meal_plan_screen.dart';
import 'package:fitness/view/screens/profile/daily_report/daily_report_screen.dart';
import 'package:fitness/view/screens/profile/daily_workout/daily_workout_screen.dart';
import 'package:fitness/view/screens/profile/edit_profile/edit_profile_screen.dart';
import 'package:fitness/view/screens/profile/history/history_screen.dart';
import 'package:fitness/view/screens/profile/notification/notification_screen.dart';
import 'package:fitness/view/screens/profile/profile/profile_screen.dart';
import 'package:fitness/view/screens/single_workout/single_workout_screen.dart';
import 'package:fitness/view/screens/splash/splash_screen.dart';
import 'package:fitness/view/screens/Appointment/appointment_screen.dart';
import 'package:fitness/view/screens/audio_call/audio_call.dart';
import 'package:fitness/view/screens/chat/chat_screen.dart';
import 'package:fitness/view/screens/incoming_call/incoming_call.dart';
import 'package:fitness/view/screens/language/language_screen.dart';
import 'package:fitness/view/screens/payment_completed/payment_completed_screen.dart';
import 'package:fitness/view/screens/privacy_policy/privacy_policy_screen.dart';
import 'package:fitness/view/screens/rate_us/rate_us_screen.dart';
import 'package:fitness/view/screens/reminder/reminder_screen.dart';
import 'package:fitness/view/screens/reviews/reviews_screen.dart';
import 'package:fitness/view/screens/setting/setting_screen.dart';
import 'package:fitness/view/screens/terms_of_services/terms_of_services_screen.dart';
import 'package:get/get.dart';
import '../../view/screens/sliderpage/birth_date/birth_date_screen.dart';
import '../../view/screens/sliderpage/slider/slider_screen.dart';
import 'package:fitness/view/screens/biceps_curls/biceps_curls_screen.dart';
import 'package:fitness/view/screens/daily_workout/workout_daily_plan_screen.dart';
import 'package:fitness/view/screens/search/inner_widgets/trainer_filter.dart';
import 'package:fitness/view/screens/search/search_screen.dart';
import 'package:fitness/view/screens/trainer/trainer-screen.dart';
import 'package:fitness/view/screens/trainer_details/trainer_details_screen.dart';
import 'package:fitness/view/screens/workout_level/workout_level_screen.dart';

class AppRoutes{
 static const String splashScreen = "/splash_screen";
 static const String birthDateScreen = "/birth_date_screen";
 static const String sliderScreen = "/slider_screen";
 static const String loginScreen = "/login_screen";
 static const String signUpScreen = "/sign_up_screen";
 static const String profileScreen = "/profile_screen";
 static const String editProfileScreen = "/edit_profile_screen";
 static const String dailyMealPlanScreen = "/daily_meal_plan_screen";
 static const String dailyReportScreen = "/daily_report_screen";
 static const String dailyWorkoutScreen = "/daily_workout_screen";
 static const String notificationScreen = "/notification_screen";
 static const String historyScreen = "/history_screen";
 static const String paymentScreen = "/payment_screen";
 static const String editCardScreen = "/edit_card_screen";
 static const String activityScreen = "/activity_screen";
 static const String homeScreen = "/home_screen";
 // static const String s = "/splash_screen";
 static const String workoutDailyPlanScren = "/workout_dailyPlan_screen";
 static const String workoutLevelScreen = "/workout_level_screen";
 static const String trainerScreen = "/trainer_screen";
 static const String forgetPassScreen = "/forget_pass_screen";
 static const String otpScreen = "/otp_screen";
 static const String resetPassScreen = "/reset_pass_screen";
 static const String searchScreen= "/search_screen";
 static const String trainerFilter= "/trainer_filter";
 static const String singleWorkoutScreen= "/single_workout_screen";
 static const String biceps_screen= "/biceps_screen";
 static const String trainerDetailsScreen= "/details_screen";
 static const String settingScreen = "/SettingScreen";
 static const String changePasswordScreen = "/change_password_screen";
 static const String termsOfServicesScreen = "/terms_of_services_screen";
 static const String privacyPolicyScreen = "/privacy_policy_screen";
 static const String reminderScreen = "/reminder_screen";
 static const String rateUsScreen = "/rate_us_screen";
 static const String languageScreen = "/language_screen";
 static const String chat = "/chat";
 static const String incomingCall = "/incoming_call";
 static const String audioCall = "/audio_call";
 static const String reviewsScreen = "/reviews_screen";
 static const String paymentCompletedScreen = "/payment_completed_screen";
 static const String appointmentScreen = "/appointment_screen";
 static const String bottomNavBar = "/bottom_nav";


 static List<GetPage> routes = [
    GetPage(name: splashScreen, page: ()=>const SplashScreen()),
    GetPage(name: birthDateScreen, page: ()=>const BirthDateScreen()),
    GetPage(name: sliderScreen, page: ()=>const SliderScreen()),
    GetPage(name: loginScreen, page: ()=>const LogInScreen()),
    GetPage(name: signUpScreen, page: ()=>const SignUpScreen()),
    GetPage(name: profileScreen, page: ()=>const ProfileScreen()),
    GetPage(name: dailyMealPlanScreen, page: ()=>const DailyMealplanScreen()),
    GetPage(name: editProfileScreen, page: ()=>const EditProfileScreen()),
    GetPage(name: dailyReportScreen, page: ()=>const DailyReportScreen()),
    GetPage(name: dailyWorkoutScreen, page: ()=>const DailyWorkoutScreen()),
    GetPage(name: notificationScreen, page: ()=>const NotificationScreen()),
    GetPage(name: historyScreen, page: ()=>const HistoryScreen()),
    GetPage(name: paymentScreen, page: ()=>const PaymentScreen()),
    GetPage(name: editCardScreen, page: ()=>const EditCardScreen()),
    GetPage(name: activityScreen, page: ()=>const ActivityScreen()),
     GetPage(name: homeScreen, page: ()=>const HomeScreen()),
    GetPage(name: workoutDailyPlanScren, page: ()=>const WorkoutDailyPlanScren()),
    GetPage(name: workoutLevelScreen, page: ()=>const WorkoutLevelScreen()),
    GetPage(name: trainerScreen, page: ()=>const TrainerScreen()),
    GetPage(name: forgetPassScreen, page: ()=> ForgetPasswordScreen()),
    GetPage(name: resetPassScreen, page: ()=>const ResetPasswordScreen()),
    GetPage(name: otpScreen, page: ()=>const OtpScreen()),
    GetPage(name: searchScreen, page: ()=>const SearchScreen()),
    GetPage(name: trainerFilter, page: ()=>const TrainerFilter()),
    GetPage(name: singleWorkoutScreen, page: ()=>const SingleWorkoutScreen()),
    GetPage(name: biceps_screen, page: ()=>const BicepsCurlsScreen()),
    GetPage(name: trainerDetailsScreen, page: ()=>const TrainerDetailsScreen()),
    GetPage(name: changePasswordScreen, page: ()=> ChangePasswordScreen()),
    GetPage(name: settingScreen, page: ()=>const SettingScreen()),
    GetPage(name: termsOfServicesScreen, page: ()=> const TermsOfServicesScreen()),
    GetPage(name: privacyPolicyScreen, page: ()=> const PrivacyPolicyScreen()),
    GetPage(name: reminderScreen, page: ()=> const ReminderScreen()),
      GetPage(name: rateUsScreen, page: ()=> const RateUsScreen()),
      GetPage(name: languageScreen, page: ()=> const LanguageScreen()),
      GetPage(name: chat, page: ()=> const ChatScreen()),
      GetPage(name: incomingCall, page: ()=> const IncomingCall()),
      GetPage(name: audioCall, page: ()=> const AudioCall()),
      GetPage(name: reviewsScreen, page: ()=> const ReviewsScreen()),
      GetPage(name: paymentCompletedScreen, page: ()=> const PaymentCompletedScreen()),
      GetPage(name: appointmentScreen, page: ()=> const AppointmentScreen()),
      GetPage(name: bottomNavBar, page: ()=>  CustomNavBar(currentIndex: 0,)),
 ];



}
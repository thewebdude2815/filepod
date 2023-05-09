import 'package:filepod/controller/dashboard_controller.dart';
import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/screens/checkEmail.dart';
import 'package:filepod/screens/dashboard/allAccounts.dart';
import 'package:filepod/screens/dashboard/allAccountsSingle.dart';
import 'package:filepod/screens/dashboard/appStore.dart';
import 'package:filepod/screens/dashboard/dashboard.dart';
import 'package:filepod/screens/dashboard/myApps.dart';
import 'package:filepod/screens/dashboard/settings/changePassword.dart';
import 'package:filepod/screens/dashboardMain.dart';
import 'package:filepod/screens/forgotPassword.dart';
import 'package:filepod/screens/login.dart';
import 'package:filepod/screens/signup.dart';
import 'package:get/get.dart';
import '../screens/success.dart';

const routeLogin = '/Login';
const routeSignup = '/Signup';
const routeSuccess = '/Success';
const routeCheckEmail = '/CheckEmail';
const routeForgotPassword = '/ForgotPassword';
const routeDashboardMain = '/DashboardMain';
const routeMyApps = '/MyApps';
const routeDashboard = '/Dashboard';
const routeAppStore = '/AppStore';
const routeAllAccounts = '/AllAccounts';
const routeAllAccountsSingle = '/AllAccountsSingle';
const routeChangePassword = '/ChangePassword';

class Routes {
  static final routes = [
    GetPage(name: routeLogin, page: () => const LoginPage()),
    GetPage(name: routeSignup, page: () => const Signup()),
    GetPage(name: routeSuccess, page: () => const VerificaionPage()),
    GetPage(name: routeCheckEmail, page: () => const CheckEMail()),
    GetPage(name: routeForgotPassword, page: () => const ForgoPassword()),
    GetPage(
        name: routeDashboardMain,
        page: () => const DashboardMain(),
        binding: BindingsBuilder(() {
          Get.lazyPut<DashboardController>(() => DashboardController());

          Get.lazyPut<SettingsController>(() => SettingsController());
        })),
    GetPage(name: routeMyApps, page: () => const MyApps()),
    GetPage(name: routeDashboard, page: () => const Dashboard()),
    GetPage(name: routeAppStore, page: () => const AppStore()),
    GetPage(name: routeAllAccounts, page: () => const AllAccounts()),
    GetPage(
        name: routeAllAccountsSingle, page: () => const AllAccountsSingle()),
    GetPage(name: routeChangePassword, page: () => const ChangePassword()),
  ];
}

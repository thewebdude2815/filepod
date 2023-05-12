import 'package:filepod/config/routes.dart';
import 'package:filepod/screens/dashboardMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Step 2
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(const FilePod()));
  runApp(const FilePod());
}

String route = 'dashboard';

class FilePod extends StatelessWidget {
  const FilePod({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      debugShowCheckedModeBanner: false,
      // home: const DashboardMain(),
      getPages: Routes.routes,
      initialRoute: routeLogin,
    );
  }
}

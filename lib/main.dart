import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:terralith/core/app_route.dart';
import 'package:terralith/features/presentation/auth/username/username_binding.dart';
import 'package:terralith/firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDateFormatting('id_ID', null);

  FlutterNativeSplash.remove();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
      initialRoute: AppRoute.initialRoute,
      initialBinding: UsernameBinding(),
      builder: (context, child) {
        child = EasyLoading.init()(context, child);
        return MediaQuery(data: MediaQuery.of(context), child: child);
      },
      theme: ThemeData(
        // Set the app theme to use Material Components
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Add MaterialComponents as parent theme
        useMaterial3: true, // Enable Material3 if needed
      ),
    );
  }
}

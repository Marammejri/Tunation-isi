import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_level1/Screens/Education1.dart';
import 'package:flutter_final_project_level1/Screens/Login.dart';
import 'package:flutter_final_project_level1/Screens/home.dart';
import 'package:flutter_final_project_level1/Screens/profile.dart';
import 'package:flutter_final_project_level1/Screens/region.dart';
import 'package:flutter_final_project_level1/widgets/bottomnaviagtionbar.dart';
import 'package:flutter_final_project_level1/testChatbot/spachscreen.dart';
import 'package:flutter_final_project_level1/Screens/test.dart';
import 'package:flutter_final_project_level1/Screens/test1.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'Screens/Associa.dart';
import 'Screens/Signup.dart';
import 'Screens/Stat.dart';
import 'Screens/Welcome.dart';
import 'data/model/add_date.dart';
import 'Screens/categ.dart';
import 'Screens/Login.dart';

import 'Anim.dart';
import 'Screens/money.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'fa']);
  await Hive.initFlutter();
  await Firebase.initializeApp();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return LocaleBuilder(
              builder: (locale) => MaterialApp(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: Locales.delegates,
                      supportedLocales: Locales.supportedLocales,
                      locale: locale,
                      initialRoute: "//",
                      routes: {
                        "//": (context) => const Splach(),
                        "/": (context) => const Test(),
                        "/signup": (context) => Signup(),
                        "/login": (context) => Login(),
                        "/anim": (context) => const Anim(),
                        "/categ": (context) => const Categ(),
                        "/money": (context) => const Money(),
                        "/stat": (context) => const Stat(),
                        "/btn": (context) => const Bottomn(),
                        "/educ": (context) => const Education(),
                        "/home": (context) => const Homesup(),
                        "/profile": (context) => const Profile(),
                        "/region": (context) => const Region(),
                        "/associa": (context) => PageAssociation(),
                      }));
        });
  }
}

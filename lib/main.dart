import 'package:airtrip/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';
import 'services/firebase_service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.initializeFirebase();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=> ThemeProvider())
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
       theme: Provider.of<ThemeProvider>(context).themeData,
      routerConfig: router,
    );
  }
}

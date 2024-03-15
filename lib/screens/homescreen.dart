import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void logeout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: themeProvider.toggleTheme,
            icon: Icon(themeProvider.getThemeIcon()),
          ),
          IconButton(
            onPressed: logeout,
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      drawer: const Drawer(),
    );
  }
}

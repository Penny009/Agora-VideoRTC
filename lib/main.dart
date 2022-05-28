import 'package:flutter/material.dart';
import 'package:videocall_app/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 16)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      builder: (_, child) => _Unfocus(child: child!),
      home: const HomeScreen(),
    );
  }
}

class _Unfocus extends StatelessWidget {
  final child;

  const _Unfocus({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: child,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}

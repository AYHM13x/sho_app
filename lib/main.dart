import 'package:flutter/material.dart';

import 'core/utils/app_color.dart';
import 'features/_0_lock/presentation/views/lock_view.dart';

void main() {
  runApp(const BootsApp());
}

class BootsApp extends StatelessWidget {
  const BootsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Boots App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          background: AppColor.primaryColor,
        ),
      ),
      home: const LockView(),
    );
  }
}

import 'package:flutter/material.dart';

import 'bodies/lock_view_body.dart';

class LockView extends StatelessWidget {
  const LockView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LockViewBody(),
      ),
    );
  }
}

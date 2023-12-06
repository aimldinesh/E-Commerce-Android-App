import 'package:e_commerce_app/widgets/appbar_widgets.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(
          title: 'Balance',
        ),
        leading: const AppBarBackButton(),
      ),
    );
  }
}

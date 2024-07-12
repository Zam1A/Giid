import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  Widget _buildView() {
    return Column(
      children: [
        Image.asset('images/logo.png'),
        Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildView()),
    );
  }
}

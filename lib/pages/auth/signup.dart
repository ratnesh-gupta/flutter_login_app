import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar();
  }

  Widget _buildUI(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText(),
        ],
      ),
    );
  }

  Widget _headerText() {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Signup\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          TextSpan(
            text: "Let's start your journey..",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_login_app/widgets/custom_buttons.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(
        context,
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _backgroundGradient(
          context,
        ),
        _foregorundWidgets(context)
      ],
    );
  }

  Widget _backgroundGradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [
            0.4,
            0.4
          ],
              colors: [
            Theme.of(context).primaryColor,
            const Color.fromRGBO(186, 255, 227, 1),
          ])),
    );
  }

  Widget _foregorundWidgets(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _avatarImage(context),
          _infoContainer(context),
        ],
      ),
    ));
  }

  Widget _avatarImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.35,
      width: MediaQuery.sizeOf(context).width * 0.75,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 30,
                sigmaY: 30,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              20.0,
            ),
            child: Image.network(
              "https://ouch-cdn2.icons8.com/uX7RtMdrhgStZtxjc524EYwa_QzL6PfxNPcTdAKZDoQ/rs:fit:368:340/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjcv/NGQ4MzVmYWYtYTRh/YS00NjcyLWEwMTIt/MzA1ZTUyZDg1NWJk/LnBuZw.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.4,
      width: MediaQuery.sizeOf(context).width * 0.90,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _infoText(context),
          _infoSubText(context),
          CustomButtons(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.70,
            isPrimary: true,
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/login",
              );
            },
            text: "LOGIN",
          ),
          CustomButtons(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.70,
            isPrimary: false,
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/signup",
              );
            },
            text: "SIGN UP",
          ),
        ],
      ),
    );
  }

  Widget _infoText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          children: [
            const TextSpan(
              text: "Find the",
            ),
            TextSpan(
              text: " doctor ",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            const TextSpan(
              text: "that fits your needs_",
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoSubText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: const Text(
        "Your health doctor is here.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }
}

import 'package:animated_login/components/onboard_component.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showModal = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _showModalBottomSheet();
    });
  }

  Future<dynamic> _showModalBottomSheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(42), topRight: Radius.circular(42))),
        builder: (_) => const OnboardContent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg2.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () => _showModalBottomSheet(),
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.4, 0.8],
                          colors: [
                            Color.fromARGB(255, 250, 74, 121),
                            Color.fromARGB(255, 66, 153, 235),
                          ],
                        ),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_up_outlined,
                        size: 24,
                        color: Colors.white,
                      )))),
        ],
      ),
    );
  }
}

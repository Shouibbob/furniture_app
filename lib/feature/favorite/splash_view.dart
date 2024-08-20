import 'package:flutter/material.dart';
import 'package:furniture_app/core/colors.dart';
import 'package:furniture_app/feature/auth/view/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 130,
              backgroundImage: NetworkImage(
                  'https://marketplace.canva.com/EAFTSWb0zIU/1/0/1600w/canva-gray-and-beige-modern-furniture-logo-k6opS-dHifI.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We have your dream',
              style: TextStyle(
                color: AppColors.secondry,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

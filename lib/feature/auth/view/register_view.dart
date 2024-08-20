import 'package:flutter/material.dart';
import 'package:furniture_app/core/colors.dart';
import 'package:furniture_app/feature/auth/view/login_view.dart';

import '../../view/furniture_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  @override
  State<StatefulWidget> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isObscure1 = true;
  bool isObscure2 = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: AppColors.secondry,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'name',
                    style: TextStyle(
                      color: AppColors.hover,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: AppColors.hover,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      color: AppColors.hover,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextFormField(
                    obscureText: isObscure1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 9) {
                        return 'Password must be at least 9 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure1 = !isObscure1;
                          });
                        },
                        icon: Icon(
                          isObscure1
                              ? Icons.visibility_off_outlined
                              : Icons.remove_red_eye_outlined,
                          color: AppColors.secondry,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: AppColors.hover,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextFormField(
                    obscureText: isObscure2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'confirm your password';
                      } else if (value.length < 9) {
                        return 'Not confirm';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: AppColors.hover,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure2 = !isObscure2;
                          });
                        },
                        icon: Icon(
                          isObscure2
                              ? Icons.visibility_off_outlined
                              : Icons.remove_red_eye_outlined,
                          color: AppColors.secondry,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        backgroundColor: AppColors.secondry,
                        foregroundColor: AppColors.bgColor,
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const FavoritesView(),
                          ));
                        }
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account?',
                        style: TextStyle(
                          color: AppColors.hover,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: AppColors.secondry,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:furniture_app/core/colors.dart';
import 'package:furniture_app/feature/auth/view/register_view.dart';
import 'package:furniture_app/feature/view/furniture_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<StatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isObscure = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            //use validatore wrap with form widget
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello !',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: AppColors.hover,
                    ),
                  ),
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      color: AppColors.secondry,
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
                    keyboardType: TextInputType.emailAddress,
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
                    height: 40,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 9) {
                        return 'Password must be at least 9 characters';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isObscure,
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
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure
                              ? Icons.visibility_off_outlined
                              : Icons.remove_red_eye_outlined,
                          color: AppColors.secondry,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: AppColors.secondry,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
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
                        'Log in',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => RegisterView(),
                          ),
                        );
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: AppColors.secondry,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
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

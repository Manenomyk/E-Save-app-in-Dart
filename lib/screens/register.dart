import 'package:baha_assignment/screens/login.dart';
import 'package:baha_assignment/utils/app_color.dart';
import 'package:baha_assignment/utils/app_layout.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              SizedBox(
                height: size.height * 0.1,
              ),
               
              Text(
                "Here to get welcomed",
                style: TextStyle(fontSize: 26, color: AppColors.primary),
              ),
               SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Register!",
                style: TextStyle(fontSize: 26, color: AppColors.primary),
              ),
               SizedBox(
                height: size.height * 0.1,
              ),
              TextField(
                controller: nameController,
                style: TextStyle(color: AppColors.textColor),
                cursorColor: AppColors.cursorColor,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: AppColors.cursorColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )),
              ),
               SizedBox(
                height: size.height * 0.05,
              ),
              TextField(
                controller: emailController,
                style: TextStyle(color: AppColors.textColor),
                cursorColor: AppColors.cursorColor,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'email',
                    hintStyle: TextStyle(
                      color: AppColors.cursorColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              TextField(
                controller: passwordController,
                style: TextStyle(color: AppColors.textColor),
                cursorColor: AppColors.cursorColor,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: AppColors.cursorColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )),
              ),
               SizedBox(
                height: size.height * 0.05,
              ),
              TextField(
                controller: passwordConfirmationController,
                style: TextStyle(color: AppColors.textColor),
                cursorColor: AppColors.cursorColor,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'confirm password',
                    hintStyle: TextStyle(
                      color: AppColors.cursorColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(fontSize: 22, color: AppColors.primary),
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                      label: const Text(''))
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16, color: AppColors.primary),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

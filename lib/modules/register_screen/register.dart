import 'package:flutter/material.dart';
import 'package:task1/modules/login_screen/login.dart';
import 'package:task1/shared/components/components.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [ const SizedBox(
                  height: 20,
                ),
                  Expanded(
                    child: Text(
                      'Let\'s Get Started ',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: greyText(
                          text:
                              'Create an  account to Q Allure to get all features')),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultTextFormFiled(
                        icon: Icons.person,
                        onchange: (value) {
                          print(value);
                        },
                        cont: userController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Enter your user name  ";
                          }
                          return null;
                        },
                        keyboard: TextInputType.text,
                        text: "User name "),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultTextFormFiled(
                        icon: Icons.email_outlined,
                        onchange: (value) {
                          print(value);
                        },
                        cont: emailController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Enter your email  ";
                          }
                          return null;
                        },
                        keyboard: TextInputType.emailAddress,
                        text: "Email "),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultTextFormFiled(
                        icon: Icons.phone,
                        onchange: (value) {
                          print(value);
                        },
                        cont: phoneController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Enter your phone number  ";
                          }
                          return null;
                        },
                        keyboard: TextInputType.number,
                        text: "Phone "),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultTextFormFiled(
                        icon: Icons.lock,
                        onchange: (value) {
                          print(value);
                        },
                        cont: passwordController,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Enter your password  ";
                          }
                          return null;
                        },
                        keyboard: TextInputType.text,
                        text: "Password ",
                        textShow: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultTextFormFiled(
                        icon: Icons.lock,
                        onchange: (value) {
                          print(value);
                        },
                        cont: confirmController,
                        validate: (value) {
                          if (value!.isEmpty) {
                              return "Enter the confirm password ";
                          }
                          return null;
                        },
                        keyboard: TextInputType.text,
                        text: "Confirm password ",
                        textShow: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: defaultButtonWithOutIcon(
                        buttonText: 'Create',
                        radius: 20,
                        onPress: () {
                          if (formKey.currentState!.validate()) {}
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                                (context),
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text('Log in',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue)))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

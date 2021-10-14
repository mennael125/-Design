import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:task1/modules/register_screen/register.dart';
import 'package:task1/shared/components/components.dart';


class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController LoginController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child:
        // SingleChildScrollView(
        //   child: Flex(
        //     direction: Axis.horizontal,
        //     children: [
        //       Expanded(
        //         child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: Image.asset(
                    "assets/images/login.jpg",
                    height: 250,
                    width: 250,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Welcome back! ',
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
                    '  Login in to your existent account of Q Allure  ',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: defaultTextFormFiled(
                      icon: Icons.email,
                      onchange: (value) {
                        print(value);
                      },
                      cont: LoginController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "email address cannot be empty ";
                        }
                        return null;
                      },
                      keyboard: TextInputType.emailAddress,
                      text: "Email Address"),
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
                      cont: PassController,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password ";
                        }
                        return null;
                      },
                      textShow: true,
                      keyboard: TextInputType.visiblePassword,
                      text: "Password"),
                ),
                const SizedBox(
                  height: 10,
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: defaultButtonWithOutIcon(
                      buttonText: 'Log In',
                      radius: 20,
                      onPress: () {
                        if (formKey.currentState!.validate()) {}
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),

                Expanded(
                  child: greyText(
                    text: '  Or connect using  ',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: defaultButton(
                            icon: Icons.facebook_sharp,
                            color: Color(0xff375C8F),
                            buttonText: 'Facebook',
                            radius: 10,
                            onPress: () {}),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: defaultButton(
                            icon: Icons.android_outlined,
                            color: Colors.red,
                            buttonText: 'Google',
                            radius: 10,
                            onPress: () {}),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ? ',
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
                            Navigator.push(
                                (context),
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterScreen()));
                          },
                          child: Text('Sign up',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue)))
                    ],
                  ),
                ),
              ]),
        ),
      ),


    );


  }
}

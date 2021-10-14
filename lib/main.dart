import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/modules/login_screen/login.dart';

void main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white ,

          iconTheme: IconThemeData(color: Colors.grey ) ,
          elevation: 0,
          backwardsCompatibility: false ,
          systemOverlayStyle: SystemUiOverlayStyle(

            statusBarColor: Colors.white ,
            statusBarIconBrightness: Brightness.dark,

          )

        )




      ) ,
      home: LoginScreen(),


    )

    ;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget defaultTextFormFiled({
  required ValueChanged<String> onchange,
  required TextEditingController cont,
  required FormFieldValidator<String> validate,
  required TextInputType keyboard,
  bool textShow = false,
  required IconData icon,
  required String text,


}) =>


    TextFormField(


      onChanged: onchange,style: TextStyle(color: Colors.blue),

      controller: cont,
      validator: validate,
      keyboardType: keyboard,
      obscureText: textShow,
      decoration: InputDecoration
        (

        labelText: text


        ,prefixIcon: Icon(icon,

      )
      ,


      focusedBorder: OutlineInputBorder(


        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          width: 2.0,
        color: Colors.blue,
        ),
      ),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      )   );

Widget  defaultButtonWithOutIcon( {

  double radius=0,
  Color color =Colors.blue,
  required   void onPress(),
  required String buttonText,

}

    ) =>Container(decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(radius)
  ,

  color: color,

),
  width: 200,

  child:   MaterialButton(onPressed:onPress,

      child:
          Text( buttonText,
            style: TextStyle(
                color: Colors.white,
                fontSize:20 ,fontWeight: FontWeight.bold
            ),
      )





  ),
);


Widget defaultButton( {
  required IconData icon,
double radius=0,
  Color color =Colors.blue,
required   void onPress(),
 required String buttonText,

}

) =>Container(decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(radius)
  ,

  color: color,

),
width: 200,

  child:   MaterialButton(onPressed:onPress,

   child: Row(

     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Icon(icon,color: Colors.white,),
       SizedBox(width: 5,),
       Text( buttonText,
        style: TextStyle(
          color: Colors.white,
          fontSize:20 ,fontWeight: FontWeight.bold
        ),),
     ],
   )





  ),
);

Widget greyText({
  required String text
})=> Text(
  text
  ,
style: TextStyle(
fontSize: 15,
fontWeight: FontWeight.w500,
color: Colors.grey),
);
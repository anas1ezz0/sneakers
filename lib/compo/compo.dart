

import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
   TextInputType? type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
   String? label,
   IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
   EdgeInsets? scrollPadding,
   Color? cursorColor,
   int? cursorWidth,
   TextStyle? style,
   TextInputType? keyboardType,
  required InputDecoration decoration,
})
=> TextFormField(
  cursorColor: Colors.black,
  controller: controller,
  keyboardType: type ,
  obscureText: isPassword,
  enabled: isClickable,
  onFieldSubmitted: (s)
  {
    onSubmit!(s);
  },
// onChanged: (s)
// {
// onChange!();
// },
  validator: (a){

    return validate(a);

  },


  decoration: InputDecoration(
      suffixIcon: suffix != null
          ?IconButton(
        onPressed: ()
        {
          suffixPressed!() ;
        },
        icon: Icon(
          suffix,
        ),
      ) : null,
      filled: true,
      fillColor: const Color.fromRGBO(255, 230, 198, 1),
      hintText: 'Password',
      hintStyle: const TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: const OutlineInputBorder(
          borderSide:
          BorderSide(color: Colors.orange, width: 2))),
);
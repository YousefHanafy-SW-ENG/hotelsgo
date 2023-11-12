import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelsgo/core/utils/extensions.dart';
//////////////////////TextField\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

class MyTextField3 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  const MyTextField3({Key? key, this.suffixicon, this.controller, required this.hintText, required this.obsecureText, this.validator,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: TextFormField(
          textDirection: TextDirection.ltr,
          validator: validator,
          controller: controller,
          obscureText: obsecureText,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            hintTextDirection:TextDirection.ltr ,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(20)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: Colors.white,
            filled:true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
            ),
            labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 108.w),
            prefixIcon: suffixicon,
          ),
        ),
      ),
    );
  }
}
class MyTextField4 extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final  suffixicon;
  final validator;
  final TextEditingController controller;
  final Function()? onTap;
  const MyTextField4({Key? key, this.suffixicon, required this.controller, required this.hintText, required this.obsecureText, this.validator, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      style: const TextStyle(color: Colors.blue,fontSize: 13,fontWeight: FontWeight.bold),
      onTap: onTap,
      readOnly: true,
      decoration:  InputDecoration(
        suffixIcon: suffixicon,
        hintText: hintText,
        hintStyle:const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 45.w),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const  BorderSide(color: Colors.blue)
        ),
        focusedBorder:   OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue)
        ),
      ),
      controller: controller,
    );
  }
}

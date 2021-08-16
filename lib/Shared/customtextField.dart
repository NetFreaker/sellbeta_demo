import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFeild1 extends StatelessWidget {
  final Widget? prefix;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;
  final height;
  final String? labelName;
  final String? hintName;
  final TextEditingController? fieldController;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputType? keyboardType;
  final Function? function;
  final EdgeInsets? margin;
  final Function(String)? value;
  final bool? readOnly;
  final Color? color;

  CustomTextFeild1(
      {this.fieldController,
      this.obscureText,
      this.prefix,
      this.hintName,
      this.margin = const EdgeInsets.symmetric(horizontal: 10.0),
      this.maxLength,
      this.maxLines,
      this.height = 44.0,
      this.labelName,
      this.textInputFormatter,
      this.keyboardType,
      this.readOnly,
      this.validator,
      this.function,
      this.value,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      // height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
        color: Colors.white,
      ),
      child: TextFormField(
        obscureText: obscureText!,
        maxLength: maxLength,
        maxLines: maxLines,
        validator: validator,
        readOnly: readOnly!,
        keyboardType: keyboardType,
        inputFormatters: textInputFormatter,
        obscuringCharacter: '*',
        controller: fieldController,
        onChanged: value,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 1.0),
            ),
            border: InputBorder.none,
            counterText: '',
            prefix: prefix,
            hintText: hintName,
            // labelText: labelName,
            labelStyle: TextStyle(
                letterSpacing: -0.32,
                fontSize: 19.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            hintStyle: TextStyle(
                letterSpacing: -0.32,
                fontSize: 19.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.grey)),
        style: TextStyle(
            letterSpacing: -0.32,
            fontSize: 19.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            color: Colors.black),
      ),
    );
  }
}

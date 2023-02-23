import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultTextFormField({
  double height = 50.0,
  Color color = Colors.white,
  double borderRadius = 15.0,
  required var controller,
  required TextInputType keyboardType,
  required String label,
  required bool isPassword,
  ValueChanged? onSubmit,
  required FormFieldValidator validate,
  bool labelIsOn = false,
  IconData? suffixIcon,
  Function()? suffixPressed,
}) => Container(
  height: height,
  padding: EdgeInsetsDirectional.only(
    start: 10.0,
  ),
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(
      borderRadius,
    ),
  ),
  child: TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    validator: validate,

    decoration: InputDecoration(
      labelText: label,
      suffixIcon: suffixIcon != null ? IconButton(
        highlightColor: HexColor('#e3c099'),
        onPressed: suffixPressed,
        icon: Icon(
          suffixIcon,
        ),
      ) : null,
      floatingLabelBehavior: labelIsOn ? FloatingLabelBehavior.auto : FloatingLabelBehavior.never,
      border: InputBorder.none,
    ),
  ),
);

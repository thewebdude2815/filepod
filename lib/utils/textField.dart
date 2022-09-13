import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required TextEditingController email,
      required this.emptyFields,
      required this.errorText,
      required this.iconData,
      required this.obsText,
      this.suffIcon,
      required this.mainText})
      : _email = email,
        super(key: key);

  final TextEditingController _email;
  final bool emptyFields;
  final IconData iconData;
  final String mainText;
  final String errorText;
  final bool obsText;
  var suffIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscuringCharacter: '*',
      obscureText: obsText,
      controller: _email,
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: errorColor),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
        ),
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: !emptyFields ? formTextColor : errorColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: !emptyFields ? formTextColor : errorColor),
        ),
        hintText: !emptyFields ? mainText : errorText,
        labelText: !emptyFields ? mainText : errorText,
        labelStyle: TextStyle(
          color: !emptyFields ? formFilledTextColor : errorColor,
          fontSize: 11.0,
        ),
        hintStyle: TextStyle(
          color: !emptyFields ? formFilledTextColor : errorColor,
          fontSize: 11.0,
        ),
        suffix: suffIcon,
        prefixIcon: Icon(iconData,
            color: !emptyFields ? formFilledTextColor : errorColor),
      ),
    );
  }
}

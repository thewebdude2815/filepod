import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      required this.emptyFields,
      required this.errorText,
      this.iconData,
      required this.obsText,
      this.suffIcon,
      this.inputType,
      required this.textEditingController,
      this.showPrefixIcon,
      required this.mainText})
      : super(key: key);

  final TextEditingController textEditingController;
  final bool emptyFields;
  IconData? iconData;
  final String mainText;
  final String errorText;
  final bool obsText;
  bool? showPrefixIcon;
  TextInputType? inputType;
  var suffIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscuringCharacter: '*',
      obscureText: obsText,
      controller: textEditingController,
      keyboardType: inputType ?? TextInputType.text,
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
        prefixIcon: showPrefixIcon == false
            ? null
            : Icon(iconData ?? EvaIcons.personOutline,
                color: !emptyFields ? formFilledTextColor : errorColor),
      ),
    );
  }
}

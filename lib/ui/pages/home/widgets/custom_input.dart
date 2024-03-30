import 'package:e_commerce_app/constants/app_borders.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';


class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    this.hint,
    this.label,
    this.controller,
    this.focus,
    this.onFieldSubmitted,
    this.validator, 
    this.suffix, 
  });

  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final FocusNode? focus;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final IconData? suffix;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 50,
      child: TextFormField( 
        focusNode: widget.focus,
        keyboardType: TextInputType.text,
        controller: widget.controller,
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.lightgrey,
          border: AppBorders.inputBorder,
          enabledBorder: AppBorders.inputBorder,
          disabledBorder: AppBorders.inputBorder,
          focusedBorder: AppBorders.focusedBorder,
          errorBorder: AppBorders.inputBorder.copyWith(
            borderSide: const BorderSide(color: AppColors.red),
          ),
          focusedErrorBorder: AppBorders.inputBorder.copyWith(
            borderSide: const BorderSide(color: AppColors.red),
          ),
          hintText: widget.hint,
          hintStyle: AppTextStyles.midTxtStyle,
          labelText: widget.label,
          suffixIcon: Icon(widget.suffix),
        ),
      )
    );
  }
}

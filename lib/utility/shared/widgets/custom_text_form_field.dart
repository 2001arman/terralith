import 'package:flutter/material.dart';
import 'package:terralith/utility/shared/constants/constants_ui.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.isPassword = false,
    this.title,
    this.minLines = 1,
    required this.controller,
    this.onChanged,
    this.isReadOnly = false,
    this.textInputType = TextInputType.text,
    this.validator,
    this.fontSize = 16,
    this.textAlign,
  });

  final String? hintText, title;
  final bool isPassword, isReadOnly;
  final int minLines;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final double fontSize;
  final TextAlign? textAlign;

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        const SizedBox(height: 10),
        widget.isPassword
            ? TextFormField(
                controller: widget.controller,
                obscureText: obscure,
                onChanged: widget.onChanged,
                validator: widget.validator,
                textAlign: widget.textAlign ?? TextAlign.start,
                style: mainTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      if (obscure == false) {
                        obscure = true;
                      } else {
                        obscure = false;
                      }
                      setState(() {});
                    },
                    child: obscure
                        ? Icon(Icons.visibility_off, color: kBlackColor)
                        : Icon(Icons.visibility, color: kBlackColor),
                  ),
                  fillColor: kTextFormColor,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 9,
                    horizontal: 14,
                  ),

                  // hintStyle: greyTextStyle.copyWith(fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                ),
              )
            : TextFormField(
                controller: widget.controller,
                obscureText: widget.isPassword,
                readOnly: widget.isReadOnly,
                onChanged: widget.onChanged,
                validator: widget.validator,
                style: mainTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                ),
                textAlign: widget.textAlign ?? TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 9,
                    horizontal: 14,
                  ),
                  hintText: widget.hintText,
                  fillColor: kTextFormColor,
                  // hintStyle: greyTextStyle.copyWith(fontSize: 13),

                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: widget.minLines,
                keyboardType: widget.textInputType,
              ),
        const SizedBox(height: 14),
      ],
    );
  }
}

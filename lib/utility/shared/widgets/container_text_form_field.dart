import 'package:flutter/material.dart';

import '../constants/constants_ui.dart';

class ContainerTextFormField extends StatelessWidget {
  const ContainerTextFormField({
    super.key,
    required this.title,
    required this.controller,
    this.isReadOnly = false,
    this.isPassword = false,
    this.showEditIcon = true,
    this.color,
  });

  final String title;
  final TextEditingController controller;
  final bool isReadOnly, isPassword, showEditIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blueTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          decoration: BoxDecoration(
            color: color ?? kWhiteColor,
            boxShadow: [defaultBoxShadow],
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            controller: controller,
            style: mainTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 16,
            ),
            obscureText: isPassword,
            readOnly: isReadOnly,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 12),
              suffixIconConstraints: BoxConstraints(
                minHeight: 49,
                minWidth: showEditIcon ? 30 : 0,
                maxWidth: showEditIcon ? 30 : 0,
              ),
              suffixIcon: Icon(
                Icons.edit_outlined,
                color: showEditIcon ? kBlueColor : Colors.transparent,
              ),
            ),
          ),
        )
      ],
    );
  }
}

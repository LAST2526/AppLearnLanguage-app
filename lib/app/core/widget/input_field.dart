import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool required;
  final VoidCallback? onTap;
  final VoidCallback? onToggleVisibility;
  final bool readOnly;
  final ValueChanged<String> onChanged;
  final IconData? iconData;
  final RxBool? obscureText;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final RxString? errorText;
  final InputDecoration decoration;

  InputField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.required = false,
    this.onTap,
    this.onToggleVisibility,
    this.readOnly = false,
    this.obscureText,
    required this.onChanged,
    this.iconData,
    this.validator,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.errorText,
    this.decoration = const InputDecoration(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(label,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.subTitleTextColor,
                    fontSize: getFontSize(14))),
            if (required)
              const Padding(
                padding: EdgeInsets.fromLTRB(4, 8, 0, 0),
                child: Text(
                  '*',
                  style: TextStyle(
                    color: AppColors.errorColor,
                    fontSize: 16,
                  ),
                ),
              ),
          ],
        ),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller,
                obscureText: obscureText?.value ?? false,
                readOnly: readOnly,
                onTap: onTap,
                focusNode: focusNode,
                textInputAction: textInputAction,
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                decoration: InputDecoration(
                  fillColor: const Color(0xFFFFFFFF),
                  filled: true,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: AppColors.textDefault,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColorForcus),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.validateError, width: 1),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.validateError, width: 1),
                  ),
                  errorText: errorText?.value.isNotEmpty == true
                      ? errorText?.value
                      : null,
                  errorStyle: const TextStyle(fontSize: 0.1, height: 0.1),
                  suffixIcon:
                      (obscureText != null && onToggleVisibility != null)
                          ? IconButton(
                              icon: Icon(
                                obscureText!.value
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: onToggleVisibility,
                            )
                          : (iconData != null
                              ? Icon(iconData, color: Colors.grey)
                              : null),
                ),
              ),
              if (errorText != null && errorText!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 4, top: 4),
                  child: Text(
                    errorText!.value,
                    style: TextStyle(
                        color: AppColors.errorColor, fontSize: getFontSize(12)),
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}

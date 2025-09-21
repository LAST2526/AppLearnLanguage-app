import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:last02/l10n/app_localizations.dart';

class LabelTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool required;
  final VoidCallback? onTap;
  final bool readOnly;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLength;
  final String? fieldName;

  const LabelTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.required = false,
    this.onTap,
    this.readOnly = false,
    required this.onChanged,
    this.validator,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLength,
    this.fieldName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: getFontSize(16),
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryTextLight,
              ),
            ),
            if (required)
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text('*', style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
        const SizedBox(height: 4),
        FormField<String>(
          initialValue: controller.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator ??
              (value) {
                if (required && (value == null || value.isEmpty)) {
                  return appLocalization
                      .validation_required(fieldName ?? label);
                }
                if (maxLength != null &&
                    value != null &&
                    value.length > maxLength!) {
                  return appLocalization.validation_max_length(
                      fieldName ?? label, maxLength!);
                }
                return null;
              },
          builder: (state) {
            final hasError = state.hasError;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: readOnly ? 0.5 : 1.0,
                  child: TextFormField(
                    controller: controller,
                    readOnly: readOnly,
                    onTap: onTap,
                    focusNode: focusNode,
                    textInputAction: textInputAction,
                    onFieldSubmitted: onFieldSubmitted,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textDefault,
                    ),
                    textCapitalization: TextCapitalization.words,
                    onChanged: (value) {
                      onChanged(value);
                      state.didChange(value);
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: hintText,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderColor),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.greenAuthScreenColor),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.validateError, width: 1),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.validateError, width: 1),
                      ),
                      errorText: state.hasError ? state.errorText : null,
                      errorStyle: const TextStyle(
                        fontSize: 0.1,
                        height: 0.1,
                      ),
                      contentPadding:
                          getPaddingSymmetric(horizontal: 12, vertical: 12),
                    ),
                  ),
                ),
                if (hasError)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      state.errorText!,
                      style: TextStyle(
                        fontSize: getFontSize(12),
                        color: AppColors.validateError,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

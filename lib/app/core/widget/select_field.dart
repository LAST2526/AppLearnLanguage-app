import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:last02/l10n/app_localizations.dart';

class SelectField<T> extends StatefulWidget {
  final String label;
  final String hintText;
  final List<T> options;
  final T? value;
  final bool required;
  final VoidCallback? onTap;
  final ValueChanged<T?> onChanged;
  final String Function(T) getLabel;
  final bool readOnly;
  final String? fieldName;

  const SelectField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.options,
    required this.value,
    required this.onChanged,
    required this.getLabel,
    this.required = false,
    this.onTap,
    this.readOnly = false,
    this.fieldName,
  }) : super(key: key);

  @override
  State<SelectField<T>> createState() => _SelectFieldState<T>();
}

class _SelectFieldState<T> extends State<SelectField<T>> {
  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context)!;
    final isValidValue = widget.options.contains(widget.value);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: TextStyle(
                fontSize: getFontSize(16),
                fontWeight: FontWeight.bold,
                color: AppColors.secondaryTextLight,
              ),
            ),
            if (widget.required)
              const Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text('*', style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
        const SizedBox(height: 4),
        FormField<T>(
          initialValue: widget.value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (widget.required && value == null) {
              return appLocalization
                  .validation_required(widget.fieldName ?? widget.label);
            }
            return null;
          },
          builder: (state) {
            final hasError = state.hasError;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonFormField<T>(
                  value: isValidValue ? widget.value : null,
                  menuMaxHeight: 200,
                  onTap: widget.readOnly ? null : widget.onTap,
                  onChanged: widget.readOnly
                      ? null
                      : (value) {
                          widget.onChanged(value);
                          state.didChange(value);
                        },
                  items: widget.options.map((item) {
                    return DropdownMenuItem<T>(
                      value: item,
                      child: Text(widget.getLabel(item)),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.borderColor),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.greenAuthScreenColor, width: 1),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.validateError, width: 1),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.validateError, width: 1),
                    ),
                    errorText: state.hasError ? state.errorText : null,
                    errorStyle: const TextStyle(fontSize: 0.1, height: 0.1),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                  ),
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textDefault,
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.iconColorkeyboard,
                    size: getSize(24),
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

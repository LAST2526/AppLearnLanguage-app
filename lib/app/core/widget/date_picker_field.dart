import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:last02/l10n/app_localizations.dart';

class DatePickerField extends StatefulWidget {
  final String label;
  final String hintText;
  final DateTime? selectedDate;
  final bool required;
  final Function(DateTime) onDateSelected;
  final FormFieldValidator<DateTime>? validator;
  final String? fieldName;

  const DatePickerField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.selectedDate,
    required this.required,
    required this.onDateSelected,
    this.validator,
    this.fieldName,
  }) : super(key: key);

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        FormField<DateTime>(
          initialValue: widget.selectedDate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: widget.validator ??
              (value) {
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
                InkWell(
                  onTap: () async {
                    final now = DateTime.now();
                    final minDate = DateTime(now.year - 100);
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: widget.selectedDate ?? now,
                      firstDate: minDate,
                      lastDate: now,
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                    );
                    if (picked != null) {
                      widget.onDateSelected(picked);
                      state.didChange(picked);
                    }
                  },
                  child: InputDecorator(
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
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                    ),
                    child: Text(
                      _formatDate(widget.selectedDate),
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textDefault,
                      ),
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

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.year}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}';
  }
}

import 'package:advancecourse/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class Validation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  final bool hasNumber;

  const Validation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
    required this.hasNumber,
    required bool hasUppercase,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildValidationRow('At least 1 Lowercase letter', hasLowerCase),
        verticalSpace(2),

        _buildValidationRow('At least 1 Uppercase letter', hasUpperCase),
        verticalSpace(2),

        _buildValidationRow(
          'At least 1 Special character',
          hasSpecialCharacters,
        ),
        verticalSpace(2),

        _buildValidationRow('At least 8 characters', hasMinLength),
        verticalSpace(2),

        _buildValidationRow('At least 1 Number', hasNumber),
      ],
    );
  }

  Widget _buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: hasValidation ? Colors.green : Colors.red,
        ),
        horizantalSpace(6),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: hasValidation ? Colors.green : Colors.black,
          ),
        ),
      ],
    );
  }
}

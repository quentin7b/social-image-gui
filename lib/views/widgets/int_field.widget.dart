import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntField extends StatelessWidget {
  final String label;
  final Function(int) onChanged;
  final int value;

  const IntField({
    super.key,
    required this.label,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(label)),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            keyboardType: const TextInputType.numberWithOptions(
              decimal: false,
              signed: false,
            ),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: TextEditingController(
              text: value.toString(),
            )..selection = TextSelection.collapsed(
                offset: value.toString().length,
              ),
            onChanged: (value) => onChanged(
              int.tryParse(value) ?? 0,
            ),
          ),
        ),
      ],
    );
  }
}

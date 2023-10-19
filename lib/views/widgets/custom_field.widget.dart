import 'package:flutter/material.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

class CustomField<T> extends StatelessWidget {
  final String label;
  final Function(T) onChanged;
  final T value;

  const CustomField({
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
        Expanded(
          child: CustomTextField(
            onChanged: onChanged,
            value: value,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_network_mate/utils/extensions/color.extension.dart';

class ColorField extends StatelessWidget {
  final String label;
  final Function(Color) onChanged;
  final Color value;

  const ColorField({
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
            keyboardType: TextInputType.text,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(
                RegExp(r'^#?([0-9a-fA-F]{4,8})$'),
              ),
            ],
            controller: TextEditingController(
              text: value.toHex(),
            )..selection = TextSelection.collapsed(
                offset: value.toHex().length,
              ),
            onChanged: (value) => onChanged(
              HexColor.fromHex(value),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:social_network_mate/utils/extensions/color.extension.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

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
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: CustomTextField(
                  value: value.toHex(),
                  onChanged: (value) {
                    onChanged(HexColor.fromHex(value));
                  },
                ),
              ),
              const SizedBox(width: 8),
              InkWell(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: value,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        title: const Text('Pick a color!'),
                        content: SingleChildScrollView(
                          child: HueRingPicker(
                            pickerColor: value,
                            onColorChanged: (color) {
                              onChanged(color);
                            },
                            displayThumbColor: false,
                            enableAlpha: true,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Fermer'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/views/widgets/color_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

class TextContentSettings extends StatelessWidget {
  final TextSlideContent content;
  final ValueChanged<TextSlideContent> onChanged;

  const TextContentSettings({
    required this.content,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField<String>(
          value: content.text,
          onChanged: (value) {
            onChanged(
              content.copyWith(
                text: value,
                fontSize: 48,
              ),
            );
          },
        ),
        ColorField(
          label: 'Color',
          onChanged: (c) {
            onChanged(
              content.copyWith(
                color: c,
              ),
            );
          },
          value: content.color,
        ),
        CustomField(
          label: 'Font size',
          onChanged: (s) {
            onChanged(
              content.copyWith(
                fontSize: s.toDouble(),
              ),
            );
          },
          value: content.fontSize.toInt(),
        ),
      ]
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: e,
            ),
          )
          .toList(),
    );
  }
}

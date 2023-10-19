import 'package:flutter/material.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

class ImageContentSettings extends StatelessWidget {
  final ImageSlideContent content;
  final ValueChanged<ImageSlideContent> onChanged;

  const ImageContentSettings({
    required this.content,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField<String>(
          value: content.imageUrl,
          onChanged: (value) {
            onChanged(
              content.copyWith(
                imageUrl: value,
              ),
            );
          },
        ),
        CustomField(
          label: 'Width',
          onChanged: (w) {
            onChanged(
              content.copyWith(
                size: Offset(w.toDouble(), context.size?.height ?? 0),
              ),
            );
          },
          value: content.size.dx.toInt(),
        ),
        CustomField(
          label: 'Height',
          onChanged: (h) {
            onChanged(
              content.copyWith(
                size: Offset(context.size?.width ?? 0, h.toDouble()),
              ),
            );
          },
          value: content.size.dy.toInt(),
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

import 'package:flutter/material.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

class ListContentSettings extends StatefulWidget {
  final ListSlideContent content;
  final ValueChanged<ListSlideContent> onChanged;

  const ListContentSettings({
    required this.content,
    required this.onChanged,
  });

  @override
  State<ListContentSettings> createState() => ListContentSettingsState();
}

class ListContentSettingsState extends State<ListContentSettings> {
  String currentItemContent = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...widget.content.items.map(
          (e) => Row(
            children: [
              Expanded(child: Text(e)),
              IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {
                  widget.onChanged(
                    widget.content.copyWith(
                      items: widget.content.items
                          .where((element) => element != e)
                          .toList(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField<String>(
                value: currentItemContent,
                onChanged: (value) {
                  setState(() {
                    currentItemContent = value;
                  });
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                widget.onChanged(
                  widget.content.copyWith(
                    items: [...widget.content.items, currentItemContent],
                  ),
                );
                setState(() {
                  currentItemContent = '';
                });
              },
            ),
          ],
        ),
        CustomField(
          label: 'Font size',
          onChanged: (s) {
            widget.onChanged(
              widget.content.copyWith(
                fontSize: s.toDouble(),
              ),
            );
          },
          value: widget.content.fontSize.toInt(),
        ),
        Row(
          children: [
            const Expanded(child: Text('Séparateurs')),
            const SizedBox(
              width: 8,
            ),
            Switch(
              value: widget.content.hasDividers,
              onChanged: (hasDividers) {
                widget.onChanged(
                  widget.content.copyWith(
                    hasDividers: hasDividers,
                  ),
                );
              },
            ),
          ],
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

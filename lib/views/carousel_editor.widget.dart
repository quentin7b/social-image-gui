import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/views/carousel_preview.widget.dart';
import 'package:social_network_mate/views/slide_settings/slide_settings_pane.widget.dart';

class CarouselEditor extends ConsumerWidget {
  const CarouselEditor({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 600,
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Preview
          Expanded(child: CarouselPreview()),
          // Settings panel
          SizedBox(
            width: 200,
            child: SlideSettingsPane(),
          ),
        ],
      ),
    );
  }
}

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';

class ContentSettings extends ConsumerWidget {
  const ContentSettings({super.key});

  void _updateSlideContent(WidgetRef ref, {required SlideContent content}) {
    ref.read(currentSlideProvider.notifier).updateSlideContent(
          content,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = ref.watch(
      currentSlideProvider.select(
        (s) => s.content,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            IconButton(
              icon: const Icon(Icons.text_fields_outlined),
              onPressed: () {
                _updateSlideContent(
                  ref,
                  content:
                      const TextSlideContent(text: 'Hello') as SlideContent,
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.list_outlined),
              onPressed: () {
                _updateSlideContent(
                  ref,
                  content:
                      const ListSlideContent(items: ['1', '2']) as SlideContent,
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.image_outlined),
              onPressed: () {
                _updateSlideContent(
                  ref,
                  content: ImageSlideContent(image: Uint8List.fromList([]))
                      as SlideContent,
                );
              },
            ),
          ],
        ),
        const Divider(),
        switch (content?.type) {
          SlideContentType.text => TextContentSettings(),
          SlideContentType.list => ListContentSettings(),
          SlideContentType.image => ImageContentSettings(),
          _ => const SizedBox.shrink(),
        },
      ],
    );
  }
}

class TextContentSettings extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Text',
          ),
          onChanged: (value) {
            ref.read(currentSlideProvider.notifier).updateSlideContent(
                  TextSlideContent(text: value) as SlideContent,
                );
          },
        ),
      ],
    );
  }
}

class ListContentSettings extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox.shrink();
  }
}

class ImageContentSettings extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox.shrink();
  }
}

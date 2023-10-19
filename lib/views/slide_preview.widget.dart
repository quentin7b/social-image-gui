import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/providers/slides.provider.dart';
import 'package:social_network_mate/views/slide_thumbnail.widget.dart';

class SlidePreview extends ConsumerWidget {
  const SlidePreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (currentSlide, currentKey) = ref.watch(currentSlideProvider);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(42),
          child: Center(
            child: Material(
              elevation: 6,
              child: RepaintBoundary(
                key: currentKey,
                child: SlideThumbnail(
                  slide: currentSlide,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              child: const Icon(Icons.delete_outline),
              onPressed: () {
                ref.read(slidesProvider.notifier).removeSlide(currentSlide.id);
              },
            ),
          ),
        ),
      ],
    );
  }
}

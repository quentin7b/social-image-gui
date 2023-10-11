import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/views/slide_thumbnail.widget.dart';
import 'package:social_network_mate/views/slides_preview.widget.dart';

class CarouselPreview extends ConsumerWidget {
  const CarouselPreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(42),
              child: Center(
                child: SlideThumbnail(slide: ref.watch(currentSlideProvider)),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
            child: SlidesPreview(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/providers/slides.provider.dart';
import 'package:social_network_mate/views/slide_thumbnail.widget.dart';

class SlidesPreview extends ConsumerStatefulWidget {
  const SlidesPreview({super.key});

  @override
  ConsumerState<SlidesPreview> createState() => SlidesPreviewState();
}

class SlidesPreviewState extends ConsumerState<SlidesPreview> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final slides = ref.watch(slidesProvider);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Scrollbar(
        controller: _scrollController,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        thumbVisibility: true,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ReorderableListView(
            proxyDecorator: proxyDecorator,
            scrollController: _scrollController,
            onReorder: (int oldIndex, int newIndex) {
              ref
                  .read(slidesProvider.notifier)
                  .reorderSlides(oldIndex, newIndex);
            },
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            children: [
              ...slides.map(
                (slide) => InkWell(
                  key: Key(slide.id),
                  onTap: () {
                    ref
                        .read(currentSlideProvider.notifier)
                        .selectSlide(slide.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SlideThumbnail(slide: slide),
                  ),
                ),
              ),
            ].toList(),
          ),
        ),
      ),
    );
  }

  Widget proxyDecorator(
    Widget child,
    int index,
    Animation<double> animation,
  ) {
    return Material(
      elevation: 6,
      color: Colors.transparent,
      child: ScaleTransition(
        scale: animation.drive(
          Tween<double>(begin: 1, end: 1.2).chain(
            CurveTween(curve: Curves.linear),
          ),
        ),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/providers/slides.provider.dart';
import 'package:social_network_mate/views/slide_thumbnail.widget.dart';

class BottomSlidesPreview extends ConsumerStatefulWidget {
  const BottomSlidesPreview({super.key});

  @override
  ConsumerState<BottomSlidesPreview> createState() => SlidesPreviewState();
}

class SlidesPreviewState extends ConsumerState<BottomSlidesPreview> {
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
    return Material(
      elevation: 6,
      child: Scrollbar(
        controller: _scrollController,
        scrollbarOrientation: ScrollbarOrientation.bottom,
        thumbVisibility: true,
        child: Padding(
          padding: const EdgeInsets.all(8),
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
                  key: Key(slide.$1.id),
                  onTap: () {
                    ref
                        .read(currentSlideProvider.notifier)
                        .selectSlide(slide.$1.id);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          ref.watch(currentSlideProvider).$1.id == slide.$1.id
                              ? Theme.of(context).primaryColor.withOpacity(0.2)
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SlideThumbnail(slide: slide.$1),
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

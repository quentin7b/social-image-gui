import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/models/slide.model.dart';

class SlideThumbnail extends ConsumerWidget {
  final Slide slide;

  const SlideThumbnail({
    super.key,
    required this.slide,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final minSize = width > height ? height : width;
        final slideWidth = slide.settings.size.dx;
        final slideHeight = slide.settings.size.dy;
        final slideMaxSize =
            slideWidth > slideHeight ? slideWidth : slideHeight;

        final ratio = (slideMaxSize > minSize) ? slideMaxSize / minSize : 1;
        final slideWidthRatio = slideWidth / ratio;
        final slideHeightRatio = slideHeight / ratio;
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          // Export this widget
          child: Container(
            padding: EdgeInsets.only(
              left: slide.settings.padding.left / ratio,
              top: slide.settings.padding.top / ratio,
              right: slide.settings.padding.right / ratio,
              bottom: slide.settings.padding.bottom / ratio,
            ),
            margin: EdgeInsets.only(
              left: slide.settings.margin.left / ratio,
              top: slide.settings.margin.top / ratio,
              right: slide.settings.margin.right / ratio,
              bottom: slide.settings.margin.bottom / ratio,
            ),
            decoration: BoxDecoration(
              color: slide.settings.backgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  slide.settings.borderRadius.topLeft.x / ratio,
                ),
              ),
            ),
            width: slideWidthRatio,
            height: slideHeightRatio,
            child: Stack(
              children: [
                if (slide.title.visible)
                  Align(
                    alignment: slide.title.alignment,
                    child: Container(
                      decoration: BoxDecoration(
                        color: slide.title.backgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            slide.title.borderRadius.topLeft.x / ratio,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: slide.title.padding.left / ratio,
                        top: slide.title.padding.top / ratio,
                        right: slide.title.padding.right / ratio,
                        bottom: slide.title.padding.bottom / ratio,
                      ),
                      margin: EdgeInsets.only(
                        left: slide.title.margin.left / ratio,
                        top: slide.title.margin.top / ratio,
                        right: slide.title.margin.right / ratio,
                        bottom: slide.title.margin.bottom / ratio,
                      ),
                      child: Text(
                        slide.title.title,
                        style: TextStyle(
                          color: slide.title.color,
                          fontSize: slide.title.fontSize / ratio,
                          fontWeight: slide.title.fontWeight,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

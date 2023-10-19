import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_network_mate/models/slide.model.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/models/slide_settings.model.dart';
import 'package:social_network_mate/models/slide_title.model.dart';
import 'package:social_network_mate/providers/slides.provider.dart';

part 'current_slide.provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentSlide extends _$CurrentSlide {
  int _index = 0;

  @override
  (Slide, GlobalKey) build() {
    final slides = ref.watch(slidesProvider);
    if (_index >= slides.length) {
      _index = slides.length - 1;
    }
    final currentSlide = slides[_index];
    return currentSlide;
  }

  void selectSlide(String id) {
    final slides = ref.read(slidesProvider);
    _index = slides.indexWhere((s) => s.$1.id == id);
    final currentSlide = slides[_index];
    state = currentSlide;
  }

  void updateSlideSettings(SlideSettings slideSettings) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].$1.copyWith(settings: slideSettings);
    ref.read(slidesProvider.notifier).updateSlide(_index, slide);
  }

  void updateSlideTitle(SlideTitle slideTitle) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].$1.copyWith(title: slideTitle);
    ref.read(slidesProvider.notifier).updateSlide(_index, slide);
  }

  void updateSlideContent(SlideContent content) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].$1;
    final contents = slide.contents;
    List<SlideContent> newContents = [];
    final contentIndex = contents.indexWhere((e) => e.id == content.id);
    if (contents.isEmpty) {
      newContents = [content];
    } else if (contentIndex == -1) {
      newContents = [...contents, content];
    } else {
      // Only update the content with the same id
      newContents.addAll(contents.sublist(0, contentIndex));
      newContents.add(content);
      // If there are more contents, add them
      if (contents.length > contentIndex + 1) {
        newContents.addAll(contents.sublist(contentIndex + 1));
      }
    }
    final newSlide = slide.copyWith(contents: newContents);
    ref.read(slidesProvider.notifier).updateSlide(_index, newSlide);
  }

  Future<Uint8List> exportToImage() async {
    try {
      final currentKey = state.$2;

      /// boundary widget by GlobalKey
      RenderRepaintBoundary? boundary = currentKey.currentContext
          ?.findRenderObject() as RenderRepaintBoundary?;
      if (boundary == null) {
        debugPrint('boundary is null');
        return Uint8List.fromList([]);
      }

      // Get size
      final renderedSize = boundary.size;
      final targetSize = state.$1.settings.size;

      // Compute pixel ratio
      final pixelRatio = targetSize.dx / renderedSize.width;

      /// convert boundary to image
      final image = await boundary.toImage(pixelRatio: pixelRatio);

      /// set ImageByteFormat
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      return byteData?.buffer.asUint8List() ?? Uint8List.fromList([]);
    } catch (e) {
      return Uint8List.fromList([]);
    }
  }
}

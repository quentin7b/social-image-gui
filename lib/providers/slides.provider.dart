import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_network_mate/models/slide.model.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:uuid/uuid.dart';

part 'slides.provider.g.dart';

@Riverpod(keepAlive: true)
class Slides extends _$Slides {
  @override
  List<(Slide, GlobalKey)> build() {
    return [
      (Slide(id: const Uuid().v4()), GlobalKey()),
      (Slide(id: const Uuid().v4()), GlobalKey()),
    ];
  }

  void setSlides(List<Slide> slides) {
    state = slides.map((e) => (e, GlobalKey())).toList();
    ref.read(currentSlideProvider.notifier).selectSlide(state.first.$1.id);
  }

  void addSlide() {
    final id = const Uuid().v4();
    state = [
      ...state,
      (Slide(id: id), GlobalKey()),
    ];
    ref.read(currentSlideProvider.notifier).selectSlide(id);
  }

  void removeSlide(String id) {
    state = state.where((s) => s.$1.id != id).toList();
    if (state.isEmpty) {
      addSlide();
    } else {
      ref.read(currentSlideProvider.notifier).selectSlide(state.last.$1.id);
    }
  }

  void reorderSlides(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final slides = state;
    final slide = slides.removeAt(oldIndex);
    slides.insert(newIndex, slide);
    state = [...slides];
  }

  void updateSlide(int index, Slide slide) {
    assert(index >= 0 && index < state.length);
    final slides = state;
    final keyForSlide = slides.firstWhere((s) => s.$1.id == slide.id).$2;
    slides[index] = (slide, keyForSlide);
    state = [...slides];
  }
}

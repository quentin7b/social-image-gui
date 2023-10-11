import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_network_mate/models/slide.model.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:uuid/uuid.dart';

part 'slides.provider.g.dart';

@Riverpod(keepAlive: true)
class Slides extends _$Slides {
  @override
  List<Slide> build() {
    return [
      Slide(id: const Uuid().v4()),
      Slide(id: const Uuid().v4()),
      Slide(id: const Uuid().v4()),
      Slide(id: const Uuid().v4()),
      Slide(id: const Uuid().v4()),
      Slide(id: const Uuid().v4()),
    ];
  }

  void addSlide() {
    final id = const Uuid().v4();
    state = [
      ...state,
      Slide(id: id),
    ];
    ref.read(currentSlideProvider.notifier).selectSlide(id);
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

  void updateSlide(int index, Slide s) {
    assert(index >= 0 && index < state.length);
    final slides = state;
    slides[index] = s;
    state = [...slides];
  }
}

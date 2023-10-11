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
  Slide build() {
    final slides = ref.watch(slidesProvider);
    return slides[_index];
  }

  void selectSlide(String id) {
    final slides = ref.read(slidesProvider);
    _index = slides.indexWhere((s) => s.id == id);
    state = slides[_index];
  }

  void updateSlideSettings(SlideSettings slideSettings) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].copyWith(settings: slideSettings);
    ref.read(slidesProvider.notifier).updateSlide(_index, slide);
  }

  void updateSlideTitle(SlideTitle slideTitle) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].copyWith(title: slideTitle);
    ref.read(slidesProvider.notifier).updateSlide(_index, slide);
  }

  void updateSlideContent(SlideContent content) {
    final slides = ref.read(slidesProvider);
    final slide = slides[_index].copyWith(content: content);
    ref.read(slidesProvider.notifier).updateSlide(_index, slide);
  }
}

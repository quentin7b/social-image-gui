import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.provider.g.dart';

enum ThemeValue {
  light,
  dark,
  os,
}

@Riverpod(keepAlive: true)
class Theme extends _$Theme {
  @override
  ThemeValue build() {
    return ThemeValue.light;
  }

  void setTheme(ThemeValue theme) {
    state = theme;
    // TODO Save preferences
  }
}

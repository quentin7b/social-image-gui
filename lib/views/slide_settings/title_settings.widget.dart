import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/views/widgets/alignment_field.widget.dart';
import 'package:social_network_mate/views/widgets/color_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_text_field.widget.dart';

class TitleSettings extends ConsumerWidget {
  const TitleSettings({super.key});

  void _updateAlignment(
    WidgetRef ref, {
    required Alignment alignment,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            alignment: alignment,
          ),
        );
  }

  void _updatePadding(
    WidgetRef ref, {
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            padding: EdgeInsets.all(left ?? currentSlideTitle.padding.left),
          ),
        );
  }

  void _updateMargin(
    WidgetRef ref, {
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            margin: EdgeInsets.all(left ?? currentSlideTitle.margin.left),
          ),
        );
  }

  void _updateBackgroundColor(
    WidgetRef ref, {
    Color? color,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            backgroundColor: color ?? currentSlideTitle.backgroundColor,
          ),
        );
  }

  void _updateForegroundColor(
    WidgetRef ref, {
    Color? color,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            color: color ?? currentSlideTitle.color,
          ),
        );
  }

  _updateRadius(
    WidgetRef ref, {
    double? topLeft,
    double? topRight,
    double? bottomRight,
    double? bottomLeft,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            borderRadius: currentSlideTitle.borderRadius.copyWith(
              topLeft: topLeft != null
                  ? Radius.circular(topLeft)
                  : currentSlideTitle.borderRadius.topLeft,
              topRight: topRight != null
                  ? Radius.circular(topRight)
                  : currentSlideTitle.borderRadius.topRight,
              bottomRight: bottomRight != null
                  ? Radius.circular(bottomRight)
                  : currentSlideTitle.borderRadius.bottomRight,
              bottomLeft: bottomLeft != null
                  ? Radius.circular(bottomLeft)
                  : currentSlideTitle.borderRadius.bottomLeft,
            ),
          ),
        );
  }

  void _updateFontSize(
    WidgetRef ref, {
    required int size,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).$1.title;
    ref.read(currentSlideProvider.notifier).updateSlideTitle(
          currentSlideTitle.copyWith(
            fontSize: size.toDouble(),
          ),
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSlideTitle = ref.watch(
      currentSlideProvider.select(
        (s) => s.$1.title,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Switch(
          value: currentSlideTitle.visible,
          onChanged: (hasTitle) {
            ref.read(currentSlideProvider.notifier).updateSlideTitle(
                  currentSlideTitle.copyWith(visible: hasTitle),
                );
          },
        ),
        CustomTextField(
          value: currentSlideTitle.title,
          onChanged: (title) {
            ref.read(currentSlideProvider.notifier).updateSlideTitle(
                  currentSlideTitle.copyWith(title: title),
                );
          },
        ),
        CustomField(
          label: 'Font size',
          onChanged: (s) => _updateFontSize(
            ref,
            size: s,
          ),
          value: currentSlideTitle.fontSize.toInt(),
        ),
        const Divider(),
        CustomField(
          label: 'Padding',
          onChanged: (p) => _updatePadding(
            ref,
            left: p.toDouble(),
            top: p.toDouble(),
            right: p.toDouble(),
            bottom: p.toDouble(),
          ),
          value: currentSlideTitle.padding.left.toInt(),
        ),
        CustomField(
          label: 'Margin',
          onChanged: (p) => _updateMargin(
            ref,
            left: p.toDouble(),
            top: p.toDouble(),
            right: p.toDouble(),
            bottom: p.toDouble(),
          ),
          value: currentSlideTitle.margin.left.toInt(),
        ),
        CustomField(
          label: 'Radius',
          onChanged: (r) => _updateRadius(
            ref,
            topLeft: r.toDouble(),
            topRight: r.toDouble(),
            bottomRight: r.toDouble(),
            bottomLeft: r.toDouble(),
          ),
          value: currentSlideTitle.borderRadius.topLeft.x.toInt(),
        ),
        const Divider(),
        ColorField(
          label: 'Color',
          onChanged: (c) => _updateForegroundColor(
            ref,
            color: c,
          ),
          value: currentSlideTitle.color,
        ),
        ColorField(
          label: 'Background Color',
          onChanged: (c) => _updateBackgroundColor(
            ref,
            color: c,
          ),
          value: currentSlideTitle.backgroundColor,
        ),
        const Divider(),
        AlignmentField(
          alignment: currentSlideTitle.alignment,
          onChanged: (a) {
            _updateAlignment(ref, alignment: a);
          },
        ),
      ]
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: e,
            ),
          )
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/views/widgets/color_field.widget.dart';
import 'package:social_network_mate/views/widgets/int_field.widget.dart';

class TitleSettings extends ConsumerWidget {
  const TitleSettings({super.key});

  void _updateAlignment(
    WidgetRef ref, {
    required Alignment alignment,
  }) {
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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
    final currentSlideTitle = ref.read(currentSlideProvider).title;
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSlideTitle = ref.watch(
      currentSlideProvider.select(
        (s) => s.title,
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
        TextField(
          keyboardType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[],
          controller: TextEditingController(
            text: currentSlideTitle.title,
          )..selection = TextSelection.collapsed(
              offset: currentSlideTitle.title.length,
            ),
          onChanged: (title) {
            ref.read(currentSlideProvider.notifier).updateSlideTitle(
                  currentSlideTitle.copyWith(title: title),
                );
          },
        ),
        const Divider(),
        IntField(
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
        IntField(
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
        IntField(
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
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: [
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.topLeft,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.topCenter,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.topRight,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            //
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.centerLeft,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.center,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.centerRight,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            //
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.bottomLeft,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.bottomCenter,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
            IconButton(
              onPressed: () => _updateAlignment(
                ref,
                alignment: Alignment.bottomRight,
              ),
              icon: const Icon(Icons.align_horizontal_center),
            ),
          ],
        ),
      ],
    );
  }
}

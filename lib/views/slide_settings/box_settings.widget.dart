import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/views/widgets/color_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';

class BoxSettings extends ConsumerWidget {
  const BoxSettings({super.key});

  void _updateBackgroundImage(WidgetRef ref, {String? imageUrl}) {
    final currentSlideSettings = ref.read(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    ref
        .read(
          currentSlideProvider.notifier,
        )
        .updateSlideSettings(
          currentSlideSettings.copyWith(
            backgroundImageUrl:
                imageUrl ?? currentSlideSettings.backgroundImageUrl,
          ),
        );
  }

  void _updateBackgroundColor(
    WidgetRef ref, {
    Color? color,
  }) {
    final currentSlideSettings = ref.read(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    ref
        .read(
          currentSlideProvider.notifier,
        )
        .updateSlideSettings(
          currentSlideSettings.copyWith(
            backgroundColor: color ?? currentSlideSettings.backgroundColor,
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
    final currentSlideSettings = ref.read(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    ref
        .read(
          currentSlideProvider.notifier,
        )
        .updateSlideSettings(
          currentSlideSettings.copyWith(
            margin: currentSlideSettings.margin.copyWith(
              left: left ?? currentSlideSettings.margin.left,
              top: top ?? currentSlideSettings.margin.top,
              right: right ?? currentSlideSettings.margin.right,
              bottom: bottom ?? currentSlideSettings.margin.bottom,
            ),
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
    final currentSlideSettings = ref.read(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    ref
        .read(
          currentSlideProvider.notifier,
        )
        .updateSlideSettings(
          currentSlideSettings.copyWith(
            padding: currentSlideSettings.padding.copyWith(
              left: left ?? currentSlideSettings.padding.left,
              top: top ?? currentSlideSettings.padding.top,
              right: right ?? currentSlideSettings.padding.right,
              bottom: bottom ?? currentSlideSettings.padding.bottom,
            ),
          ),
        );
  }

  void _updateRadius(
    WidgetRef ref, {
    double? topLeft,
    double? topRight,
    double? bottomRight,
    double? bottomLeft,
  }) {
    final currentSlideSettings = ref.read(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    ref
        .read(
          currentSlideProvider.notifier,
        )
        .updateSlideSettings(
          currentSlideSettings.copyWith(
            borderRadius: currentSlideSettings.borderRadius.copyWith(
              topLeft: topLeft != null
                  ? Radius.circular(topLeft)
                  : currentSlideSettings.borderRadius.topLeft,
              topRight: topRight != null
                  ? Radius.circular(topRight)
                  : currentSlideSettings.borderRadius.topRight,
              bottomRight: bottomRight != null
                  ? Radius.circular(bottomRight)
                  : currentSlideSettings.borderRadius.bottomRight,
              bottomLeft: bottomLeft != null
                  ? Radius.circular(bottomLeft)
                  : currentSlideSettings.borderRadius.bottomLeft,
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSlideSettings = ref.watch(
      currentSlideProvider.select(
        (s) => s.$1.settings,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomField(
          label: 'Margin',
          onChanged: (m) => _updateMargin(
            ref,
            left: m.toDouble(),
            top: m.toDouble(),
            right: m.toDouble(),
            bottom: m.toDouble(),
          ),
          value: currentSlideSettings.margin.left.toInt(),
        ),
        CustomField(
          label: 'Padding',
          onChanged: (p) => _updatePadding(
            ref,
            left: p.toDouble(),
            top: p.toDouble(),
            right: p.toDouble(),
            bottom: p.toDouble(),
          ),
          value: currentSlideSettings.padding.left.toInt(),
        ),
        const Divider(),
        CustomField(
          label: 'Radius',
          onChanged: (r) => _updateRadius(
            ref,
            topLeft: r.toDouble(),
            topRight: r.toDouble(),
            bottomRight: r.toDouble(),
            bottomLeft: r.toDouble(),
          ),
          value: currentSlideSettings.borderRadius.topLeft.x.toInt(),
        ),
        const Divider(),
        ColorField(
          label: 'Background Color',
          onChanged: (c) => _updateBackgroundColor(
            ref,
            color: c,
          ),
          value: currentSlideSettings.backgroundColor,
        ),
        CustomField(
          label: 'Background Image',
          value: currentSlideSettings.backgroundImageUrl ?? '',
          onChanged: (url) => _updateBackgroundImage(
            ref,
            imageUrl: url,
          ),
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

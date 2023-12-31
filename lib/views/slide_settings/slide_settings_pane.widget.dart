import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/views/slide_settings/box_settings.widget.dart';
import 'package:social_network_mate/views/slide_settings/content_settings.widget.dart';
import 'package:social_network_mate/views/slide_settings/title_settings.widget.dart';

final StateProvider<List<int>> _expandedItemProvider =
    StateProvider((ref) => [0]);

class SlideSettingsPane extends ConsumerWidget {
  const SlideSettingsPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expandedIndex = ref.watch(_expandedItemProvider);
    return Container(
      margin: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 2,
          materialGapSize: 2,
          expansionCallback: (int index, bool isExpanded) {
            final expandedList = ref.read(_expandedItemProvider);
            ref.read(_expandedItemProvider.notifier).state = isExpanded
                ? [...expandedList, index]
                : [...expandedList..remove(index)];
          },
          children: [
            ('Boxing', const BoxSettings()),
            ('Title', const TitleSettings()),
            ('Content', const ContentSettings()),
          ]
              .indexed
              .map(
                (me) => ExpansionPanel(
                  headerBuilder: (context, isExpanded) => Center(
                    child: Text(me.$2.$1),
                  ),
                  isExpanded: expandedIndex.contains(me.$1),
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: me.$2.$2,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class SlideSettingsPaneSection extends ConsumerWidget {
  final String title;
  final Widget Function(BuildContext context, WidgetRef ref) builder;

  SlideSettingsPaneSection({
    super.key,
    required this.title,
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.grey[600],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          builder(context, ref),
        ],
      ),
    );
  }
}

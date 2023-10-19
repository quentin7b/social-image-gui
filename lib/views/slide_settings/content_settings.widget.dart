import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/providers/current_slide.provider.dart';
import 'package:social_network_mate/views/widgets/alignment_field.widget.dart';
import 'package:social_network_mate/views/widgets/color_field.widget.dart';
import 'package:social_network_mate/views/widgets/custom_field.widget.dart';
import 'package:social_network_mate/views/widgets/image_content_settings.widget.dart';
import 'package:social_network_mate/views/widgets/list_content_settings.widget.dart';
import 'package:social_network_mate/views/widgets/text_content_settings.widget.dart';
import 'package:uuid/uuid.dart';

final StateProvider<List<int>> _expandedItemProvider =
    StateProvider((ref) => []);

class ContentSettings extends ConsumerStatefulWidget {
  const ContentSettings({super.key});

  @override
  ConsumerState<ContentSettings> createState() => ContentSettingsState();
}

class ContentSettingsState extends ConsumerState<ContentSettings> {
  void _updateSlideContent({
    required SlideContent content,
  }) {
    ref.read(currentSlideProvider.notifier).updateSlideContent(
          content,
        );
  }

  @override
  Widget build(BuildContext context) {
    final contents = ref.watch(
      currentSlideProvider.select(
        (s) => s.$1.contents,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            final expandedList = ref.read(_expandedItemProvider);
            ref.read(_expandedItemProvider.notifier).state = isExpanded
                ? [...expandedList, index]
                : [...expandedList..remove(index)];
          },
          children: contents.indexed.map(
            (ci) {
              final index = ci.$1;
              final content = ci.$2;
              return ExpansionPanel(
                headerBuilder: (ctx, isExpanded) {
                  return Center(
                    child: Text(content.type.toString()),
                  );
                },
                isExpanded: ref.watch(_expandedItemProvider).contains(index),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.text_fields_outlined),
                            onPressed: () {
                              _updateSlideContent(
                                content: TextSlideContent(
                                  id: const Uuid().v4(),
                                  text: '',
                                  fontSize: 48,
                                ) as SlideContent,
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.list_outlined),
                            onPressed: () {
                              _updateSlideContent(
                                content: ListSlideContent(
                                  id: const Uuid().v4(),
                                  items: [],
                                  fontSize: 18,
                                ) as SlideContent,
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.image_outlined),
                            onPressed: () {
                              _updateSlideContent(
                                content: ImageSlideContent(
                                  id: const Uuid().v4(),
                                  imageUrl: '',
                                ) as SlideContent,
                              );
                            },
                          ),
                        ],
                      ),
                      const Divider(),
                      switch (content.type) {
                        SlideContentType.text => TextContentSettings(
                            content: content as TextSlideContent,
                            onChanged: (c) {
                              ref
                                  .read(currentSlideProvider.notifier)
                                  .updateSlideContent(c as SlideContent);
                            },
                          ),
                        SlideContentType.list => ListContentSettings(
                            content: content as ListSlideContent,
                            onChanged: (c) {
                              ref
                                  .read(currentSlideProvider.notifier)
                                  .updateSlideContent(c as SlideContent);
                            },
                          ),
                        SlideContentType.image => ImageContentSettings(
                            content: content as ImageSlideContent,
                            onChanged: (c) {
                              ref
                                  .read(currentSlideProvider.notifier)
                                  .updateSlideContent(c as SlideContent);
                            },
                          ),
                        _ => const SizedBox.shrink(),
                      },
                      const Divider(),
                      CustomField(
                        label: 'Padding',
                        onChanged: (p) => _updateSlideContent(
                          content: content.copyWithoutContent(
                            padding: EdgeInsets.all(p.toDouble()),
                          ),
                        ),
                        value: content.padding.left.toInt(),
                      ),
                      CustomField(
                        label: 'Margin',
                        onChanged: (m) => _updateSlideContent(
                          content: content.copyWithoutContent(
                            margin: EdgeInsets.all(m.toDouble()),
                          ),
                        ),
                        value: content.margin.left.toInt(),
                      ),
                      CustomField(
                        label: 'Radius',
                        onChanged: (r) => _updateSlideContent(
                          content: content.copyWithoutContent(
                            borderRadius: BorderRadius.circular(r.toDouble()),
                          ),
                        ),
                        value: content.borderRadius.topLeft.x.toInt(),
                      ),
                      CustomField(
                        label: 'Rotation',
                        onChanged: (r) => _updateSlideContent(
                          content: content.copyWithoutContent(
                            rotationDegrees: r,
                          ),
                        ),
                        value: content.rotationDegrees,
                      ),
                      const Divider(),
                      ColorField(
                        label: 'Background Color',
                        onChanged: (c) => _updateSlideContent(
                          content: content.copyWithoutContent(
                            backgroundColor: c,
                          ),
                        ),
                        value: content.backgroundColor,
                      ),
                      const Divider(),
                      AlignmentField(
                        onChanged: (a) {
                          _updateSlideContent(
                            content: content.copyWithoutContent(
                              alignment: a,
                            ),
                          );
                        },
                        alignment: content.alignment,
                      ),
                    ]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: e,
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            },
          ).toList(),
        ),
        const SizedBox(
          height: 8,
        ),
        ElevatedButton(
          onPressed: () {
            _updateSlideContent(
              content: TextSlideContent(
                id: const Uuid().v4(),
                text: '',
                fontSize: 48,
              ) as SlideContent,
            );
          },
          child: const Text('Add content'),
        ),
      ],
    );
  }
}

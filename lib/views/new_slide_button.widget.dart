import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewSlideButton extends ConsumerWidget {
  final VoidCallback onNewSlide;

  const NewSlideButton({
    super.key,
    required this.onNewSlide,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return InkWell(
          onTap: onNewSlide,
          child: Container(
            width: constraints.maxHeight,
            height: constraints.maxHeight,
            color: Colors.blue.withOpacity(.75),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                semanticLabel: 'Add a new slide',
              ),
            ),
          ),
        );
      },
    );
  }
}

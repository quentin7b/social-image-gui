import 'package:flutter/material.dart';

class AlignmentField extends StatelessWidget {
  final Alignment alignment;
  final ValueChanged<Alignment> onChanged;

  const AlignmentField({
    super.key,
    required this.alignment,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: [
        IconButton(
          onPressed: () => onChanged(Alignment.topLeft),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.topCenter),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.topRight),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        //
        IconButton(
          onPressed: () => onChanged(Alignment.centerLeft),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.center),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.centerRight),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        //
        IconButton(
          onPressed: () => onChanged(Alignment.bottomLeft),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.bottomCenter),
          icon: const Icon(Icons.align_horizontal_center),
        ),
        IconButton(
          onPressed: () => onChanged(Alignment.bottomRight),
          icon: const Icon(Icons.align_horizontal_center),
        ),
      ],
    );
  }
}

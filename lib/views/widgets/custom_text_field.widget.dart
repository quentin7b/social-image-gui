import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField<T> extends StatefulWidget {
  final T value;
  final ValueChanged<T> onChanged;

  CustomTextField({
    super.key,
    required this.value,
    required this.onChanged,
  }) {
    assert(
      T == int || T == double || T == String,
    );
  }

  @override
  State<StatefulWidget> createState() => CustomTextFieldState<T>();
}

class CustomTextFieldState<T> extends State<CustomTextField<T>> {
  late TextEditingController _controller;
  late bool isNumber;

  @override
  void initState() {
    super.initState();
    isNumber = widget.value is int || widget.value is double;
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future(() {
      _controller.text = widget.value.toString();
      _controller.selection = TextSelection.collapsed(
        offset: _controller.text.length,
      );
    });
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(
              decimal: false,
              signed: false,
            )
          : TextInputType.text,
      inputFormatters: <TextInputFormatter>[
        if (isNumber) FilteringTextInputFormatter.digitsOnly,
      ],
      controller: _controller,
      onChanged: (value) {
        switch (T) {
          case String:
            widget.onChanged(value as T);
          case int:
            widget.onChanged((int.tryParse(value) ?? 0) as T);
          case double:
            widget.onChanged((double.tryParse(value) ?? 0) as T);
        }
      },
    );
  }
}

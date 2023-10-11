import 'package:flutter/material.dart';

class CustomWidgetSize extends StatefulWidget {
  const CustomWidgetSize(
      {super.key, required this.widgetSize, required this.child});

  final ValueChanged<Size> widgetSize;
  final Widget child;

  @override
  State<CustomWidgetSize> createState() => _CustomWidgetSizeState();
}

class _CustomWidgetSizeState extends State<CustomWidgetSize> {
  @override
  void initState() {
    super.initState();
    _widgetResize();
  }

  _widgetResize() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.size is Size) {
        widget.widgetSize(context.size!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

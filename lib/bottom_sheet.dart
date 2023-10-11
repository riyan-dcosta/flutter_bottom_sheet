import 'package:flutter/material.dart';
import 'package:flutter_bottom_sheet/widget_size.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key, required this.child});

  final Widget child;

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final dragController = DraggableScrollableController();
  double maxDragSize = 0.0;
  late final childHeight;

  @override
  void initState() {
    super.initState();
    listenToDrag();
  }

  getChildSize(Size value) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final mediaQueryData = MediaQuery.of(context);
      // final insets = mediaQueryData
      final height = mediaQueryData.size.height;

      print("height $height");
      setState(() {
        print("getChildSize : $value ${value.height} ${value.width}");
      });
    });
  }

  listenToDrag() {
    dragController.addListener(() {
      print("Size ${dragController.size}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.2,
      maxChildSize: 0.5,
      initialChildSize: 0.2,
      controller: dragController,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: CustomWidgetSize(
            widgetSize: getChildSize,
            child: widget.child,
          ),
        );
      },
    );
  }
}

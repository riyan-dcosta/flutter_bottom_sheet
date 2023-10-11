import 'package:flutter/material.dart';
import 'package:flutter_bottom_sheet/bottom_sheet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Text("Hello"),
                ),

              ],
            ),
            CustomBottomSheet(
              child: Container(
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Hello")),
                    ElevatedButton(onPressed: (){}, child: Text("Hello")),
                    ElevatedButton(onPressed: (){}, child: Text("Hello")),
                    ElevatedButton(onPressed: (){}, child: Text("Hello")),
                  ],
                ),
              ),
            ),
          ],
        ),
        // bottomSheet: ,
      ),
    );
  }
}

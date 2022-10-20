import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageSetter extends StatefulWidget {
  final index;
  const ImageSetter({super.key, this.index});

  @override
  State<ImageSetter> createState() => _ImageSetterState();
}

class _ImageSetterState extends State<ImageSetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("set your image"),
        ),
        body: Stack(
          children: [],
        ));
  }
}

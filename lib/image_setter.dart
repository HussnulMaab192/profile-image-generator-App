import 'package:flutter/material.dart';

class ImageSetter extends StatefulWidget {
  final frame;
  final image;
  const ImageSetter({super.key, required this.frame, required this.image});

  @override
  State<ImageSetter> createState() => _ImageSetterState();
}

class _ImageSetterState extends State<ImageSetter> {
  List subframe = [
    "assets/pics/frame1.jpg",
    "assets/pics/frame2.jpg",
    "assets/pics/frame4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("set your image"),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.frame),
                ),
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 160,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 42,
              child: ClipOval(
                  child: Image.file(
                widget.image,
              )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: subframe.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            subframe[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

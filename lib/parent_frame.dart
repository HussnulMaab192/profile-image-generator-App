import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ParentFrame extends StatefulWidget {
  final String title;
  final String size;
  ParentFrame({super.key, required this.size, required this.title});

  @override
  State<ParentFrame> createState() => _ParentFrameState();
}

class _ParentFrameState extends State<ParentFrame> {
  List frames = [
    "assets/pics/frame1.jpg",
    "assets/pics/frame2.jpg",
    "assets/pics/frame4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick the frame for  ${widget.title}"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: frames.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                    image: AssetImage(
                      frames[index],
                    ),
                    fit: BoxFit.cover),
              ),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () async {
                        final ImagePicker _picker = ImagePicker();
                        final XFile? resp = await _picker.pickImage(
                            source: ImageSource.gallery);
                        if (resp != null) {
                          print(resp.path);
                        }
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.red,
                      ))),
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
        ),
      ),
    );
  }
}

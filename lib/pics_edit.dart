import 'package:face_feature_detection/parent_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PicsEdit extends StatefulWidget {
  const PicsEdit({super.key});

  @override
  State<PicsEdit> createState() => _PicsEditState();
}

class _PicsEditState extends State<PicsEdit> {
  var selectedIndex = 0;
  List plateform = [
    {
      "title": "FaceBook",
      "size": "170 x 170",
    },
    {
      "title": "Instagram",
      "size": "320 x 320",
    },
    {
      "title": "LinkedIn",
      "size": "400 x 400 ",
    },
    {
      "title": "WhatsApp",
      "size": "500 x 500",
    },
    {
      "title": "TikTok",
      "size": "200 x 200",
    },
    {
      "title": "Telegram",
      "size": "512 x 512",
    },
    {
      "title": "Printest",
      "size": "800 x 450",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Choose a plateform"),
        ),
        body: GridView.builder(
          shrinkWrap: true,
          itemCount: plateform.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(ParentFrame(
                  title: plateform[index]["title"],
                  size: plateform[index]["size"],
                ));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    Text(plateform[index]["title"]),
                    Text(
                      plateform[index]["size"] + " pixels",
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
          ),
        ));
  }
}

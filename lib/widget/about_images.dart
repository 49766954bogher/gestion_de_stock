import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AboutImage extends StatefulWidget {
  const AboutImage({super.key});

  @override
  State<AboutImage> createState() => _AboutImageState();
}

class _AboutImageState extends State<AboutImage> {
  var imageFile;
  var imag = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black),
          borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        child: (imageFile == null)
            ? const Icon(Icons.image_not_supported)
            : Image.file(
                imageFile,
                fit: BoxFit.cover,
              ),
        onTap: () {
          showModalBottomSheet(
              isDismissible: true,
              context: context,
              builder: (BuildContext context) {
                return myPadding();
              });
        },
      ),
    );
  }

  Widget myPadding() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 0),
      child: SizedBox(
        height: 150,
        child: Column(children: [
          const Divider(
            thickness: 5.0,
            color: Colors.black45,
            endIndent: 130,
            indent: 130,
          ),
          const Text(
            textAlign: TextAlign.center,
            "Choisir la provenance de l'image",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.photo,
                    size: 25,
                  ),
                  onPressed: () {
                    getImageFromFile(ImageSource.gallery);
                  }),
              const Text(
                "Galerie",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.camera,
                    size: 25,
                  ),
                  onPressed: () {
                    getImageFromFile(ImageSource.camera);
                  }),
              const Text(
                "Camera ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Future getImageFromFile(ImageSource source) async {
    var chosseFile = await imag.pickImage(source: source);

    if (chosseFile == null) {
      const Text("ImgeError");
    } else {
      setState(() {
        imageFile = File(chosseFile.path);
      });
    }
  }
}

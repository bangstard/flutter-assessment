import 'dart:io';

import 'package:contact_app/src/common_widgets/custom_button.dart';
import 'package:contact_app/src/common_widgets/custom_icons.dart';
import 'package:contact_app/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class EditProfileScreen extends StatefulWidget {
  // final Contact contact;
  // final Function(Contact) callback;
  // const EditProfile({super.key, required this.contact, required this.callback});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // late Contact newContact = widget.contact;

  @override
  void dispose() {
    super.dispose();
    // widget.callback(newContact);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            gapH48,
            GestureDetector(
              onTap: () {
                captureAndSaveImage(id: 1);
              },
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 0,
                        ),
                      ),
                      child: const FittedBox(
                        // child: newContact.path != null
                        //     ? CircleAvatar(
                        //         radius: 60.0,
                        //         backgroundImage: FileImage(File(newContact.path!)),
                        //         backgroundColor: Colors.transparent)
                        //     : CircleAvatar(
                        //         radius: 60.0,
                        //         backgroundImage:
                        //             CachedNetworkImageProvider(widget.contact.avatar),
                        //         backgroundColor: Colors.transparent),
                        child: CircleAvatar(
                            radius: 60.0,
                            backgroundImage:
                                AssetImage('assets/images/face.png'),
                            backgroundColor: Colors.transparent),
                      ),
                    ),
                    Positioned(
                      right: 13,
                      bottom: 4,
                      child: CustomButton(
                          margin: EdgeInsets.zero,
                          isShadow: false,
                          padding: const EdgeInsets.all(5),
                          borderRadius: 200,
                          color: Theme.of(context).primaryColorDark,
                          child: const Icon(MyFlutterApp.smallPencil,
                              color: Colors.white, size: 12)),
                    )
                  ],
                ),
              ),
            ),
            gapH16,
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          'First Name',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'name',
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20, right: 20),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                        ),
                      ),
                      gapH20,
                      Container(
                        margin: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'lastName',
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20, right: 20),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                        ),
                      ),
                      gapH20,
                      Container(
                        margin: const EdgeInsets.only(left: 20, bottom: 5),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'email',
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20, right: 20),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColorDark),
                          ),
                        ),
                      ),
                      gapH32,
                      CustomButton(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: 30,
                        isShadow: false,
                        padding: const EdgeInsets.all(15),
                        margin: EdgeInsets.zero,
                        onTap: () {},
                        child: const Text('Done',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      )
                    ])),
          ],
        ),
      ),
    );
  }

  void captureAndSaveImage({required int id}) async {
    try {
      final XFile? image =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        final Directory directory = await getApplicationDocumentsDirectory();
        final String directoryPath = '${directory.path}/$id.png';
        await image.saveTo(directoryPath);
        var path = directoryPath;
        setState(() {});
      }
    } catch (e) {
      debugPrint('ERROR captureAndSaveImage() : $e');
    }
  }
}

import 'package:contact_app/src/constants/app_sizes.dart';
import 'package:contact_app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    context.goNamed(AppRoute.editProfile.name);
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontWeight: FontWeight.w600,
                        fontSize: Sizes.p16),
                  ),
                ),
                gapW12
              ],
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).primaryColorDark,
                        width: 2,
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
                          backgroundImage: AssetImage('assets/images/face.png'),
                          backgroundColor: Colors.transparent),
                    ),
                  ),
                  // if (newContact.isFavorite) ...[
                  //   Positioned(
                  //       right: 10,
                  //       bottom: 0,
                  //       child: Icon(Icons.star,
                  //           color: Colors.yellow.shade700, size: 30))
                  // ]
                ],
              ),
            ),
            gapH16,
            const Text('darlene',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600)),
            gapH16,
            Container(
              color: Theme.of(context).primaryColor,
              height: 80,
              child: Column(
                children: [
                  gapH4,
                  Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 5,
                        child: Container(
                          color: Theme.of(context).primaryColor,
                          height: 25,
                          width: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 30,
                          width: 40,
                          child: Image.asset('assets/images/email.png'),
                        ),
                      ),
                    ],
                  ),
                  gapH4,
                  const Text('@gmail.com', style: TextStyle(fontSize: 13))
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.06,
                  left: MediaQuery.of(context).size.width * 0.06),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Send Email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

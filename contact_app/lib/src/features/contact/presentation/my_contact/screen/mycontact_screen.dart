import 'package:contact_app/src/common_widgets/alert_dialogs.dart';
import 'package:contact_app/src/common_widgets/custom_icons.dart';
import 'package:contact_app/src/constants/app_sizes.dart';
import 'package:contact_app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class MyContactScreen extends StatefulWidget {
  const MyContactScreen({super.key});

  @override
  State<MyContactScreen> createState() => _MyContactScreenState();
}

class _MyContactScreenState extends State<MyContactScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          Slidable(
            endActionPane: ActionPane(motion: const ScrollMotion(), children: [
              SlidableAction(
                  autoClose: true,
                  icon: MyFlutterApp.bigPencil,
                  foregroundColor: Colors.yellow.shade700,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  onPressed: (_) {
                    context.goNamed(AppRoute.editProfile.name);
                  }),
              VerticalDivider(
                endIndent: Sizes.p8,
                indent: Sizes.p8,
                width: 0,
                color: Theme.of(context).primaryColorDark,
              ),
              SlidableAction(
                autoClose: true,
                icon: MyFlutterApp.trash,
                foregroundColor: Colors.red,
                backgroundColor: Theme.of(context).primaryColorLight,
                onPressed: (_) => dialogDeleteBuilder(context),
              )
            ]),
            child: InkWell(
              onTap: () {
                context.goNamed(AppRoute.profile.name);
              },
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/face.png'),
                ),
                title: const Text('Darlene Steward'),
                subtitle: const Text('darlene.steward7@gmail.com'),
                trailing: IconButton(
                  icon: Image.asset('assets/images/Frame.png'),
                  onPressed: () {
                    // todo send email
                    print('listtile');
                  },
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/images/face.png'),
            ),
            title: const Text('Darlene Steward'),
            subtitle: const Text('darlene.steward7@gmail.com'),
            trailing: IconButton(
              icon: Image.asset('assets/images/Frame.png'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

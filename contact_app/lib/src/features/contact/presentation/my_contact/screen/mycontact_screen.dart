import 'package:contact_app/src/common_widgets/custom_icons.dart';
import 'package:contact_app/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyContactScreen extends StatelessWidget {
  const MyContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Slidable(
            endActionPane: ActionPane(motion: const ScrollMotion(), children: [
              SlidableAction(
                  icon: MyFlutterApp.group_7,
                  foregroundColor: Colors.yellow.shade700,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  onPressed: (_) {}),
              const VerticalDivider(
                endIndent: Sizes.p8,
                indent: Sizes.p8,
                width: 0,
                color: Colors.grey,
              ),
              SlidableAction(
                icon: MyFlutterApp.trash,
                foregroundColor: Colors.red,
                backgroundColor: Theme.of(context).primaryColorLight,
                onPressed: (_) {},
              )
            ]),
            child: ListTile(
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

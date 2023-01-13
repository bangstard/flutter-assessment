import 'package:contact_app/src/constants/app_sizes.dart';
import 'package:contact_app/src/features/contact/presentation/favorite/screen/favorite_screen.dart';
import 'package:contact_app/src/features/contact/presentation/my_contact/screen/mycontact_screen.dart';
import 'package:flutter/material.dart';

import 'package:contact_app/src/common_widgets/search_text_field.dart';

/// The two sub-routes that are presented as part of the home screen.
enum HomeScreenSubRoute { myContact, favorite }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _controller;

  var _subRoute = HomeScreenSubRoute.myContact;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _subRoute.index);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text('My Contacts'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset('assets/images/Union.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SearchTextField(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(Sizes.p32),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: Card(
                          color: _subRoute == HomeScreenSubRoute.myContact
                              ? Theme.of(context).primaryColorDark
                              : null,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('All'),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _subRoute = HomeScreenSubRoute.myContact;
                            // perform a nice scroll animation to reveal the next page
                            _controller.animateToPage(
                              _subRoute.index,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                      ),
                      GestureDetector(
                        child: Card(
                          color: _subRoute == HomeScreenSubRoute.favorite
                              ? Theme.of(context).primaryColorDark
                              : null,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Favorite'),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _subRoute = HomeScreenSubRoute.favorite;
                            // perform a nice scroll animation to reveal the next page
                            _controller.animateToPage(
                              _subRoute.index,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                  gapH24,
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _controller,
                      children: const [
                        MyContactScreen(),
                        FavoriteScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        "مرحبا بكم في متجر اللالكترونيات ",
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        )
      ],
      backgroundColor: kPrimaryColor,
    );
  }
}

// }

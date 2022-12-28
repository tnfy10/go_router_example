import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/layout/default_layout.dart';
import 'package:go_router_example/screen/3_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/one');
            },
            child: const Text('Screen One (GO)'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(ThreeScreen.routeName);
            },
            child: const Text('Screen Three (GO)'),
          ),
        ],
      ),
    );
  }
}

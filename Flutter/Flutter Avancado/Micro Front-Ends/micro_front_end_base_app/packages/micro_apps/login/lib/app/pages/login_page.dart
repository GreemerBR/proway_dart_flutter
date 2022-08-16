import 'package:core/core.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus eventBus = EventBus();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ButtonDefaultWidget(
          onPressed: () {
            eventBus.fire('Gregory Viegas Zimmer');
            navigatorKey.currentState?.pushNamed('/home');
          },
          title: 'Ir para home',
        ),
      ),
    );
  }
}

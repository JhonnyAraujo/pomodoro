import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/features/timer/presentation/store/home.store.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeStore store = HomeStore();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Observer(
                  builder: (context) {
                    return Text(
                      '${store.timer}',
                      style: TextStyle(fontSize: 80),
                    );
                  },
                ),
                Observer(
                  builder: (context) {
                    return IconButton.filled(
                      iconSize: 40,
                      padding: const EdgeInsets.all(16),
                      onPressed: () {
                        store.startTimer();
                      },
                      icon: store.isRunner
                          ? const Icon(Icons.pause)
                          : const Icon(Icons.play_arrow),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

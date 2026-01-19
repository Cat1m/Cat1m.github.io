import 'package:flutter/material.dart';
import '../bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  final HomeState state;

  const HomeView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Portfolio Web - Flutter 3.38.x'),
          const SizedBox(height: 20),
          // Hiển thị trạng thái từ Sealed Class
          switch (state) {
            HomeInitial() => const Text('Chào mừng!'),
            HomeLoading() => const CircularProgressIndicator(),
            HomeLoaded(data: final d) => Text('Data: $d'),
          },
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';
import '../views/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Cung cấp Bloc cho View bên dưới
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomeContainer(),
    );
  }
}

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  // Hàm xử lý logic lắng nghe state để điều hướng hoặc hiện thông báo
  void _handleStateListener(BuildContext context, HomeState state) {
    // Xử lý side-effects: Dialog, Snackbar, Navigation
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: _handleStateListener,
      child: Scaffold(
        // Truyền dữ liệu xuống View (Presenter)
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return HomeView(state: state);
          },
        ),
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

// Định nghĩa State bằng sealed class để pattern matching
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final String data;
  HomeLoaded(this.data);
}

// Định nghĩa Event
sealed class HomeEvent {}

final class HomeStarted extends HomeEvent {}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeStarted>((event, emit) {
      // Logic khởi tạo
    });
  }
}

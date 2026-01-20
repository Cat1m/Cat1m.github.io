// VN: Service trung gian để hứng lỗi từ toàn bộ app, giúp các Bloc không phụ thuộc trực tiếp nhau
import 'dart:async';

import 'package:injectable/injectable.dart';

@singleton
class ExceptionHandlerService {
  final _errorController = StreamController<Object>.broadcast();

  Stream<Object> get errorStream => _errorController.stream;

  void captureError(Object error, [StackTrace? stackTrace]) {
    // Có thể log vào Crashlytics tại đây
    _errorController.add(error);
    // ignore: avoid_print
    print('Global Error Captured: $error');
  }

  void dispose() {
    _errorController.close();
  }
}

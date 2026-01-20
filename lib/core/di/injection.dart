import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // File này sẽ được generate

final getIt = GetIt.instance;

// VN: Cấu hình Injectable để khởi tạo GetIt
@InjectableInit(
  initializerName: 'init', // tên hàm extension mặc định
  preferRelativeImports: true, // dùng import tương đối cho gọn
  asExtension: true, // generate dạng extension method
)
void configureDependencies() => getIt.init();

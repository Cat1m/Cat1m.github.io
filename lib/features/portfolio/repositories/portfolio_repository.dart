import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/skills/models/skill_item.dart';

abstract class IPortfolioRepository {
  // Hàm này trả về phần còn lại của PortfolioData (trừ Profile)
  // Hoặc trả về từng list riêng lẻ, ở đây mình trả về các list data
  Future<Map<String, dynamic>> getOtherData();
}

@LazySingleton(as: IPortfolioRepository)
class PortfolioRepository implements IPortfolioRepository {
  @override
  Future<Map<String, dynamic>> getOtherData() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return {};
  }
}

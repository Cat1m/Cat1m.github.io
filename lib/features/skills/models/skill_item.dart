import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_item.freezed.dart';
part 'skill_item.g.dart';

// VN: Enum để phân loại kỹ năng -> Giúp UI render thành các nhóm (Card) riêng biệt
enum SkillType {
  mobile(title: "Mobile Development"),
  backend(title: "Backend & Services"),
  database(title: "Database & Storage"),
  devops(title: "DevOps & Tools"),
  uiux(title: "UI/UX & Design");

  final String title;
  const SkillType({required this.title});
}

@freezed
abstract class SkillItem with _$SkillItem {
  const factory SkillItem({
    required String id,
    required String name,
    required SkillType type,
    String? iconUrl, // Optional: Nếu muốn hiện logo icon bên cạnh text
    @Default(false)
    bool isHighlight, // True = Kỹ năng tủ (sẽ được highlight màu)
  }) = _SkillItem;

  factory SkillItem.fromJson(Map<String, dynamic> json) =>
      _$SkillItemFromJson(json);
}

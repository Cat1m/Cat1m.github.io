import 'package:injectable/injectable.dart';

import 'package:my_portfolio/features/skills/models/skill_item.dart';

abstract class ISkillRepository {
  Future<List<SkillItem>> getSkills();
}

@LazySingleton(as: ISkillRepository)
class SkillRepository implements ISkillRepository {
  @override
  Future<List<SkillItem>> getSkills() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      // 1. Mobile (Core)
      const SkillItem(
        id: '1',
        name: 'Flutter',
        type: SkillType.mobile,
        isHighlight: true,
      ),
      const SkillItem(
        id: '2',
        name: 'Dart',
        type: SkillType.mobile,
        isHighlight: true,
      ),
      const SkillItem(
        id: '3',
        name: 'Android Native (Kotlin)',
        type: SkillType.mobile,
      ),
      const SkillItem(
        id: '4',
        name: 'iOS Native (Swift)',
        type: SkillType.mobile,
      ),
      const SkillItem(
        id: '5',
        name: 'Bloc/Cubit',
        type: SkillType.mobile,
        isHighlight: true,
      ),
      const SkillItem(
        id: '6',
        name: 'Clean Architecture',
        type: SkillType.mobile,
        isHighlight: true,
      ),
      const SkillItem(
        id: '19',
        name: 'Rust (Flutter Bridge)',
        type: SkillType.mobile,
        isHighlight: true,
      ),

      // 2. Backend
      const SkillItem(
        id: '8',
        name: 'Firebase Functions',
        type: SkillType.backend,
      ),
      const SkillItem(
        id: '9',
        name: '.NET Core (Basic)',
        type: SkillType.backend,
      ),

      const SkillItem(id: '20', name: 'Go (Basic)', type: SkillType.backend),
      const SkillItem(
        id: '21',
        name: 'Supabase',
        type: SkillType.backend,
        isHighlight: true, // Supabase đang là xu hướng thay thế Firebase
      ),

      // 3. Database
      const SkillItem(id: '10', name: 'Firestore', type: SkillType.database),
      const SkillItem(
        id: '11',
        name: 'SQLite / Drift',
        type: SkillType.database,
      ),
      const SkillItem(id: '12', name: 'Hive', type: SkillType.database),

      // 4. DevOps & Tools
      const SkillItem(id: '13', name: 'Git / GitHub', type: SkillType.devops),
      const SkillItem(id: '22', name: 'Linux / Bash', type: SkillType.devops),
      const SkillItem(
        id: '14',
        name: 'CI/CD (Codemagic)',
        type: SkillType.devops,
      ),
      const SkillItem(id: '16', name: 'Postman', type: SkillType.devops),

      // 5. UI/UX
      const SkillItem(id: '17', name: 'Figma', type: SkillType.uiux),
      const SkillItem(id: '18', name: 'Rive Animation', type: SkillType.uiux),
    ];
  }
}

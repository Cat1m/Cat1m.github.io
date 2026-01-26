import 'package:flutter/material.dart';
import 'package:my_portfolio/features/skills/models/skill_item.dart';
import '../../../../core/ui/ui.dart';

class SkillsSection extends StatelessWidget {
  final List<SkillItem> skills;

  const SkillsSection({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    // 1. Group skills theo Type
    final Map<SkillType, List<SkillItem>> groupedSkills = {};
    for (var skill in skills) {
      if (!groupedSkills.containsKey(skill.type)) {
        groupedSkills[skill.type] = [];
      }
      groupedSkills[skill.type]!.add(skill);
    }

    // Thứ tự hiển thị mong muốn
    final orderedTypes = [
      SkillType.mobile,
      SkillType.backend,
      SkillType.database,
      SkillType.devops,
      SkillType.uiux,
    ];

    return Container(
      color: context.colors.background,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.s32,
        horizontal: AppDimens.s24,
      ),
      child: Column(
        children: [
          Text(
            "My Tech Stack",
            style: context.text.h3.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
          const SizedBox(height: AppDimens.s8),
          Text(
            "Skills & Tools",
            style: context.text.h1.copyWith(color: context.colors.primary),
          ),
          const SizedBox(height: AppDimens.s48),

          // Render dạng Masonry Layout (Wrap các card)
          LayoutBuilder(
            builder: (context, constraints) {
              // Desktop: 3 cột, Tablet: 2 cột, Mobile: 1 cột
              double width = constraints.maxWidth;
              int columns = 1;
              if (width > 1100) {
                columns = 3;
              } else if (width > 700)
                // ignore: curly_braces_in_flow_control_structures
                columns = 2;

              // Tính toán độ rộng cho mỗi item
              // gap = 24
              final itemWidth =
                  (width - (columns - 1) * AppDimens.s24) / columns;

              return Wrap(
                spacing: AppDimens.s24,
                runSpacing: AppDimens.s24,
                children: orderedTypes.map((type) {
                  final groupSkills = groupedSkills[type] ?? [];
                  if (groupSkills.isEmpty) return const SizedBox();

                  return SizedBox(
                    width: itemWidth,
                    child: _SkillGroupCard(type: type, skills: groupSkills),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkillGroupCard extends StatelessWidget {
  final SkillType type;
  final List<SkillItem> skills;

  const _SkillGroupCard({required this.type, required this.skills});

  @override
  Widget build(BuildContext context) {
    // Icon đại diện cho từng nhóm
    IconData getIcon() {
      switch (type) {
        case SkillType.mobile:
          return Icons.phone_android;
        case SkillType.backend:
          return Icons.dns;
        case SkillType.database:
          return Icons.storage;
        case SkillType.devops:
          return Icons.all_inclusive; // Icon vô cực cho DevOps
        case SkillType.uiux:
          return Icons.brush;
      }
    }

    return Container(
      padding: const EdgeInsets.all(AppDimens.s24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r16),
        border: Border.all(color: context.colors.border),
        boxShadow: [
          BoxShadow(
            color: context.colors.textPrimary.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header nhóm
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(getIcon(), color: context.colors.primary, size: 20),
              ),
              const SizedBox(width: AppDimens.s12),
              Text(type.title, style: context.text.h3.copyWith(fontSize: 18)),
            ],
          ),

          const SizedBox(height: AppDimens.s20),

          // List Chips
          Wrap(
            spacing: AppDimens.s8,
            runSpacing: AppDimens.s8,
            children: skills.map((skill) => _SkillChip(skill: skill)).toList(),
          ),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final SkillItem skill;

  const _SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    final isHighlight = skill.isHighlight;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        // Highlight: Nền Primary nhạt, Viền Primary
        // Normal: Nền Background, Viền Border
        color: isHighlight
            ? context.colors.primary.withOpacity(0.08)
            : context.colors.background,
        borderRadius: BorderRadius.circular(AppDimens.r8),
        border: Border.all(
          color: isHighlight
              ? context.colors.primary.withOpacity(0.3)
              : context.colors.border,
        ),
      ),
      child: Text(
        skill.name,
        style: context.text.body2.copyWith(
          fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
          color: isHighlight
              ? context.colors.primary
              : context.colors.textSecondary,
        ),
      ),
    );
  }
}

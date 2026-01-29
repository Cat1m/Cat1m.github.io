import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/core/ui/extensions/context_extension.dart';
import 'package:my_portfolio/core/ui/theme/app_dimens.dart';
import 'package:my_portfolio/core/ui/widgets/app_button.dart'; // Đảm bảo import AppButton cũ của bạn
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:my_portfolio/features/projects/project_card.dart';

class ProjectsSection extends StatelessWidget {
  final List<ProjectItem> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    final workProjects = projects.whereType<WorkProject>().toList();
    final personalProjects = projects.whereType<PersonalProject>().toList();

    // LOGIC DISPLAY:
    // 1. Work: Chỉ lấy 2 cái mới nhất để hiện
    final displayWork = workProjects.take(2).toList();

    // 2. Personal: Chỉ lấy 3 cái "tự tin nhất" để hiện
    final displayPersonal = personalProjects.take(3).toList();

    return Container(
      color: context.colors.transparent,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.s64,
        horizontal: AppDimens.s24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========================================================
          // PART 1: OPEN SOURCE & PERSONAL
          // ========================================================
          if (personalProjects.isNotEmpty) ...[
            Text(
              "Open Source & Personal",
              style: context.text.h2.copyWith(
                color: context.colors.textPrimary,
              ),
            ),
            const SizedBox(height: AppDimens.s8),
            Text(
              "Playground where I experiment with new technologies.",
              style: context.text.body1.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            const SizedBox(height: AppDimens.s32),

            LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 1;
                // Ratio ép dẹt card (hình chữ nhật) cho Desktop
                double ratio = 2.2;

                if (constraints.maxWidth > 1100) {
                  crossAxisCount = 3;
                  ratio = 3.0; // Desktop: Card rất dẹt
                } else if (constraints.maxWidth > 700) {
                  crossAxisCount = 2;
                  ratio = 2.4;
                } else {
                  crossAxisCount = 1;
                  ratio = 2.2;
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: displayPersonal.length, // Chỉ render 3 items
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: AppDimens.s24,
                    mainAxisSpacing: AppDimens.s24,
                    childAspectRatio: ratio,
                  ),
                  itemBuilder: (context, index) {
                    return ProjectCard(project: displayPersonal[index]);
                  },
                );
              },
            ),

            // Nút More: LUÔN LUÔN HIỆN để điều hướng về GitHub
            const SizedBox(height: AppDimens.s48),
            Center(
              child: AppButton(
                text: "MORE PROJECTS",
                isExpanded: false,
                onPressed: () => _launchUrl("https://github.com/Cat1m"),
              ),
            ),

            // ========================================================
            // PART 2: WORK EXPERIENCE
            // ========================================================
            if (workProjects.isNotEmpty) ...[
              Text(
                "Projects",
                style: context.text.h2.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              const SizedBox(height: AppDimens.s8),
              Text(
                "Professional projects I've contributed to in companies.",
                style: context.text.body1.copyWith(
                  color: context.colors.textSecondary,
                ),
              ),
              const SizedBox(height: AppDimens.s32),

              // Render List (Giới hạn hiển thị 2 item)
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: displayWork.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: AppDimens.s16),
                itemBuilder: (context, index) =>
                    ProjectCard(project: displayWork[index]),
              ),

              // Nút More: Chỉ hiện khi thực tế có nhiều hơn 2 dự án
              if (workProjects.length > 2) ...[
                const SizedBox(height: AppDimens.s32),
                Center(
                  child: AppButton(
                    text: "VIEW FULL RESUME", // Hoặc Link đến LinkedIn
                    isExpanded: false,
                    onPressed: () =>
                        _launchUrl("https://www.linkedin.com/in/cat1m/"),
                  ),
                ),
              ],
            ],
          ],
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }
}

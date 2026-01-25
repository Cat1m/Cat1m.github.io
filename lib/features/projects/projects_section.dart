import 'package:flutter/material.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class ProjectsSection extends StatelessWidget {
  final List<ProjectItem> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.s64,
        horizontal: AppDimens.s24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Open Source & Works",
            style: context.text.h2.copyWith(color: context.colors.textPrimary),
          ),
          const SizedBox(height: AppDimens.s48),

          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = 1;
              // VN: Tinh chỉnh lại tỷ lệ khung hình (Aspect Ratio)
              // Số càng LỚN thì card càng LÙN (Bè ngang)
              double ratio = 1.6;

              if (constraints.maxWidth > 1100) {
                crossAxisCount = 3;
                ratio = 1.8; // Desktop: Card rất dẹt
              } else if (constraints.maxWidth > 700) {
                crossAxisCount = 2;
                ratio = 1.7; // Tablet: Card vừa phải
              } else {
                // Mobile: 1 Cột
                ratio = 1.8; // Mobile cũng cần gọn lại
              }

              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projects.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: AppDimens.s24,
                  mainAxisSpacing: AppDimens.s24,
                  childAspectRatio: ratio, // Áp dụng tỷ lệ mới
                ),
                itemBuilder: (context, index) {
                  return _GithubStyleProjectCard(project: projects[index]);
                },
              );
            },
          ),

          const SizedBox(height: AppDimens.s48),

          AppButton(
            text: "MORE PROJECTS",
            isExpanded: false,
            onPressed: () => _launchUrl("https://github.com/Cat1m"),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }
}

class _GithubStyleProjectCard extends StatelessWidget {
  final ProjectItem project;

  const _GithubStyleProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      // VN: Giảm padding từ s24 xuống s20 cho gọn
      padding: const EdgeInsets.all(AppDimens.s20),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r8),
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
          // --- HEADER ---
          Row(
            children: [
              Icon(
                project.isPersonalProject
                    ? Icons.book_outlined
                    : Icons.business_center_outlined,
                size: AppDimens.icM,
                color: context.colors.textPrimary,
              ),
              const SizedBox(width: AppDimens.s12),
              Expanded(
                child: Text(
                  project.title,
                  style: context.text.h3.copyWith(
                    fontSize: 16,
                  ), // Giảm font title xíu
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          const SizedBox(height: AppDimens.s12), // Giảm khoảng cách
          // --- BODY ---
          Expanded(
            child: Text(
              project.description,
              style: context.text.body2.copyWith(
                color: context.colors.textSecondary,
                height: 1.4, // Giảm line-height
                fontSize: 13, // Giảm font size body
              ),
              maxLines: 3, // VN: Giảm xuống 3 dòng tối đa thôi
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const SizedBox(height: AppDimens.s12), // Giảm khoảng cách
          // --- FOOTER ---
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Tech Stack
              if (project.techStack.isNotEmpty)
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10, // Dot nhỏ lại
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _getTechColor(project.techStack.first),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      project.techStack.first,
                      style: context.text.caption.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.colors.textSecondary,
                        fontSize: 11, // Font nhỏ lại
                      ),
                    ),
                    if (project.techStack.length > 1)
                      Text(
                        " +${project.techStack.length - 1}",
                        style: context.text.caption.copyWith(fontSize: 11),
                      ),
                  ],
                ),

              // Links
              Row(
                children: [
                  if (project.githubLink != null)
                    _SmallIconLink(url: project.githubLink!, icon: Icons.code),

                  if (project.webLink != null ||
                      project.googlePlayLink != null ||
                      project.appStoreLink != null)
                    _SmallIconLink(
                      url:
                          project.webLink ??
                          project.googlePlayLink ??
                          project.appStoreLink ??
                          "",
                      icon: Icons.open_in_new,
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getTechColor(String tech) {
    switch (tech.toLowerCase()) {
      case 'flutter':
        return Colors.blue;
      case 'dart':
        return Colors.teal;
      case 'firebase':
        return Colors.orange;
      case 'swift':
        return Colors.red;
      case 'kotlin':
        return Colors.purple;
      default:
        return Colors.yellow[700]!;
    }
  }
}

class _SmallIconLink extends StatelessWidget {
  final String url;
  final IconData icon;

  const _SmallIconLink({required this.url, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10), // Giảm padding nút
      child: InkWell(
        onTap: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) await launchUrl(uri);
        },
        child: Icon(
          icon,
          size: 18, // Icon nhỏ lại
          color: context.colors.textSecondary,
        ),
      ),
    );
  }
}

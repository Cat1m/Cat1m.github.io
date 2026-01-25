import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/core/ui/extensions/context_extension.dart';
import 'package:my_portfolio/core/ui/theme/app_dimens.dart';
import 'package:my_portfolio/features/projects/models/project_item.dart';

class ProjectCard extends StatelessWidget {
  final ProjectItem project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return project.map(
      personal: (p) => _PersonalProjectCard(project: p),
      work: (w) => _WorkProjectCard(project: w),
    );
  }
}

// ============================================================================
// 1. WORK PROJECT CARD
// ============================================================================
class _WorkProjectCard extends StatelessWidget {
  final WorkProject project;

  const _WorkProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppDimens.s16),
      padding: const EdgeInsets.all(AppDimens.s24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r12),
        border: Border(
          left: BorderSide(color: context.colors.primary, width: 4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title.toUpperCase(),
                      style: context.text.h3.copyWith(fontSize: 18),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.business,
                          size: 14,
                          color: context.colors.textSecondary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "${project.role} at ${project.companyName}",
                          style: context.text.body2.copyWith(
                            fontWeight: FontWeight.w600,
                            color: context.colors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (project.platforms.isNotEmpty)
                _PlatformBadges(platforms: project.platforms),
            ],
          ),
          const SizedBox(height: AppDimens.s12),
          Text(
            project.description,
            style: context.text.body2.copyWith(
              color: context.colors.textSecondary,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppDimens.s16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (project.appStoreLink != null)
                _LinkChip(
                  label: "App Store",
                  icon: Icons.apple,
                  url: project.appStoreLink!,
                ),
              if (project.googlePlayLink != null)
                _LinkChip(
                  label: "Google Play",
                  icon: Icons.android,
                  url: project.googlePlayLink!,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 2. PERSONAL PROJECT CARD (With OnTap Action)
// ============================================================================
class _PersonalProjectCard extends StatelessWidget {
  final PersonalProject project;

  const _PersonalProjectCard({required this.project});

  // VN: Xác định link ưu tiên để mở khi tap vào cả card
  String? get _primaryLink =>
      project.githubLink ??
      project.webLink ??
      project.googlePlayLink ??
      project.appStoreLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(AppDimens.r8),
        border: Border.all(color: context.colors.border),
      ),
      // VN: ClipRRect + Material + InkWell để tạo hiệu ứng tap chuẩn
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimens.r8),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: _primaryLink != null
                ? () async {
                    final uri = Uri.parse(_primaryLink!);
                    if (await canLaunchUrl(uri)) await launchUrl(uri);
                  }
                : null,
            hoverColor: context.colors.textPrimary.withValues(alpha: 0.02),
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.s20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _getTechColor(
                            project.techStack.firstOrNull ?? '',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          project.title,
                          style: context.text.h3.copyWith(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimens.s8),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        project.tagline,
                        style: context.text.body2.copyWith(
                          color: context.colors.textSecondary,
                          fontSize: 13,
                          height: 1.4,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimens.s12),
                  // Nút bấm chi tiết bên dưới (Vẫn giữ để user bấm chính xác nếu muốn)
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      if (project.githubLink != null)
                        _LinkChip(
                          label: "GitHub",
                          icon: Icons.code,
                          url: project.githubLink!,
                          isPrimary: true,
                        ),
                      if (project.webLink != null)
                        _LinkChip(
                          label: "Demo",
                          icon: Icons.language,
                          url: project.webLink!,
                        ),
                      if (project.appStoreLink != null)
                        _LinkChip(
                          label: "App Store",
                          icon: Icons.apple,
                          url: project.appStoreLink!,
                        ),
                      if (project.googlePlayLink != null)
                        _LinkChip(
                          label: "Google Play",
                          icon: Icons.android,
                          url: project.googlePlayLink!,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// HELPERS
// ============================================================================

class _LinkChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final String url;
  final bool isPrimary;

  const _LinkChip({
    required this.label,
    required this.icon,
    required this.url,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) await launchUrl(uri);
      },
      borderRadius: BorderRadius.circular(AppDimens.r16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isPrimary
              ? context.colors.primary.withValues(alpha: 0.1)
              : context.colors.surface,
          borderRadius: BorderRadius.circular(AppDimens.r16),
          border: Border.all(
            color: isPrimary
                ? context.colors.primary.withValues(alpha: 0.5)
                : context.colors.border,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 14,
              color: isPrimary
                  ? context.colors.primary
                  : context.colors.textSecondary,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: context.text.caption.copyWith(
                fontWeight: FontWeight.bold,
                color: isPrimary
                    ? context.colors.primary
                    : context.colors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlatformBadges extends StatelessWidget {
  final List<String> platforms;
  const _PlatformBadges({required this.platforms});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: platforms.map((p) {
        IconData icon;
        switch (p.toLowerCase()) {
          case 'android':
            icon = Icons.android;
            break;
          case 'ios':
            icon = Icons.apple;
            break;
          case 'web':
            icon = Icons.web;
            break;
          default:
            icon = Icons.device_unknown;
        }
        return Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Icon(icon, size: 16, color: context.colors.textSecondary),
        );
      }).toList(),
    );
  }
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
      return Colors.grey;
  }
}

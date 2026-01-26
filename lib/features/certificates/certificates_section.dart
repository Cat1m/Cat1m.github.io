import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class CertificatesSection extends StatelessWidget {
  final List<EducationItem> educations;
  final List<CertificateItem> certificates;

  const CertificatesSection({
    super.key,
    required this.educations,
    required this.certificates,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.s64,
        horizontal: AppDimens.s24,
      ),
      child: Column(
        children: [
          // Header Section
          Text(
            "My Background",
            style: context.text.h3.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
          const SizedBox(height: AppDimens.s8),
          Text(
            "Education & Certifications",
            style: context.text.h1.copyWith(color: context.colors.primary),
          ),
          const SizedBox(height: AppDimens.s48),

          // 1. EDUCATION SECTION
          if (educations.isNotEmpty) ...[
            _SectionTitle(icon: Icons.school, title: "Education"),
            const SizedBox(height: AppDimens.s24),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: educations.length,
              separatorBuilder: (_, _) => const SizedBox(height: AppDimens.s24),
              itemBuilder: (context, index) =>
                  _EducationCard(item: educations[index]),
            ),
            const SizedBox(height: AppDimens.s48), // Khoảng cách giữa 2 phần
          ],

          // 2. CERTIFICATES SECTION
          if (certificates.isNotEmpty) ...[
            _SectionTitle(
              icon: Icons.workspace_premium,
              title: "Licenses & Certifications",
            ),
            const SizedBox(height: AppDimens.s24),

            LayoutBuilder(
              builder: (context, constraints) {
                // Desktop: 2 Cột, Mobile: 1 Cột
                final isDesktop = constraints.maxWidth > 900;
                final crossAxisCount = isDesktop ? 2 : 1;
                // Desktop card dẹt hơn, Mobile card cao hơn
                final ratio = isDesktop ? 2.5 : 2.0;

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: certificates.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: AppDimens.s24,
                    mainAxisSpacing: AppDimens.s24,
                    childAspectRatio: ratio,
                    mainAxisExtent: 160, // Chiều cao cố định cho đẹp đều
                  ),
                  itemBuilder: (context, index) {
                    return _CertificateCard(item: certificates[index]);
                  },
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}

// ================== HELPER WIDGETS ==================

class _SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SectionTitle({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 28, color: context.colors.primary),
        const SizedBox(width: AppDimens.s12),
        Text(title, style: context.text.h2.copyWith(fontSize: 24)),
        const SizedBox(width: AppDimens.s16),
        Expanded(child: Divider(color: context.colors.border)),
      ],
    );
  }
}

// --- CARD: EDUCATION ---
class _EducationCard extends StatelessWidget {
  final EducationItem item;

  const _EducationCard({required this.item});

  @override
  Widget build(BuildContext context) {
    // Format Date: 2017 - 2021
    final start = DateFormat('yyyy').format(item.startTime);
    final end = DateFormat('yyyy').format(item.endTime);

    return Container(
      padding: const EdgeInsets.all(AppDimens.s24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r12),
        border: Border.all(color: context.colors.border),
        boxShadow: [
          BoxShadow(
            color: context.colors.textPrimary.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo School
          _LogoBox(
            imgUrl: item.logoUrl,
            fallbackChar: item.school[0],
            size: 72,
          ),
          const SizedBox(width: AppDimens.s24),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.school,
                  style: context.text.h3.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(
                  item.degree,
                  style: context.text.body1.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "$start - $end",
                  style: context.text.caption.copyWith(fontSize: 14),
                ),

                // Achievements (Bullet Points)
                if (item.achievements.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.s12),
                  ...item.achievements.map(
                    (ach) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.emoji_events,
                            size: 14,
                            color: context.colors.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              ach,
                              style: context.text.body2.copyWith(
                                color: context.colors.textSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// --- CARD: CERTIFICATE ---
class _CertificateCard extends StatelessWidget {
  final CertificateItem item;

  const _CertificateCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.s20),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r12),
        border: Border.all(color: context.colors.border),
        // Hover effect visual trick (static shadow)
        boxShadow: [
          BoxShadow(
            color: context.colors.textPrimary.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo Issuer
          _LogoBox(
            imgUrl: item.logoUrl,
            fallbackChar: item.issuer[0],
            size: 56,
          ),
          const SizedBox(width: AppDimens.s16),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: context.text.h3.copyWith(fontSize: 16),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  item.issuer,
                  style: context.text.body2.copyWith(
                    color: context.colors.textSecondary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "Issued ${DateFormat.yMMM().format(item.date)}",
                  style: context.text.caption.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),

                const Spacer(),

                // Show Credential Button
                if (item.credentialUrl != null)
                  InkWell(
                    onTap: () => _launchUrl(item.credentialUrl!),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: context.colors.textSecondary.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Show credential",
                            style: context.text.caption.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.colors.textSecondary,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.open_in_new,
                            size: 12,
                            color: context.colors.textSecondary,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
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

// --- SHARED: LOGO BOX ---
class _LogoBox extends StatelessWidget {
  final String? imgUrl;
  final String fallbackChar;
  final double size;

  const _LogoBox({
    required this.imgUrl,
    required this.fallbackChar,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: context.colors.border),
      ),
      child: imgUrl != null
          ? Image.asset(imgUrl!, fit: BoxFit.contain)
          : Center(
              child: Text(
                fallbackChar,
                style: context.text.h2.copyWith(color: context.colors.primary),
              ),
            ),
    );
  }
}

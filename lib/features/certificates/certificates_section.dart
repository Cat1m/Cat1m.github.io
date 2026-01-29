import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';
import 'package:my_portfolio/features/certificates/models/education_item/education_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class CertificatesSection extends StatefulWidget {
  final List<EducationItem> educations;
  final List<CertificateItem> certificates;

  const CertificatesSection({
    super.key,
    required this.educations,
    required this.certificates,
  });

  @override
  State<CertificatesSection> createState() => _CertificatesSectionState();
}

class _CertificatesSectionState extends State<CertificatesSection> {
  // VN: Trạng thái mở rộng danh sách chứng chỉ
  bool _isExpanded = false;

  // VN: Số lượng items mặc định hiển thị ban đầu (4 items = 2 hàng trên Desktop)
  static const int _initialCount = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.transparent,
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

          // 1. EDUCATION SECTION (Giữ nguyên)
          if (widget.educations.isNotEmpty) ...[
            const _SectionTitle(icon: Icons.school, title: "Education"),
            const SizedBox(height: AppDimens.s24),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.educations.length,
              separatorBuilder: (_, _) => const SizedBox(height: AppDimens.s24),
              itemBuilder: (context, index) =>
                  _EducationCard(item: widget.educations[index]),
            ),
            const SizedBox(height: AppDimens.s48),
          ],

          // 2. CERTIFICATES SECTION (Cập nhật Logic Show More)
          if (widget.certificates.isNotEmpty) ...[
            const _SectionTitle(
              icon: Icons.workspace_premium,
              title: "Licenses & Certifications",
            ),
            const SizedBox(height: AppDimens.s24),

            LayoutBuilder(
              builder: (context, constraints) {
                final isDesktop = constraints.maxWidth > 900;

                final crossAxisCount = isDesktop ? 2 : 1;
                final ratio = isDesktop ? 2.5 : 2.0;

                // VN: Tính toán số lượng hiển thị dựa trên trạng thái _isExpanded
                final totalItems = widget.certificates.length;
                final displayCount = _isExpanded
                    ? totalItems
                    : (totalItems > _initialCount ? _initialCount : totalItems);

                return Column(
                  children: [
                    // Grid Item
                    // VN: Dùng AnimatedSize để hiệu ứng mở rộng mượt mà hơn
                    AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                      alignment: Alignment.topCenter,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: displayCount,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: AppDimens.s24,
                          mainAxisSpacing: AppDimens.s24,
                          childAspectRatio: ratio,
                          mainAxisExtent: 170,
                        ),
                        itemBuilder: (context, index) {
                          return _CertificateCard(
                            item: widget.certificates[index],
                          );
                        },
                      ),
                    ),

                    // Show More / Less Button
                    if (totalItems > _initialCount) ...[
                      const SizedBox(height: AppDimens.s32),
                      _ShowMoreButton(
                        isExpanded: _isExpanded,
                        remainingCount: totalItems - _initialCount,
                        onTap: () {
                          // VN: Toggle trạng thái và setState để render lại UI
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                      ),
                    ],
                  ],
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

// VN: Widget nút bấm Show More được tách riêng để tái sử dụng hoặc style tùy ý
class _ShowMoreButton extends StatelessWidget {
  final bool isExpanded;
  final int remainingCount;
  final VoidCallback onTap;

  const _ShowMoreButton({
    required this.isExpanded,
    required this.remainingCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: context.colors.primary.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(30),
            color: context.colors.surface,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                isExpanded ? "Show Less" : "Show More (+$remainingCount)",
                style: context.text.button.copyWith(
                  color: context.colors.primary,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: context.colors.primary,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

// --- CARD: EDUCATION (Giữ nguyên logic của bạn) ---
class _EducationCard extends StatelessWidget {
  final EducationItem item;

  const _EducationCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final endStr = DateFormat('yyyy').format(item.endTime);
    final timeDisplay = item.startTime != null
        ? "${DateFormat('yyyy').format(item.startTime!)} - $endStr"
        : "Graduated: $endStr";

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
          _LogoBox(
            imgUrl: item.logoUrl,
            fallbackChar: item.school[0],
            size: 72,
          ),
          const SizedBox(width: AppDimens.s24),
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
                  timeDisplay,
                  style: context.text.caption.copyWith(fontSize: 14),
                ),
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

// --- CARD: CERTIFICATE (Giữ nguyên style gọn gàng của bạn) ---
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
          _LogoBox(
            imgUrl: item.logoUrl,
            fallbackChar: item.issuer[0],
            size: 56,
          ),
          const SizedBox(width: AppDimens.s16),
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
      child: _buildImage(context),
    );
  }

  Widget _buildImage(BuildContext context) {
    if (imgUrl != null) {
      return Image.asset(
        imgUrl!,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
      );
    }
    return Center(
      child: Text(
        fallbackChar,
        style: context.text.h2.copyWith(color: context.colors.primary),
      ),
    );
  }
}

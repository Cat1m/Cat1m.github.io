import 'dart:math' as math; // Import math để xoay icon
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/features/experience/models/experience_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class ExperienceSection extends StatelessWidget {
  final List<ExperienceItem> experiences;

  const ExperienceSection({super.key, required this.experiences});

  String _getDuration(DateTime start, DateTime? end) {
    final endDate = end ?? DateTime.now();
    final difference = endDate.difference(start);
    final days = difference.inDays;
    final years = (days / 365).floor();
    final months = ((days % 365) / 30).floor();
    if (years > 0) return "${years} yrs ${months > 0 ? '$months mos' : ''}";
    return "$months mos";
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      color: context.colors.background,
      // VN: Chuyển sang Stack để lồng background
      child: Stack(
        children: [
          // ================== LAYER 1: DECORATIONS (Background) ==================
          // 1. Blob to bên trái (Lấp khoảng trống bạn nói)
          Positioned(
            top: 200,
            left: -150,
            child: _BlurryBlob(
              color: context.colors.secondary.withOpacity(0.1),
              size: 500, // Size to để lan tỏa
            ),
          ),

          // 2. Blob nhỏ bên phải dưới
          Positioned(
            bottom: -50,
            right: -100,
            child: _BlurryBlob(
              color: context.colors.primary.withOpacity(0.1),
              size: 400,
            ),
          ),

          // 3. Floating Icons (Theme: Work & Office)
          if (size.width > 1000) ...[
            const Positioned(
              top: 150,
              left: 100, // Nằm ở vùng trống bên trái
              child: _FloatingIcon(
                icon: Icons.laptop_mac,
                angle: -0.15,
                size: 80,
              ),
            ),
            const Positioned(
              top: 400,
              right: 80,
              child: _FloatingIcon(icon: Icons.coffee, angle: 0.2, size: 50),
            ),
            const Positioned(
              bottom: 100,
              left: 200,
              child: _FloatingIcon(
                icon: Icons.work_outline,
                angle: 0.1,
                size: 60,
              ),
            ),
          ],

          // ================== LAYER 2: MAIN CONTENT ==================
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimens.s32,
              horizontal: AppDimens.s24,
            ),
            child: Column(
              children: [
                // Header
                Text(
                  "Career Path",
                  style: context.text.h3.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppDimens.s8),
                Text(
                  "Work Experience",
                  style: context.text.h1.copyWith(
                    color: context.colors.primary,
                  ),
                ),
                const SizedBox(height: AppDimens.s48),

                // Timeline List
                LayoutBuilder(
                  builder: (context, constraints) {
                    final isDesktop = constraints.maxWidth > 900;

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: experiences.length,
                      itemBuilder: (context, index) {
                        final item = experiences[index];
                        final isLast = index == experiences.length - 1;

                        return IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // CỘT 1: Thời gian & Logo (Desktop)
                              if (isDesktop)
                                Expanded(
                                  flex: 1,
                                  child: _DateAndLocation(
                                    item: item,
                                    alignRight: true,
                                    durationString: _getDuration(
                                      item.startTime,
                                      item.endTime,
                                    ),
                                  ),
                                ),

                              // CỘT 2: Trục Timeline
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppDimens.s16,
                                ),
                                child: _TimelineAxis(isLast: isLast),
                              ),

                              // CỘT 3: Nội dung chi tiết
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: AppDimens.s48,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (!isDesktop) ...[
                                        _DateAndLocation(
                                          item: item,
                                          alignRight: false,
                                          durationString: _getDuration(
                                            item.startTime,
                                            item.endTime,
                                          ),
                                        ),
                                        const SizedBox(height: AppDimens.s12),
                                      ],
                                      _ExperienceCard(
                                        item: item,
                                        showLogoInside: !isDesktop,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BlurryBlob extends StatelessWidget {
  final Color color;
  final double size;

  const _BlurryBlob({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [BoxShadow(color: color, blurRadius: 100, spreadRadius: 50)],
      ),
    );
  }
}

class _FloatingIcon extends StatelessWidget {
  final IconData icon;
  final double angle;
  final double size;

  const _FloatingIcon({
    required this.icon,
    required this.angle,
    this.size = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * math.pi,
      child: Icon(
        icon,
        size: size,
        color: context.colors.textPrimary.withValues(
          alpha: 0.04,
        ), // Mờ hơn chút cho đỡ rối
      ),
    );
  }
}
// ================== HELPER WIDGETS ==================

class _DateAndLocation extends StatelessWidget {
  final ExperienceItem item;
  final bool alignRight;
  final String durationString; // Field mới

  const _DateAndLocation({
    required this.item,
    required this.alignRight,
    required this.durationString,
  });

  @override
  Widget build(BuildContext context) {
    final crossAlign = alignRight
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start;
    final textAlign = alignRight ? TextAlign.end : TextAlign.start;

    final start = DateFormat('MMM yyyy').format(item.startTime);
    final end = item.endTime != null
        ? DateFormat('MMM yyyy').format(item.endTime!)
        : "Present";

    return Padding(
      padding: EdgeInsets.only(
        right: alignRight ? AppDimens.s24 : 0,
        bottom: alignRight ? 0 : AppDimens.s8,
      ),
      child: Column(
        crossAxisAlignment: crossAlign,
        children: [
          // 1. Logo Công Ty (Điểm nhấn lấp đầy khoảng trống)
          // Chỉ hiện to ở Desktop (alignRight = true)
          if (alignRight) ...[
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius: BorderRadius.circular(AppDimens.r12),
                border: Border.all(color: context.colors.border),
                boxShadow: [
                  BoxShadow(
                    color: context.colors.textPrimary.withValues(alpha: .05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: item.companyLogo != null
                  ? Image.asset(item.companyLogo!, fit: BoxFit.contain)
                  : Center(
                      child: Text(
                        item.company[0],
                        style: context.text.h2.copyWith(
                          color: context.colors.primary,
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: AppDimens.s16),
          ],

          // 2. Thời gian
          Text(
            "$start - $end",
            style: context.text.h3.copyWith(fontSize: 16),
            textAlign: textAlign,
          ),

          // 3. Duration (Thâm niên) - Highlight nhẹ
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: context.colors.textSecondary.withValues(alpha: .1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              durationString,
              style: context.text.caption.copyWith(fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: AppDimens.s8),

          // 4. Địa điểm
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: alignRight
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (alignRight) ...[
                Text(
                  item.location,
                  style: context.text.body2.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.location_on,
                  size: 14,
                  color: context.colors.textSecondary,
                ),
              ] else ...[
                Icon(
                  Icons.location_on,
                  size: 14,
                  color: context.colors.textSecondary,
                ),
                const SizedBox(width: 4),
                Text(
                  item.location,
                  style: context.text.body2.copyWith(
                    color: context.colors.textSecondary,
                  ),
                ),
              ],
            ],
          ),

          const SizedBox(height: 4),

          // 5. Type Badge
          Text(
            item.type, // Remote/Hybrid
            style: context.text.caption.copyWith(
              color: context.colors.primary,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}

class _TimelineAxis extends StatelessWidget {
  final bool isLast;

  const _TimelineAxis({required this.isLast});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: Column(
        children: [
          // Dot
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.primary,
              border: Border.all(color: context.colors.surface, width: 3),
              boxShadow: [
                BoxShadow(
                  color: context.colors.primary.withValues(alpha: .3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
          // Line
          if (!isLast)
            Expanded(child: Container(width: 2, color: context.colors.border)),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final ExperienceItem item;
  final bool showLogoInside; // Field mới

  const _ExperienceCard({required this.item, required this.showLogoInside});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimens.s24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(AppDimens.r12),
        border: Border.all(color: context.colors.border),
        boxShadow: [
          BoxShadow(
            color: context.colors.textPrimary.withValues(alpha: .02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Chỉ hiện Logo ở đây nếu là Mobile (showLogoInside = true)
              if (showLogoInside) ...[
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: context.colors.background,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: item.companyLogo != null
                      ? Image.asset(item.companyLogo!)
                      : Text(
                          item.company[0],
                          style: context.text.h2.copyWith(
                            color: context.colors.primary,
                          ),
                        ),
                ),
                const SizedBox(width: AppDimens.s16),
              ],

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.role,
                      style: context.text.h3.copyWith(fontSize: 18),
                    ),
                    InkWell(
                      onTap: item.companyUrl != null
                          ? () => _launchUrl(item.companyUrl!)
                          : null,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.company,
                            style: context.text.body1.copyWith(
                              color: context.colors.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (item.companyUrl != null)
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.open_in_new,
                                size: 12,
                                color: context.colors.primary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // ... Phần dưới giữ nguyên (Bullet points & Chips)
          const SizedBox(height: AppDimens.s20),
          ...item.responsibilities.map(
            (res) => Padding(
              padding: const EdgeInsets.only(bottom: AppDimens.s8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: context.colors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: AppDimens.s12),
                  Expanded(
                    child: Text(
                      res,
                      style: context.text.body2.copyWith(
                        color: context.colors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppDimens.s20),
          Wrap(
            spacing: AppDimens.s8,
            runSpacing: AppDimens.s8,
            children: item.techStack
                .map(
                  (tech) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.background,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: context.colors.border),
                    ),
                    child: Text(
                      tech,
                      style: context.text.caption.copyWith(
                        fontWeight: FontWeight.w600,
                        color: context.colors.textSecondary,
                      ),
                    ),
                  ),
                )
                .toList(),
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

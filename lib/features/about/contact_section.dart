// file: features/about/contact_section.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart'; // VN: Import Lottie
import 'package:my_portfolio/core/ui/ui.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';
import 'package:my_portfolio/features/portfolio/ui/widgets/portfolio_footer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final UserProfile user;

  const ContactSection({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 900;

        // VN: Padding ngang
        final horizontalPadding = isDesktop ? AppDimens.s48 : AppDimens.s24;

        // VN: Gom nhóm nội dung chính (Text, Buttons, Hobbies) vào 1 biến
        // để dễ dàng tái sử dụng cho cả Mobile (Column) và Desktop (Row)
        final mainContent = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Availability Status
            if (user.isOpenToWork)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                margin: const EdgeInsets.only(bottom: AppDimens.s24),
                decoration: BoxDecoration(
                  color: context.colors.success.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: context.colors.success),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: context.colors.success,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Available for work",
                      style: context.text.caption.copyWith(
                        color: context.colors.success,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

            // 2. Title & Description
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.contactHeading,
                    style: context.text.h1.copyWith(
                      color: context.colors.primary,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: AppDimens.s16),

                  _HighlightedDescription(
                    text: user.contactDescription,
                    baseStyle: context.text.body1.copyWith(
                      color: context.colors.textSecondary,
                      fontSize: 18,
                      height: 1.6,
                    ),
                    highlightColor: context.colors.textPrimary,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppDimens.s32),

            // 3. Services Tags
            if (user.services.isNotEmpty)
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: user.services.map((service) {
                  return _ServiceTag(text: service);
                }).toList(),
              ),

            const SizedBox(height: AppDimens.s48),

            // 4. Call To Actions
            Wrap(
              spacing: AppDimens.s24,
              runSpacing: AppDimens.s16,
              children: [
                AppButton(
                  text: "Send me an email",
                  icon: Icons.email_outlined,
                  isExpanded: false,
                  onPressed: () => _launchUrl("mailto:${user.email}"),
                ),

                OutlinedButton.icon(
                  onPressed: () => _launchUrl(user.cvUrl),
                  icon: const Icon(Icons.download, size: 20),
                  label: const Text("Download CV"),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    side: BorderSide(color: context.colors.primary, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppDimens.r8),
                    ),
                    foregroundColor: context.colors.primary,
                    textStyle: context.text.button,
                  ),
                ),
              ],
            ),

            // 5. Hobbies Section
            if (user.hobbies.isNotEmpty) ...[
              const SizedBox(height: AppDimens.s48),
              Text(
                "Personal Interests",
                style: context.text.h3.copyWith(
                  fontSize: 20,
                  color: context.colors.textPrimary,
                ),
              ),
              const SizedBox(height: AppDimens.s16),
              Wrap(
                spacing: 24,
                runSpacing: 16,
                children: user.hobbies.map((hobby) {
                  return _HobbyItem(hobby: hobby);
                }).toList(),
              ),
            ],

            // Khoảng cách bottom trước khi gặp Footer
            const SizedBox(height: AppDimens.s64),
          ],
        );

        return Container(
          color: context.colors.transparent,
          width: double.infinity,
          padding: const EdgeInsets.only(top: AppDimens.s64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                // VN: Logic hiển thị Desktop vs Mobile
                child: isDesktop
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Căn giữa theo chiều dọc
                        children: [
                          // Cột nội dung (chiếm 60%)
                          Expanded(flex: 6, child: mainContent),

                          const SizedBox(width: AppDimens.s48),

                          // Cột Lottie Animation (chiếm 40%) - Chỉ hiện trên Desktop
                          Expanded(
                            flex: 4,
                            child: Lottie.asset(
                              'assets/animations/contact.json', // Đường dẫn file lottie
                              fit: BoxFit.contain,
                              // Thêm key để tránh reload không cần thiết
                              key: const ValueKey('contact_animation'),
                            ),
                          ),
                        ],
                      )
                    : mainContent, // Mobile chỉ hiện nội dung dọc
              ),

              // 6. Footer (Full Width)
              PortfolioFooter(user: user),
            ],
          ),
        );
      },
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }
}

// --- HELPER WIDGETS (Giữ nguyên) ---

class _HighlightedDescription extends StatelessWidget {
  final String text;
  final TextStyle baseStyle;
  final Color highlightColor;
  final TextAlign textAlign;

  const _HighlightedDescription({
    required this.text,
    required this.baseStyle,
    required this.highlightColor,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    final parts = text.split('**');
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: baseStyle,
        children: List.generate(parts.length, (index) {
          if (index % 2 == 1) {
            return TextSpan(
              text: parts[index],
              style: baseStyle.copyWith(
                fontWeight: FontWeight.w900,
                color: highlightColor,
              ),
            );
          }
          return TextSpan(text: parts[index]);
        }),
      ),
    );
  }
}

class _ServiceTag extends StatelessWidget {
  final String text;

  const _ServiceTag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: context.colors.border),
      ),
      child: Text(
        text,
        style: context.text.body2.copyWith(
          fontWeight: FontWeight.w600,
          color: context.colors.textSecondary,
        ),
      ),
    );
  }
}

class _HobbyItem extends StatelessWidget {
  final String hobby;

  const _HobbyItem({required this.hobby});

  IconData _getIcon(String hobby) {
    final lower = hobby.toLowerCase();
    if (lower.contains('detective') || lower.contains('trinh thám')) {
      return FontAwesomeIcons.userSecret;
    }
    if (lower.contains('board') || lower.contains('game')) {
      return FontAwesomeIcons.chess;
    }
    if (lower.contains('coffee') || lower.contains('cafe')) {
      return FontAwesomeIcons.mugHot;
    }
    if (lower.contains('walk') || lower.contains('đi bộ')) {
      return FontAwesomeIcons.personWalking;
    }
    if (lower.contains('music') || lower.contains('nhạc')) {
      return FontAwesomeIcons.music;
    }
    return FontAwesomeIcons.heart;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FaIcon(_getIcon(hobby), size: 18, color: context.colors.primary),
        const SizedBox(width: 8),
        Text(
          hobby,
          style: context.text.body2.copyWith(
            color: context.colors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

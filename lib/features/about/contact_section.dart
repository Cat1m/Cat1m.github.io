import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/core/ui/ui.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final UserProfile user;

  const ContactSection({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      padding: const EdgeInsets.only(top: AppDimens.s64, bottom: AppDimens.s32),
      child: Column(
        children: [
          // 1. Availability Status
          if (user.isOpenToWork)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                children: [
                  Text(
                    // VN: FIX - Dùng contactHeading thay vì title
                    user.contactHeading,
                    style: context.text.h1.copyWith(
                      color: context.colors.primary,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppDimens.s16),

                  _HighlightedDescription(
                    // VN: FIX - Dùng contactDescription thay vì description
                    text: user.contactDescription,
                    baseStyle: context.text.body1.copyWith(
                      color: context.colors.textSecondary,
                      fontSize: 18,
                      height: 1.6,
                    ),
                    highlightColor: context.colors.textPrimary,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: AppDimens.s32),

          // 3. Services Tags
          if (user.services.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: user.services.map((service) {
                  return _ServiceTag(text: service);
                }).toList(),
              ),
            ),

          const SizedBox(height: AppDimens.s48),

          // 4. Call To Actions
          Wrap(
            spacing: AppDimens.s24,
            runSpacing: AppDimens.s16,
            alignment: WrapAlignment.center,
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

          const SizedBox(height: AppDimens.s64),
          Divider(color: context.colors.border),
          const SizedBox(height: AppDimens.s32),

          // 5. Footer Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
            child: Column(
              children: [
                Wrap(
                  spacing: 24,
                  alignment: WrapAlignment.center,
                  children: [
                    if (user.githubUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.github,
                        url: user.githubUrl!,
                      ),
                    if (user.linkedinUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.linkedin,
                        url: user.linkedinUrl!,
                      ),
                    if (user.mediumUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.medium,
                        url: user.mediumUrl!,
                      ),
                    if (user.facebookUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.facebook,
                        url: user.facebookUrl!,
                      ),
                  ],
                ),

                const SizedBox(height: AppDimens.s24),

                Text(
                  user.email,
                  style: context.text.body1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(user.location, style: context.text.caption),
                const SizedBox(height: AppDimens.s24),

                Text(
                  "© ${DateTime.now().year} Crafted with 💙 by ${user.name} using Flutter Web",
                  style: context.text.caption.copyWith(
                    color: context.colors.textSecondary.withOpacity(0.6),
                  ),
                  textAlign: TextAlign.center,
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

// ... (Giữ nguyên phần Helper Widgets: _HighlightedDescription, _ServiceTag, _SocialIcon)
// Bạn copy lại phần Helper Widgets ở file cũ vào dưới đây nhé
class _HighlightedDescription extends StatelessWidget {
  final String text;
  final TextStyle baseStyle;
  final Color highlightColor;

  const _HighlightedDescription({
    required this.text,
    required this.baseStyle,
    required this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    final parts = text.split('**');
    return RichText(
      textAlign: TextAlign.center,
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
        boxShadow: [
          BoxShadow(
            color: context.colors.textPrimary.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
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

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialIcon({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) await launchUrl(uri);
      },
      icon: FaIcon(icon, size: 24, color: context.colors.textSecondary),
      hoverColor: context.colors.primary.withOpacity(0.1),
      splashRadius: 24,
    );
  }
}

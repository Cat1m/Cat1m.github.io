import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/features/contact/model/contact_info.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class ContactSection extends StatelessWidget {
  final ContactInfo contact;

  const ContactSection({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context
          .colors
          .surface, // Dùng màu Surface để tạo sự phân cách với Blog
      padding: const EdgeInsets.only(
        top: AppDimens.s64,
        bottom: AppDimens.s32, // Padding bottom ít hơn vì có footer
      ),
      child: Column(
        children: [
          // 1. Availability Status
          if (contact.isOpenToWork)
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
                    contact.title,
                    style: context.text.h1.copyWith(
                      color: context.colors.primary,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppDimens.s16),

                  // VN: Thay Text thường bằng RichText xử lý bold
                  _HighlightedDescription(
                    text: contact.description,
                    baseStyle: context.text.body1.copyWith(
                      color: context.colors.textSecondary,
                      fontSize: 18,
                      height: 1.6,
                    ),
                    highlightColor:
                        context.colors.textPrimary, // Màu cho phần in đậm
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: AppDimens.s32),

          // 3. Services Tags (Remote, Freelance...)
          if (contact.services.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: contact.services.map((service) {
                  return _ServiceTag(text: service);
                }).toList(),
              ),
            ),

          const SizedBox(height: AppDimens.s48),

          // 4. Call To Actions (Buttons)
          Wrap(
            spacing: AppDimens.s24,
            runSpacing: AppDimens.s16,
            alignment: WrapAlignment.center,
            children: [
              // Primary: Email Me
              AppButton(
                text: "Send me an email",
                icon: Icons.email_outlined,
                isExpanded: false, // Button co gọn theo nội dung
                onPressed: () => _launchUrl("mailto:${contact.email}"),
              ),

              // Secondary: Download CV
              OutlinedButton.icon(
                onPressed: () => _launchUrl(contact.cvUrl),
                icon: Icon(Icons.download, size: 20),
                label: Text("Download CV"),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ), // Height khớp với AppButton
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

          // 5. Footer Info (Socials & Copyright)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
            child: Column(
              children: [
                // Social Icons
                Wrap(
                  spacing: 24,
                  alignment: WrapAlignment.center,
                  children: [
                    if (contact.githubUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons
                            .github, // Dùng package font_awesome_flutter
                        url: contact.githubUrl!,
                      ),
                    if (contact.linkedinUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.linkedin,
                        url: contact.linkedinUrl!,
                      ),
                    if (contact.mediumUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.medium,
                        url: contact.mediumUrl!,
                      ),
                    if (contact.facebookUrl != null)
                      _SocialIcon(
                        icon: FontAwesomeIcons.facebook,
                        url: contact.facebookUrl!,
                      ),
                  ],
                ),

                const SizedBox(height: AppDimens.s24),

                // Info Text
                Text(
                  contact.email,
                  style: context.text.body1.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(contact.location, style: context.text.caption),
                const SizedBox(height: AppDimens.s24),

                // Copyright
                Text(
                  "© ${DateTime.now().year} Crafted with 💙 by Minh Chien using Flutter Web",
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

// ================== HELPER WIDGETS ==================
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
    // 1. Tách chuỗi dựa trên dấu **
    // Ví dụ: "I am available for **Remote work** now"
    // -> ["I am available for ", "Remote work", " now"]
    final parts = text.split('**');

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: baseStyle,
        children: List.generate(parts.length, (index) {
          // Phần tử ở vị trí lẻ (1, 3, 5...) là phần nằm giữa ** và ** -> In đậm
          if (index % 2 == 1) {
            return TextSpan(
              text: parts[index],
              style: baseStyle.copyWith(
                fontWeight: FontWeight.w900, // Đậm hơn bình thường
                color: highlightColor, // Màu sáng hơn
              ),
            );
          }
          // Phần tử chẵn là text thường
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
      icon: FaIcon(
        // Dùng FaIcon của FontAwesome
        icon,
        size: 24,
        color: context.colors.textSecondary,
      ),
      hoverColor: context.colors.primary.withOpacity(0.1),
      splashRadius: 24,
    );
  }
}

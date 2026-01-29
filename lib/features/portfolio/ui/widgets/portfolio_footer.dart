import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/core/ui/ui.dart'; // Đảm bảo import đúng theme extension của bạn
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioFooter extends StatelessWidget {
  final UserProfile user;

  const PortfolioFooter({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.transparent,
        border: Border(
          top: BorderSide(color: context.colors.border.withOpacity(0.5)),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.s16,
        horizontal: AppDimens.s24,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // VN: Kiểm tra độ rộng để switch giao diện Desktop/Mobile
          if (constraints.maxWidth > 800) {
            return _DesktopFooter(user: user);
          }
          return _MobileFooter(user: user);
        },
      ),
    );
  }
}

class _DesktopFooter extends StatelessWidget {
  final UserProfile user;

  const _DesktopFooter({required this.user});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end, // Căn đáy để thẳng hàng
        children: [
          // 1. LEFT: Copyright + Built with Flutter (Giữ nguyên như cũ)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "© ${DateTime.now().year} ${user.name}",
                  style: context.text.body2.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                // Dòng Built with Flutter vẫn ở bên trái
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Built with Flutter ",
                      style: context.text.caption.copyWith(
                        color: context.colors.textSecondary,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 14,
                      color: context.colors.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 2. CENTER: Social Icons + Thanks (Chỉ thêm dòng Thanks vào đây)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _FooterSocialRow(user: user),

              const SizedBox(height: 8), // Khoảng cách nhỏ
              // Dòng Cảm ơn nằm dưới Social Icons
              Text(
                "Thanks for stopping by! 😸",
                style: context.text.caption.copyWith(
                  color: context.colors.textSecondary,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),

          // 3. RIGHT: Contact Info (Giữ nguyên)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  user.email,
                  style: context.text.body2.copyWith(
                    color: context.colors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(user.location, style: context.text.caption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MobileFooter extends StatelessWidget {
  final UserProfile user;

  const _MobileFooter({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. Social Icons
        _FooterSocialRow(user: user),
        const SizedBox(height: AppDimens.s24),

        // 2. Contact Info
        Text(
          user.email,
          style: context.text.body1.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(user.location, style: context.text.caption),

        const SizedBox(height: AppDimens.s24),
        Divider(
          color: context.colors.border.withOpacity(0.5),
          indent: 40,
          endIndent: 40,
        ),
        const SizedBox(height: AppDimens.s24),

        // 3. Copyright & Thanks
        Text(
          "© ${DateTime.now().year} ${user.name}",
          style: context.text.caption.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),

        // Dòng Built with Flutter (Mobile)
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Built with Flutter ",
              style: context.text.caption.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            Icon(Icons.favorite, size: 14, color: context.colors.primary),
          ],
        ),

        // --- NEW: LỜI CẢM ƠN (MOBILE) ---
        const SizedBox(height: 8),
        Text(
          "Thanks for stopping by! 😸",
          style: context.text.caption.copyWith(
            color: context.colors.textSecondary,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

// VN: Widget hiển thị row social icon dùng chung
class _FooterSocialRow extends StatelessWidget {
  final UserProfile user;

  const _FooterSocialRow({required this.user});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      alignment: WrapAlignment.center,
      children: [
        if (user.githubUrl != null)
          _FooterIcon(icon: FontAwesomeIcons.github, url: user.githubUrl!),
        if (user.linkedinUrl != null)
          _FooterIcon(icon: FontAwesomeIcons.linkedin, url: user.linkedinUrl!),
        if (user.mediumUrl != null)
          _FooterIcon(icon: FontAwesomeIcons.medium, url: user.mediumUrl!),
        if (user.facebookUrl != null)
          _FooterIcon(icon: FontAwesomeIcons.facebook, url: user.facebookUrl!),
      ],
    );
  }
}

class _FooterIcon extends StatelessWidget {
  final IconData icon;
  final String url;

  const _FooterIcon({required this.icon, required this.url});

  // VN: Hàm mở link
  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launch(url),
      borderRadius: BorderRadius.circular(50),
      hoverColor: context.colors.primary.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FaIcon(icon, size: 20, color: context.colors.textSecondary),
      ),
    );
  }
}

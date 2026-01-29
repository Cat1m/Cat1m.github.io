// file: features/about/about_section.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/ui/ui.dart';
import 'package:my_portfolio/features/about/models/user_profile/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  final UserProfile profile;

  const AboutSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    // VN: Không cần Stack hay Decoration nữa, chỉ cần Container trong suốt
    return Container(
      // VN: Dùng màu transparent để nhìn xuyên thấu xuống PortfolioBackground bên dưới
      color: context.colors.transparent,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimens.s64 + AppDimens.s16,
          horizontal: AppDimens.s24,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 900) {
              return _DesktopLayout(profile: profile);
            } else {
              return _MobileLayout(profile: profile);
            }
          },
        ),
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  final UserProfile profile;
  const _DesktopLayout({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: _ProfileAvatar(imgUrl: profile.avatarUrl, size: 220),
              ),
            ),
            const SizedBox(width: AppDimens.s48),
            Expanded(
              flex: 3,
              child: _AboutTextContent(
                profile: profile,
                align: CrossAxisAlignment.start,
              ),
            ),
            const SizedBox(width: AppDimens.s48),
            const Expanded(flex: 3, child: _WelcomeAnimationPlaceholder()),
          ],
        ),
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  final UserProfile profile;
  const _MobileLayout({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProfileAvatar(imgUrl: profile.avatarUrl, size: 200),
        const SizedBox(height: AppDimens.s32),
        _AboutTextContent(profile: profile, align: CrossAxisAlignment.center),
      ],
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  final String imgUrl;
  final double size;

  const _ProfileAvatar({required this.imgUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: context.colors.primary.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
          width: 4,
        ),
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.contain),
      ),
    );
  }
}

class _WelcomeAnimationPlaceholder extends StatelessWidget {
  const _WelcomeAnimationPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/cat_peek.json',
      height: 300,
      fit: BoxFit.contain,
    );
  }
}

class _AboutTextContent extends StatelessWidget {
  final UserProfile profile;
  final CrossAxisAlignment align;

  const _AboutTextContent({required this.profile, required this.align});

  @override
  Widget build(BuildContext context) {
    final isCenter = align == CrossAxisAlignment.center;

    return Column(
      crossAxisAlignment: align,
      children: [
        if (profile.isOpenToWork)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.s12,
              vertical: AppDimens.s4 + 2,
            ),
            margin: const EdgeInsets.only(bottom: AppDimens.s16),
            decoration: BoxDecoration(
              color: context.colors.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppDimens.r16),
              border: Border.all(color: context.colors.success),
            ),
            child: Text(
              "🟢 Open to Work",
              style: context.text.caption.copyWith(
                color: context.colors.success,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        Text(
          "Hi there, I'm",
          style: context.text.h3.copyWith(color: context.colors.textSecondary),
        ),

        const SizedBox(height: AppDimens.s8),

        Text(
          profile.name,
          style: context.text.h1.copyWith(
            color: context.colors.primary,
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s8),

        Text(
          profile.jobTitle,
          style: context.text.h2.copyWith(color: context.colors.textPrimary),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s8),

        Text(
          profile.tagline,
          style: context.text.body1.copyWith(
            fontStyle: FontStyle.italic,
            color: context.colors.textSecondary,
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s24),

        Text(
          profile.bio,
          style: context.text.body1.copyWith(height: 1.6),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s32),

        Wrap(
          spacing: AppDimens.s16,
          runSpacing: AppDimens.s16,
          alignment: isCenter ? WrapAlignment.center : WrapAlignment.start,
          children: [
            _SocialButton(
              icon: Icons.email,
              label: "Email Me",
              onTap: () => _launchUrl('mailto:${profile.email}'),
            ),
            if (profile.githubUrl != null)
              _SocialButton(
                icon: Icons.code,
                label: "GitHub",
                isOutlined: true,
                onTap: () => _launchUrl(profile.githubUrl!),
              ),
            if (profile.linkedinUrl != null)
              _SocialButton(
                icon: Icons.work,
                label: "LinkedIn",
                isOutlined: true,
                onTap: () => _launchUrl(profile.linkedinUrl!),
              ),
          ],
        ),
      ],
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final uri = Uri.parse(urlString);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isOutlined;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isOutlined) {
      return OutlinedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: AppDimens.icS),
        label: Text(
          label,
          style: context.text.button.copyWith(color: context.colors.primary),
        ),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.s20,
            vertical: AppDimens.s16,
          ),
          side: BorderSide(color: context.colors.textSecondary),
          foregroundColor: context.colors.primary,
        ),
      );
    }
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: AppDimens.icS, color: context.colors.background),
      label: Text(
        label,
        style: context.text.button.copyWith(color: context.colors.background),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.s24,
          vertical: AppDimens.s16,
        ),
        backgroundColor: context.colors.primary,
        foregroundColor: context.colors.surface,
      ),
    );
  }
}

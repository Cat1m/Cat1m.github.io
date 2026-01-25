import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:url_launcher/url_launcher.dart';
// VN: Import Core UI
import '../../../../core/ui/ui.dart';

class AboutSection extends StatelessWidget {
  final ProfileInfo profile;

  const AboutSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      // VN: Dùng màu nền từ Theme
      color: context.colors.background,
      child: Stack(
        children: [
          // ================== LAYER 1: DECORATIONS ==================
          Positioned(
            top: -100,
            left: -100,
            // VN: Blob dùng màu Primary mờ
            child: _BlurryBlob(
              color: context.colors.primary.withOpacity(0.15),
              size: 400,
            ),
          ),

          Positioned(
            bottom: 50,
            right: -50,
            // VN: Blob thứ 2 dùng màu Secondary mờ
            child: _BlurryBlob(
              color: context.colors.secondary.withOpacity(0.1),
              size: 300,
            ),
          ),

          if (size.width > 1000) ...[
            const Positioned(
              top: 100,
              right: 100,
              child: _FloatingIcon(icon: Icons.code, angle: 0.2),
            ),
            const Positioned(
              bottom: 100,
              left: 50,
              child: _FloatingIcon(icon: Icons.data_object, angle: -0.2),
            ),
            const Positioned(
              top: 200,
              left: 150,
              child: _FloatingIcon(
                icon: Icons.flutter_dash,
                angle: 0.1,
                size: 40,
              ),
            ),
          ],

          // ================== LAYER 2: MAIN CONTENT ==================
          Align(
            alignment: Alignment.center,
            child: Padding(
              // VN: Dùng AppDimens cho padding lớn (s64 + s16 = 80)
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
          ),
        ],
      ),
    );
  }
}

// ================== DESKTOP LAYOUT ==================
class _DesktopLayout extends StatelessWidget {
  final ProfileInfo profile;

  const _DesktopLayout({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. Avatar (Left)
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: _ProfileAvatar(imgUrl: profile.avatarUrl, size: 220),
              ),
            ),

            const SizedBox(width: AppDimens.s48), // ~40px
            // 2. Text Content (Center)
            Expanded(
              flex: 3,
              child: _AboutTextContent(
                profile: profile,
                align: CrossAxisAlignment.start,
              ),
            ),

            const SizedBox(width: AppDimens.s48),

            // 3. Welcome Animation (Right)
            const Expanded(flex: 3, child: _WelcomeAnimationPlaceholder()),
          ],
        ),
      ),
    );
  }
}

class _WelcomeAnimationPlaceholder extends StatelessWidget {
  const _WelcomeAnimationPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/animations/cat_peek.json', // Check lại path assets của bạn nhé
      height: 300,
      fit: BoxFit.contain,
    );
  }
}

// ================== MOBILE LAYOUT ==================
class _MobileLayout extends StatelessWidget {
  final ProfileInfo profile;

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

// ================== SHARED WIDGETS ==================

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
            // VN: Shadow màu Primary mờ
            color: context.colors.primary.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        // VN: Viền màu Primary nhạt
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
          width: 4,
        ),
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.contain),
      ),
    );
  }
}

class _AboutTextContent extends StatelessWidget {
  final ProfileInfo profile;
  final CrossAxisAlignment align;

  const _AboutTextContent({required this.profile, required this.align});

  @override
  Widget build(BuildContext context) {
    final isCenter = align == CrossAxisAlignment.center;

    return Column(
      crossAxisAlignment: align,
      children: [
        // Badge Open to Work
        if (profile.isOpenToWork)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.s12,
              vertical: AppDimens.s4 + 2,
            ),
            margin: const EdgeInsets.only(bottom: AppDimens.s16),
            decoration: BoxDecoration(
              // VN: Dùng màu Success từ Theme
              color: context.colors.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppDimens.r16), // ~20
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

        // Greeting
        Text(
          "Hi there, I'm",
          // VN: Dùng TextSecondary (màu xám)
          style: context.text.h3.copyWith(color: context.colors.textSecondary),
        ),

        const SizedBox(height: AppDimens.s8),

        // Name
        Text(
          profile.name,
          // VN: Dùng H1 + Màu Primary
          style: context.text.h1.copyWith(
            color: context.colors.primary,
            fontSize: 40, // Override size to hơn chuẩn H1 chút cho tên
            fontWeight: FontWeight.w900,
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s8),

        // Title
        Text(
          profile.title,
          style: context.text.h2.copyWith(color: context.colors.textPrimary),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s8),

        // Tagline
        Text(
          profile.tagline,
          // VN: Dùng Body1 + Italic
          style: context.text.body1.copyWith(
            fontStyle: FontStyle.italic,
            color: context.colors.textSecondary,
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s24),

        // Summary
        Text(
          profile.summary,
          style: context.text.body1.copyWith(height: 1.6),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        const SizedBox(height: AppDimens.s32),

        // Location & Socials
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
          // VN: Border màu text phụ
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
        // VN: Màu nút theo Primary
        backgroundColor: context.colors.primary,
        foregroundColor: context.colors.surface,
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
        // VN: Dùng TextPrimary mờ làm icon nền
        color: context.colors.textPrimary.withOpacity(0.05),
      ),
    );
  }
}

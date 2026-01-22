import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  final ProfileInfo profile;

  const AboutSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    // VN: Sử dụng LayoutBuilder để chia layout Desktop/Mobile
    return Container(
      // Padding lớn tạo cảm giác thoáng (Hero Style)
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      // Background nhẹ để phân biệt với section khác nếu cần
      color: Theme.of(context).scaffoldBackgroundColor,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            return _DesktopLayout(profile: profile);
          } else {
            return _MobileLayout(profile: profile);
          }
        },
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
        constraints: const BoxConstraints(
          maxWidth: 1300,
        ), // Tăng nhẹ max width cho thoáng
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. Avatar (Left) - Flex nhỏ (2) và size nhỏ hơn
            Expanded(
              flex: 1,
              // Căn lề phải để nó gần phần text hơn
              child: Align(
                alignment: Alignment.centerRight,
                // Giảm size từ 300 xuống 220
                child: _ProfileAvatar(imgUrl: profile.avatarUrl, size: 220),
              ),
            ),

            const SizedBox(width: 40), // Khoảng cách
            // 2. Text Content (Center) - Flex lớn nhất (4)
            Expanded(
              flex: 3,
              child: _AboutTextContent(
                profile: profile,
                align: CrossAxisAlignment.start,
              ),
            ),

            const SizedBox(width: 40), // Khoảng cách
            // 3. Welcome Animation (Right) - Flex vừa (3)
            const Expanded(
              flex: 4,
              // Dùng placeholder trong khi chờ bạn tìm file animation
              child: _WelcomeAnimationPlaceholder(),
            ),
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
    // Sau khi có file json, bạn chỉ cần dùng widget này:
    return Lottie.asset(
      'animations/hello_world.json', // Đường dẫn file của bạn
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
        // 1. Avatar (Top)
        _ProfileAvatar(imgUrl: profile.avatarUrl, size: 200),

        const SizedBox(height: 32),

        // 2. Text Content (Below) - Căn giữa cho đẹp trên mobile
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
        // Hiệu ứng đổ bóng nhẹ tạo chiều sâu
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(color: Colors.blue.shade100, width: 4),
        image: DecorationImage(
          image: NetworkImage(imgUrl), // Hoặc AssetImage nếu dùng ảnh local
          fit: BoxFit.cover,
        ),
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
    final textTheme = Theme.of(context).textTheme;
    final isCenter = align == CrossAxisAlignment.center;

    return Column(
      crossAxisAlignment: align,
      children: [
        // Badge Open to Work
        if (profile.isOpenToWork)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.green),
            ),
            child: const Text(
              "🟢 Open to Work",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),

        // Greeting
        Text(
          "Hi there, I'm",
          style: textTheme.titleLarge?.copyWith(color: Colors.grey),
        ),

        // Name
        const SizedBox(height: 8),
        Text(
          profile.name,
          style: textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.blue, // Màu điểm nhấn
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        // Title & Tagline
        const SizedBox(height: 8),
        Text(
          profile.title,
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 8),
        Text(
          profile.tagline,
          style: textTheme.bodyLarge?.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey[600],
          ),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        // Summary
        const SizedBox(height: 24),
        Text(
          profile.summary,
          style: textTheme.bodyLarge?.copyWith(height: 1.6),
          textAlign: isCenter ? TextAlign.center : TextAlign.start,
        ),

        // Location & Socials
        const SizedBox(height: 32),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          alignment: isCenter ? WrapAlignment.center : WrapAlignment.start,
          children: [
            _SocialButton(
              icon: Icons.email,
              label: "Email Me",
              onTap: () => _launchUrl('mailto:${profile.email}'),
            ),
            if (profile.githubUrl != null)
              _SocialButton(
                icon: Icons.code, // Hoặc dùng FontAwesomeIcons.github
                label: "GitHub",
                isOutlined: true,
                onTap: () => _launchUrl(profile.githubUrl!),
              ),
            if (profile.linkedinUrl != null)
              _SocialButton(
                icon: Icons.work, // Hoặc dùng FontAwesomeIcons.linkedin
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
        icon: Icon(icon, size: 18),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      );
    }
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 18),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    );
  }
}

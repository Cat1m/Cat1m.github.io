import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/ui/ui.dart';

class PortfolioBackground extends StatelessWidget {
  const PortfolioBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      // 1. Màu nền gốc (Base Color)
      color: context.colors.background,
      child: Stack(
        children: [
          // 2. Các đốm mờ (Blurry Blobs) - Trang trí
          Positioned(
            top: -100,
            left: -100,
            child: _BlurryBlob(
              color: context.colors.primary.withOpacity(0.15),
              size: 400,
            ),
          ),
          Positioned(
            bottom: 50,
            right: -50,
            child: _BlurryBlob(
              color: context.colors.secondary.withOpacity(0.1),
              size: 300,
            ),
          ),
          // Thêm một đốm ở giữa để trang đỡ trống khi cuộn xuống dưới
          Positioned(
            top: size.height * 0.5,
            left: size.width * 0.2,
            child: _BlurryBlob(
              color: context.colors.primary.withOpacity(0.05),
              size: 500,
            ),
          ),

          // 3. Floating Icons (Chỉ hiện trên Desktop cho đỡ rối Mobile)
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
            // Thêm icon trang trí ở dưới thấp cho các section khác
            const Positioned(
              bottom: 200,
              right: 200,
              child: _FloatingIcon(icon: Icons.coffee, angle: -0.1, size: 30),
            ),
          ],
        ],
      ),
    );
  }
}

// --- GIỮ NGUYÊN CÁC WIDGET CON TỪ ABOUT SECTION CŨ ---

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
        color: context.colors.textPrimary.withOpacity(0.05),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/features/blogs/model/blog_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/ui/ui.dart';

class BlogsSection extends StatefulWidget {
  final List<BlogItem> blogs;

  const BlogsSection({super.key, required this.blogs});

  @override
  State<BlogsSection> createState() => _BlogsSectionState();
}

class _BlogsSectionState extends State<BlogsSection> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scroll(double offset) {
    if (_scrollController.hasClients) {
      final currentPos = _scrollController.offset;
      final targetPos = currentPos + offset;
      _scrollController.animateTo(
        targetPos,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.blogs.isEmpty) return const SizedBox.shrink();

    // Responsive: Trên mobile thì ẩn Arrow buttons đi cho đỡ chật
    final isDesktop = MediaQuery.sizeOf(context).width > 800;

    return Container(
      color: context.colors.background,
      padding: const EdgeInsets.symmetric(vertical: AppDimens.s64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Header & Arrows Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.s24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Text Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sharing Knowledge",
                      style: context.text.h3.copyWith(
                        color: context.colors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: AppDimens.s8),
                    Text(
                      "Articles",
                      style: context.text.h1.copyWith(
                        color: context.colors.primary,
                      ),
                    ),
                  ],
                ),

                // Arrows (Chỉ hiện trên Desktop)
                if (isDesktop)
                  Row(
                    children: [
                      _ArrowButton(
                        icon: Icons.arrow_back_ios_new,
                        onTap: () => _scroll(-400),
                      ),
                      const SizedBox(width: AppDimens.s16),
                      _ArrowButton(
                        icon: Icons.arrow_forward_ios,
                        onTap: () => _scroll(400),
                      ),
                    ],
                  ),
              ],
            ),
          ),

          const SizedBox(height: AppDimens.s32),

          // 2. Carousel List
          SizedBox(
            height: 320, // Tăng height xíu để chứa scrollbar thoải mái
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
              ),
              child: Scrollbar(
                thumbVisibility: true,
                controller: _scrollController,
                // Tăng padding cho track scrollbar
                trackVisibility: true,
                thickness: 6,
                radius: const Radius.circular(10),
                child: ListView.separated(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: AppDimens.s24,
                    right: AppDimens.s24,
                    bottom: 24, // Padding bottom lớn để tách khỏi scrollbar
                    top: 10, // Padding top cho shadow card không bị cắt
                  ),
                  itemCount: widget.blogs.length,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: AppDimens.s32,
                  ), // Tăng khoảng cách card
                  itemBuilder: (context, index) {
                    return _NoImageBlogCard(blog: widget.blogs[index]);
                  },
                ),
              ),
            ),
          ),

          const SizedBox(height: AppDimens.s24),

          // 3. Button View All
          Center(
            child: AppButton(
              text: "VISIT MEDIUM PROFILE",
              isExpanded: false,
              icon: Icons.auto_stories,
              onPressed: () => _launchUrl("https://medium.com/@chien120697"),
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

// ================== ARROW BUTTON (Style mới: Vuông bo góc nhẹ) ==================
class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ArrowButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimens.r8),
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(AppDimens.r8),
          border: Border.all(color: context.colors.border),
        ),
        child: Icon(icon, size: 18, color: context.colors.textPrimary),
      ),
    );
  }
}

// ================== CARD (Giữ nguyên logic, chỉnh padding) ==================
class _NoImageBlogCard extends StatefulWidget {
  final BlogItem blog;
  const _NoImageBlogCard({required this.blog});

  @override
  State<_NoImageBlogCard> createState() => _NoImageBlogCardState();
}

class _NoImageBlogCardState extends State<_NoImageBlogCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Card rộng hơn để nội dung dàn trải đẹp
    const double cardWidth = 400;

    return InkWell(
      onTap: () => _launchUrl(widget.blog.link),
      onHover: (value) => setState(() => _isHovered = value),
      borderRadius: BorderRadius.circular(AppDimens.r16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: cardWidth,
        transform: Matrix4.identity()..translate(0.0, _isHovered ? -6.0 : 0.0),
        padding: const EdgeInsets.all(AppDimens.s24),
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(AppDimens.r16),
          border: Border.all(
            color: _isHovered ? context.colors.primary : context.colors.border,
            width: _isHovered ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: context.colors.textPrimary.withOpacity(
                _isHovered ? 0.08 : 0.03,
              ),
              blurRadius: _isHovered ? 20 : 10,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Meta
                Row(
                  children: [
                    Text(
                      DateFormat.yMMMd().format(widget.blog.publishedDate),
                      style: context.text.caption.copyWith(fontSize: 12),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: context.colors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 12,
                            color: context.colors.primary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            widget.blog.readTime,
                            style: context.text.caption.copyWith(
                              color: context.colors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimens.s16),

                // Title
                Text(
                  widget.blog.title,
                  style: context.text.h3.copyWith(
                    fontSize: 20,
                    height: 1.3,
                    color: _isHovered
                        ? context.colors.primary
                        : context.colors.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppDimens.s8),

                // Desc
                Text(
                  widget.blog.description,
                  style: context.text.body2.copyWith(
                    color: context.colors.textSecondary,
                    height: 1.5,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),

            // Bottom Meta
            Row(
              children: [
                Icon(Icons.tag, size: 16, color: context.colors.textSecondary),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    widget.blog.tags.take(2).join(", "),
                    style: context.text.caption.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: _isHovered
                      ? context.colors.primary
                      : context.colors.border,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }
}

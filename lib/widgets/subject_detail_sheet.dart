import 'package:flutter/material.dart';
import '../models/subject.dart';
import '../theme/app_theme.dart';

class SubjectDetailSheet extends StatelessWidget {
  final Subject subject;
  final Color categoryColor;

  const SubjectDetailSheet({
    super.key,
    required this.subject,
    required this.categoryColor,
  });

  static void show(BuildContext context, Subject subject, Color categoryColor) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SubjectDetailSheet(
        subject: subject,
        categoryColor: categoryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.85,
      decoration: const BoxDecoration(
        color: AppTheme.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _buildHeader(context),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildQuickInfo(),
                    const SizedBox(height: 32),
                    _buildSectionTitle('과목 개요', Icons.description_outlined),
                    const SizedBox(height: 12),
                    _buildDescription(),
                    const SizedBox(height: 32),
                    _buildSectionTitle(
                        '주요 학습 포인트', Icons.auto_awesome_outlined),
                    const SizedBox(height: 16),
                    _buildKeyPoints(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 160,
      pinned: true,
      backgroundColor: categoryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    categoryColor,
                    categoryColor.withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -20,
              top: -20,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
              ),
            ),
            Center(
              child: Hero(
                tag: 'subject_icon_${subject.name}',
                child: Icon(
                  Icons.school_rounded,
                  size: 64,
                  color: Colors.white.withValues(alpha: 0.2),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          subject.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.close_rounded, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickInfo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _infoTag(
            icon: Icons.bolt_rounded,
            label: '${subject.units}단위',
            color: categoryColor,
          ),
          const SizedBox(width: 8),
          _infoTag(
            icon: subject.type.label == '일반선택'
                ? Icons.star_rounded
                : Icons.extension_rounded,
            label: subject.type.label,
            color: subject.type.color,
          ),
          if (subject.isRequired) ...[
            const SizedBox(width: 8),
            _infoTag(
              icon: Icons.verified_user_rounded,
              label: '필수 이수',
              color: const Color(0xFFD4AF37),
            ),
          ],
        ],
      ),
    );
  }

  Widget _infoTag(
      {required IconData icon, required String label, required Color color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppTheme.textDark),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: AppTheme.textDark,
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        subject.description,
        style: const TextStyle(
          fontSize: 15,
          height: 1.6,
          color: AppTheme.textDark,
        ),
      ),
    );
  }

  Widget _buildKeyPoints() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: subject.keyPoints.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black.withValues(alpha: 0.02)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: categoryColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, size: 12, color: categoryColor),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  subject.keyPoints[index],
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppTheme.textDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

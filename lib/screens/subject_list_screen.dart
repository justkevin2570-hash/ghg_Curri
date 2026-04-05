import 'package:flutter/material.dart';
import '../models/subject.dart';
import '../theme/app_theme.dart';
import '../widgets/subject_detail_sheet.dart';

class SubjectListScreen extends StatefulWidget {
  final SubjectCategory category;

  const SubjectListScreen({super.key, required this.category});

  @override
  State<SubjectListScreen> createState() => _SubjectListScreenState();
}

class _SubjectListScreenState extends State<SubjectListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          _buildAppBar(innerBoxIsScrolled),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [1, 2, 3].map((grade) => _buildSubjectList(grade)).toList(),
        ),
      ),
    );
  }

  Widget _buildAppBar(bool isScrolled) {
    return SliverAppBar(
      expandedHeight: 120,
      pinned: true,
      elevation: isScrolled ? 4 : 0,
      backgroundColor: widget.category.color,
      foregroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          '${widget.category.name} 교과',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        background: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    widget.category.color,
                    widget.category.color.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -20,
              bottom: -20,
              child: Icon(
                widget.category.icon,
                size: 100,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Container(
          decoration: const BoxDecoration(
            color: AppTheme.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: widget.category.color,
            unselectedLabelColor: AppTheme.textGrey,
            indicatorColor: widget.category.color,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.transparent,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),
            tabs: const [
              Tab(text: '1학년'),
              Tab(text: '2학년'),
              Tab(text: '3학년'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubjectList(int grade) {
    final gradeSubjects = widget.category.getGrade(grade);
    final subjects = gradeSubjects.subjects;

    if (subjects.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_stories_outlined,
                size: 64, color: AppTheme.textGrey.withValues(alpha: 0.3)),
            const SizedBox(height: 16),
            const Text(
              '이 학년에는 개설된 과목이 없어요',
              style: TextStyle(
                  color: AppTheme.textGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        final subject = subjects[index];
        return _buildSubjectCard(subject, index);
      },
    );
  }

  Widget _buildSubjectCard(Subject subject, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: widget.category.color.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () =>
              SubjectDetailSheet.show(context, subject, widget.category.color),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Hero(
                  tag: 'subject_icon_${subject.name}',
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: widget.category.color.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: widget.category.color,
                      size: 26,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject.name,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: AppTheme.textDark,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          _badge('${subject.units}단위',
                              widget.category.color.withValues(alpha: 0.7)),
                          const SizedBox(width: 6),
                          _badge(subject.type.label, subject.type.color),
                          if (subject.isRequired) ...[
                            const SizedBox(width: 6),
                            _badge('필수', const Color(0xFFD4AF37)),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppTheme.textGrey.withValues(alpha: 0.4),
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _badge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const _HeaderSection(),
              const SizedBox(height: 22),
              const _EnrollButton(),
              const SizedBox(height: 24),
              const _AboutSection(),
              const SizedBox(height: 28),
              const _CourseContentTitle(),
              const SizedBox(height: 18),

              /// Introduction
              _SectionCard(
                title: "Introduction",
                items: "3 items",
                lessons: const [
                  LessonData(
                    title: "Welcome to the Course",
                    duration: "5:30",
                    type: LessonType.video,
                    active: true,
                  ),
                  LessonData(
                    title: "Course Overview",
                    duration: "8:45",
                    type: LessonType.video,
                    active: true,
                  ),
                  LessonData(
                    title: "Getting Started Guide",
                    duration: "",
                    type: LessonType.file,
                    active: false,
                  ),
                ],
              ),

              const SizedBox(height: 22),

              /// Core Concepts
              _SectionCard(
                title: "Core Concepts",
                items: "4 items",
                lessons: const [
                  LessonData(
                    title: "Fundamentals Part 1",
                    duration: "15:20",
                    type: LessonType.video,
                    active: true,
                  ),
                  LessonData(
                    title: "Fundamentals Part 2",
                    duration: "18:45",
                    type: LessonType.video,
                    active: false,
                  ),
                  LessonData(
                    title: "Practice Exercises",
                    duration: "",
                    type: LessonType.file,
                    active: false,
                  ),
                  LessonData(
                    title: "Quiz: Core Concepts",
                    duration: "20 min",
                    type: LessonType.quiz,
                    active: false,
                  ),
                ],
              ),

              const SizedBox(height: 22),

              /// Advanced Topics
              _SectionCard(
                title: "Advanced Topics",
                items: "3 items",
                lessons: const [
                  LessonData(
                    title: "Advanced Techniques",
                    duration: "22:10",
                    type: LessonType.video,
                    active: false,
                  ),
                  LessonData(
                    title: "Real-world Applications",
                    duration: "19:30",
                    type: LessonType.video,
                    active: false,
                  ),
                  LessonData(
                    title: "Final Project",
                    duration: "",
                    type: LessonType.file,
                    active: false,
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

/// HEADER

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 30),
      decoration: const BoxDecoration(
        color: Color(0xff5EA2FF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 18),
              SizedBox(width: 5),
              Text("Back", style: TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            children: [
              Container(
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                  size: 42,
                ),
              ),
              const SizedBox(width: 18),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Web Development\nFundamentals",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Dr. Sarah Johnson",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          Icons.people_outline,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "students",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.star, color: Colors.white, size: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// ENROLL BUTTON

class _EnrollButton extends StatelessWidget {
  const _EnrollButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 62,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xff3E86F5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
              side: const BorderSide(color: Color(0xff3E86F5)),
            ),
          ),
          child: const Text(
            "Enroll in Course",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

/// ABOUT SECTION

class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About this course",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 18),
            Text(
              "Learn the fundamentals and advanced concepts that will prepare you for real-world applications. This comprehensive course includes video lectures, hands-on exercises, and quizzes to test your understanding.",
              style: TextStyle(
                fontSize: 18,
                height: 1.6,
                color: Color(0xff6C7480),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// TITLE

class _CourseContentTitle extends StatelessWidget {
  const _CourseContentTitle();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Course Content",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          Text(
            "3 sections",
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

/// SECTION CARD

class _SectionCard extends StatelessWidget {
  final String title;
  final String items;
  final List<LessonData> lessons;

  const _SectionCard({
    required this.title,
    required this.items,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    items,
                    style: const TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            ...lessons.map((e) => _LessonTile(data: e)),
          ],
        ),
      ),
    );
  }
}

/// MODEL

enum LessonType { video, file, quiz }

class LessonData {
  final String title;
  final String duration;
  final LessonType type;
  final bool active;

  const LessonData({
    required this.title,
    required this.duration,
    required this.type,
    required this.active,
  });
}

/// LESSON TILE

class _LessonTile extends StatelessWidget {
  final LessonData data;

  const _LessonTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundColor: data.active
                ? const Color(0xffEAF2FF)
                : const Color(0xffEEF1F4),
            child: Icon(
              _icon(),
              color: data.active ? const Color(0xff3E86F5) : Colors.grey,
            ),
          ),
          title: Text(data.title, style: const TextStyle(fontSize: 20)),
          trailing: data.duration.isEmpty
              ? null
              : Text(data.duration, style: const TextStyle(color: Colors.grey)),
        ),
        const Divider(height: 1),
      ],
    );
  }

  IconData _icon() {
    switch (data.type) {
      case LessonType.video:
        return Icons.play_arrow;
      case LessonType.file:
        return Icons.description_outlined;
      case LessonType.quiz:
        return Icons.check_circle_outline;
    }
  }
}

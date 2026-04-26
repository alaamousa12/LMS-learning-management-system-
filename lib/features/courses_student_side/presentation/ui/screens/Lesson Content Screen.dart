import 'package:flutter/material.dart';

class LessonContentScreen extends StatelessWidget {
  const LessonContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const _VideoSection(),

              const SizedBox(height: 24),

              const _LessonDescriptionCard(),

              const SizedBox(height: 22),

              const _KeyTakeawaysCard(),

              const SizedBox(height: 28),

              const _CompleteButton(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

/// VIDEO PLAYER SECTION

class _VideoSection extends StatelessWidget {
  const _VideoSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 18),
                SizedBox(width: 8),
                Text(
                  "Back to Course",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          /// CONTROLS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Column(
              children: [
                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(width: 18),
                        Icon(Icons.skip_next, color: Colors.white, size: 32),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.volume_up, color: Colors.white, size: 30),
                        SizedBox(width: 18),
                        Icon(Icons.fullscreen, color: Colors.white, size: 30),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// DESCRIPTION CARD

class _LessonDescriptionCard extends StatelessWidget {
  const _LessonDescriptionCard();

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
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to the Course",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 18),

            Text(
              "In this lecture, we'll cover the fundamental concepts that form the foundation of this subject. Make sure to take notes and practice along with the examples provided.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff6B7280),
                height: 1.6,
              ),
            ),

            SizedBox(height: 24),

            Row(
              children: [
                Icon(
                  Icons.description_outlined,
                  color: Color(0xff6B7280),
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  "Lecture notes available below",
                  style: TextStyle(fontSize: 18, color: Color(0xff6B7280)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// KEY TAKEAWAYS

class _KeyTakeawaysCard extends StatelessWidget {
  const _KeyTakeawaysCard();

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
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Key Takeaways",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),

            const SizedBox(height: 20),

            _bullet("Understanding the core principles and their applications"),
            const SizedBox(height: 16),

            _bullet("Practical examples and real-world use cases"),
            const SizedBox(height: 16),

            _bullet("Best practices and common pitfalls to avoid"),
          ],
        ),
      ),
    );
  }

  Widget _bullet(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: CircleAvatar(radius: 4, backgroundColor: Colors.blue),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff6B7280),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}

/// BUTTON

class _CompleteButton extends StatelessWidget {
  const _CompleteButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff4A90E2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            elevation: 6,
          ),
          child: const Text(
            "Mark as Complete",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

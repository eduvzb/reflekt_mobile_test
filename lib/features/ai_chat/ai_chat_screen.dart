import 'package:flutter/material.dart';
import 'package:reflekt_mobile_test/features/ai_chat/widgests/chat_card.dart';
import 'package:reflekt_mobile_test/features/ai_chat/widgests/section_title.dart';
import 'package:reflekt_mobile_test/settings/app_colors.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buildLeadingIcon(),
        titleSpacing: 0,
        backgroundColor: Colors.white,
        title: _buildAppBarTitle(),
        bottom: _buildAppBarBottomLine(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView(
          children: [
            _buildExploreNutritionTile(),
            const SectionTitle(
              title: 'Recent chats',
              description: 'See your recent conversations',
            ),
            _buildRecentChats(),
            const SectionTitle(
              title: 'Quick start',
              description: 'Here\'re a few ideas to help your start',
            ),
            _buildQuickStartCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildLeadingIcon() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: AppColors.outlineColor,
          width: 1.0,
        ),
      ),
      child: const Icon(
        Icons.arrow_back,
        size: 16,
        color: AppColors.iconColor,
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return const Text(
      'AI-Powered chat',
      style: TextStyle(
        fontFamily: 'Carena',
        color: AppColors.primaryTextColor,
        fontSize: 25.0,
      ),
    );
  }

  PreferredSize _buildAppBarBottomLine() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(2.0),
      child: Container(
        color: Colors.black,
        height: 1.0,
      ),
    );
  }

  Widget _buildExploreNutritionTile() {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      title: const Text(
        'Explore nutrition chat',
        style: TextStyle(
          color: AppColors.primaryTextColor,
          fontFamily: 'Carena',
          fontSize: 30.0,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 3.0),
          const SizedBox(
            width: 300,
            child: Text(
              'Meet our newest feature: personalized dietary advice at your fingertips',
              style: TextStyle(
                fontSize: 15.0,
                color: AppColors.secondaryTextColor,
              ),
            ),
          ),
          const SizedBox(height: 11.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.buttonColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Start a new chat'.toUpperCase()),
                ),
                const ImageIcon(
                  AssetImage('assets/icons/message_bubbles.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecentChats() {
    return const Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ChatCard(
              text: '5 Ideas to reduce my weight',
              icon: 'assets/icons/dumbbell.png',
            ),
            ChatCard(
              text: 'Easy Pasta recipes with few ingredients',
              icon: 'assets/icons/apple.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStartCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '5 ways to reduce my weight',
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Tap "Start" to begin',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(height: 18.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            'Start'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          const ImageIcon(
                            AssetImage('assets/icons/arrow_right.png'),
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/thinking_man.png',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}

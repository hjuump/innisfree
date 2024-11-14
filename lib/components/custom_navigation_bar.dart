import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05), // 그림자 색상
            blurRadius: 20, // 그림자 흐림 정도
            offset: const Offset(0, 0), // 그림자 위치 조정
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12, // 텍스트 크기 고정
        unselectedFontSize: 12, // 텍스트 크기 고정
        items: [
          _buildNavigationItem(
            icon: Icons.home,
            label: '홈',
          ),
          _buildNavigationItem(
            icon: Icons.video_call,
            label: '라이브',
          ),
          _buildNavigationItem(
            icon: Icons.eco,
            label: '그린',
          ),
          _buildNavigationItem(
            icon: Icons.person,
            label: '마이',
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavigationItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.black.withOpacity(0.2),
      ),
      activeIcon: Icon(
        icon,
        color: Colors.black, // 활성 상태 아이콘 색상 설정
      ),
      label: label,
    );
  }
}

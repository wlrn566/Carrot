import 'package:carrot/utils/color.dart';
import 'package:carrot/utils/text.dart';
import 'package:carrot/widgets/carrot_app_bar.dart';
import 'package:carrot/widgets/divider.dart';
import 'package:flutter/material.dart';

class TownLife extends StatelessWidget {
  const TownLife({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "주제",
      "인기글",
      "동네맛집",
      "동네질문",
      "동네소식",
      "생활정보",
      "취미생활",
      "일상",
      "분실/실종센터",
      "동네사건사고",
      "해주세요",
      "동네사진전"
    ];

    List<Map<String, dynamic>> datas = [
      {
        "title": "요즘 쓰레기가 너무 많네요..",
        "content": "아침 출근길에 쓰레기가 너무 많아서 발 딛일 틈이 없어요.. 청소를 하는건지..;;",
        "time": "우산동 - 1시간 전",
      },
      {
        "title": "대장부 김치찌개 맛짐..",
        "content": "드디어 찾았습니가.. 김치찌개 맛집!!",
        "time": "우산동 - 2시간 전",
      },
      {
        "title": "당근 알바구해요 ㅠ",
        "content": "당근에서 혹시 알바 필요하신 분 연락주세요..",
        "time": "우산동 - 3시간 전",
      },
      {
        "title": "공원에서 귀여운 강아지를 봤어요!",
        "content": "산책하다가 귀여운 강아지를 봣어요 ㅋㅋ 멀뚱 쳐다보는게 너무 귀엽네용! ㅎㅎ",
        "time": "우산동 - 3시간 전",
      },
      {
        "title": "동사무소 가시면 쓰레기봉투 주에욤",
        "content": "동사무소에 현수막 걸려있어요~",
        "time": "우산동 - 3시간 전",
      },
      {
        "title": "밴드 동아리 구합니다.",
        "content": "밴드 동아리 구합니다. 베이스 기타는 계시고, 보컬, 드럼 구해요",
        "time": "우산동 - 5시간 전",
      },
      {
        "title": "맥주 마실분! 지금!",
        "content": "대장부 김치찌개 앞 공원에 와주세용!",
        "time": "우산동 - 5시간 전",
      },
      {
        "title": "고양이 찾아요...",
        "content": "우리 고양이 찾아요. 수컷이고 노란색..",
        "time": "우산동 - 6시간 전",
      },
      {
        "title": "중흥 아파트 앞 사거리에서 크게 사고 났네요.",
        "content": "출근길에 났나보네요.. 다들 조심",
        "time": "우산동 - 8시간 전",
      },
    ];

    return Scaffold(
      backgroundColor: getColorWhite(),
      appBar: CarrotAppBar(
        appBar: AppBar(), 
        tabIndex: 1,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(20.0),
                      onTap: () {
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: getColorGrey()),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center(
                            child: getTextFont14(text: categories[index], color: getColorBlack())
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: categories.length, 
                  separatorBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(),
                    );
                  },
                ),
              ),
            );
          } else {
            return InkWell(
              onTap: () {
                
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(.0),
                        color: getColorGreyLight()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: getTextFont12(text: categories[index], color: getColorBlack()),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    getTextFont15(text: datas[index - 1]["title"], color: getColorBlack()),
                    const SizedBox(height: 8.0),
                    getTextFont13(text: datas[index - 1]["content"], color: getColorGrey()),
                    const SizedBox(height: 8.0),
                    getTextFont12(text: datas[index - 1]["time"], color: getColorGrey()),
                  ],
                ),
              ),
            );
          }
        }, 
        separatorBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: getDivider(),
            );

          } else{
            return 
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: getDivider(),
            );
          }
        }, 
        itemCount: 10
      ),
    );
  }
}
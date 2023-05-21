import 'package:carrot/utils/color.dart';
import 'package:carrot/utils/text.dart';
import 'package:carrot/widgets/carrot_app_bar.dart';
import 'package:carrot/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              padding: const EdgeInsets.only(bottom: 8.0),
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
                      padding: const EdgeInsets.all(4.0),
                      child: Container(),
                    );
                  },
                ),
              ),
            );
          } else {
            return Container(height: 100, color: Colors.blue);
          }
        }, 
        separatorBuilder: (context, index) {
          return getDivider();
        }, 
        itemCount: 10
      ),
    );
  }
}
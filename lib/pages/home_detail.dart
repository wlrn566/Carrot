import 'dart:developer';

import 'package:carrot/data/static_datas.dart';
import 'package:carrot/utils/color.dart';
import 'package:carrot/utils/text.dart';
import 'package:carrot/widgets/divider.dart';
import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({super.key, required this.data});

  final Map<String, dynamic> data; // 클릭하여 넘어온 데이터

  @override
  Widget build(BuildContext context) {
    log(data.toString());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true, // 앱바가 위젯 위에 위치하게끔
      appBar: AppBar(
        backgroundColor: getColorTransparent(), 
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: getColorWhite()),
        ),
      ),
      backgroundColor: getColorWhite(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  data['image'], 
                  height: height * 0.4,
                  fit: BoxFit.cover
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      getProfileWidget(),
                      const SizedBox(height: 20.0),
                      getDivider(),
                      const SizedBox(height: 30.0),
                      getTextFont20(text: data['title'], color: getColorBlack(), fontWeight: FontWeight.w900),
                      const SizedBox(height: 10.0),
                      getTextFont15(text: "의자 팔아요. 밥먹을 때 빼고 잘 사용하지 않아서 팝니다. 2개에 만원이에요.", color: getColorBlack(), textOverflow: null),
                      const SizedBox(height: 20.0),
                      getTextFont15(text: "거래희망장소", color: getColorBlack(), fontWeight: FontWeight.w900),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 200,
                        width: width,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: getColorGreyLight()),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(Icons.map_outlined),
                      ),
                      const SizedBox(height: 30.0),
                      getDivider(),
                      const SizedBox(height: 20.0),
                      getTextFont15(text: "이 글도 있어요", color: getColorBlack(), fontWeight: FontWeight.w900),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: () {
                    // do something
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: width * 0.5,
                            height: width * 0.3,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5, color: getColorGreyLight()),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          child: ClipRRect( // 이미지 둥글게 처리
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              homeDatas[index]['image'], 
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        getTextFont15(text: homeDatas[index]['title'], color: getColorBlack()),
                        getTextFont15(text: homeDatas[index]['price'], color: getColorBlack()),
                      ],
                    ),
                  ),
                );
              },
            childCount: homeDatas.length
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 행에 보여줄 item 개수
              mainAxisSpacing: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget getProfileWidget() {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: getColorGreyLight(),
            child: Icon(Icons.person, color: getColorWhite()),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTextFont14(text: "우산주민", color: getColorBlack()),
              getTextFont12(text: "우산동", color: getColorBlack()),
            ],
          )
        ],
      ),
    );  
  }

}
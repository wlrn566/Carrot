import 'package:carrot/utils/color.dart';
import 'package:carrot/utils/text.dart';
import 'package:carrot/widgets/carrot_app_bar.dart';
import 'package:carrot/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> datas = [
      {
        "title": "의자 팔아요",
        "time": "우산동 - 1시간 전",
        "price": "10,000원",
        "image": "https://cdn.pixabay.com/photo/2015/06/19/21/33/beach-815303_1280.jpg"
      },
      {
        "title": "구두 싸게 팝니다.",
        "time": "우산동 - 2시간 전",
        "price": "80,000원",
        "image": "https://cdn.pixabay.com/photo/2015/01/06/16/24/shoe-590516_640.jpg"
      },
      {
        "title": "애플 맥북 팔아요~",
        "time": "우산동 - 4시간 전",
        "price": "500,000원",
        "image": "https://cdn.pixabay.com/photo/2015/01/08/18/25/desk-593327_640.jpg"
      },
      {
        "title": "드라이기 거의 새것",
        "time": "우산동 - 5시간 전",
        "price": "50,000원",
        "image": "https://cdn.pixabay.com/photo/2014/04/03/10/52/blow-dryer-311549_640.png"
      },
      {
        "title": "맥북 프로 2021",
        "time": "우산동 - 5시간 전",
        "price": "800,000원",
        "image": "https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_640.jpg"
      },
      {
        "title": "옷",
        "time": "우산동 - 5시간 전",
        "price": "80,000원",
        "image": "https://cdn.pixabay.com/photo/2013/07/12/18/22/t-shirt-153368_640.png"
      },
      {
        "title": "지갑 새거",
        "time": "우산동 - 6시간 전",
        "price": "100,000원",
        "image": "https://cdn.pixabay.com/photo/2016/12/27/14/35/money-1934036_640.jpg"
      },
      {
        "title": "갤럭시 버즈 팝니다",
        "time": "우산동 - 8시간 전",
        "price": "9,000원",
        "image": "https://cdn.pixabay.com/photo/2018/04/23/14/14/bluetooth-headset-3344348_640.png"
      },

    ];
    return Scaffold(
      backgroundColor: getColorWhite(),
      appBar: CarrotAppBar(
        appBar: AppBar(), 
        tabIndex: 0
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: getColorGreyLight()),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          datas[index]["image"],
                          height: (Get.width / 3) - 24.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: (Get.width / 3) - 24.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getTextFont15(text: datas[index]["title"], color: getColorBlack()),
                        getTextFont12(text: datas[index]["time"], color: getColorGrey()),
                        getTextFont15(text: datas[index]["price"], fontWeight: FontWeight.w700, color: getColorBlack())
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }, 
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: getDivider(),
          );
        }, 
        itemCount: datas.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: getColorCarrot(),
        onPressed: () {

        },
        child: Icon(Icons.add, color: getColorWhite(),),
      ),
    );
  }
}
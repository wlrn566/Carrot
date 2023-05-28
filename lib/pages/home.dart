import 'package:carrot/data/static_datas.dart';
import 'package:carrot/pages/home_detail.dart';
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
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomeDetail(data: homeDatas[index])
                )
              ); 
            },
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: getColorGreyLight()),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          homeDatas[index]["image"],
                          height: (Get.width / 3) - 30.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: (Get.width / 3) - 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getTextFont15(text: homeDatas[index]["title"], color: getColorBlack()),
                        getTextFont12(text: homeDatas[index]["time"], color: getColorGrey()),
                        getTextFont15(text: homeDatas[index]["price"], fontWeight: FontWeight.w700, color: getColorBlack())
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
            padding: const EdgeInsets.all(10.0),
            child: getDivider(),
          );
        }, 
        itemCount: homeDatas.length,
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
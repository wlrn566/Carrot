import 'package:carrot/utils/color.dart';
import 'package:carrot/widgets/app_bar.dart';
import 'package:carrot/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColorWhite(),
      appBar: CarrotAppBar(appBar: AppBar()),
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
                        border: Border.all(width: 1, color: getColorGrey()),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2015/06/19/21/33/beach-815303_1280.jpg",
                          height: (Get.width / 3) - 16.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: (Get.width / 3) - 16.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("책상 팔아요"),
                        Text("동명동 - 1시간 전"),
                        Text("10000원"),
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
            padding: const EdgeInsets.all(8.0),
            child: getDivider(),
          );
        }, 
        itemCount: 10,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/Day9&10_Wallpaper_App/pages/favPage.dart';
import 'package:flutter_ui_challenges/Day9&10_Wallpaper_App/widgets/ImagesWidget.dart';
import '../widgets/search_widget.dart';

class Day9DetailScreen extends StatelessWidget {
  const Day9DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text(
                      'WallPapers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, '/favPage');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FavPage()));
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),

              // Search Widget
              SearchWidget(),

              // TabBar
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.symmetric(horizontal: 5),
                indicator: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2)),
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Trending'),
                  Tab(text: 'Featured'),
                  Tab(text: 'Nature'),
                  Tab(text: 'Sky'),
                  Tab(text: 'Sea'),
                ],
              ),
              Flexible(
                child: Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_learn/101/icon_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        appBar: AppBar(),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
         // shape: CircularNotchedRectangle(),
          child: tabbar(),
        ),

        body: tabbarView(),
      ),
    );
  }

  TabBar tabbar() {
    return TabBar(
          controller: _tabController,
          padding: EdgeInsets.zero,
          onTap: (int index){},
          tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList(),
        );
  }

  TabBarView tabbarView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          ImageLearn(),
          IconLearn(),
          IconLearn(),
          IconLearn(),
        ],
      );
  }
}

enum _MyTabViews {
  home, settings,favorite,profile
}

extension _MyTabViewExtension on _MyTabViews {
}


/*
              main de theme içinde yaz

              indicatorColor: Colors.white,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.green,
              onTap: (int index){}
            */

/*
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: "Page 1",
              ),
              Tab(
                text: "Page 2",
              ),
            ],
          ),
 */
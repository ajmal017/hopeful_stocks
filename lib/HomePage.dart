import 'package:flutter/material.dart';
import 'package:hopeful_stocks/pages/StocksPage.dart';
import 'package:hopeful_stocks/pages/PortfolioPage.dart';

class HomePage extends StatefulWidget{
  //create a state for our homepage, since its reactive
  @override
  _HomePage createState() => new _HomePage ();

}

class _HomePage extends State <HomePage> with SingleTickerProviderStateMixin{


  //tab controller so we can switch tabs
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    //we make the 'initial index' this specific page and have 2 tabs.
    _tabController = new TabController(vsync: this,initialIndex: 1,length: 2);

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //new app bar
        title: new Text(" Stock App"),
        elevation: 0.7,
        //tab bar for pages
        bottom: new TabBar(
          //control with variable of tab controller called in initState
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            //the tabs (need 2 if defined 2)
            new Tab(text:"Stocks"),
            new Tab(text: "Portfolio"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          //the classes (under pages folder)
          new StocksPage(),
          new PortfolioPage()

        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  const TabOrnek({Key? key}) : super(key: key);

  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Kullanımı'),
        bottom: tabBarimBottom(),
      ),
      bottomNavigationBar: tabBarimBottom(),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            child: const Center(
                child: Text(
              'TAB 1',
              style: TextStyle(fontSize: 48),
            )),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Center(
                child: Text(
              'TAB 2',
              style: TextStyle(fontSize: 48),
            )),
          ),
          Container(
            color: Colors.greenAccent,
            child: const Center(
                child: Text(
              'TAB 3',
              style: TextStyle(fontSize: 48),
            )),
          ),
        ],
      ),
    );
  }

  TabBar tabBarim() {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        icon: Icon(Icons.keyboard),
        text: 'Tab 1',
      ),
      Tab(
        icon: Icon(Icons.lock),
        text: 'Tab 2',
      ),
      Tab(
        icon: Icon(Icons.add_box),
        text: 'Tab 3',
      ),
    ]);
  }

  PreferredSizeWidget tabBarimBottom() {
    return PreferredSize(
      child: Container(
        color: Colors.tealAccent,
        child: TabBar(controller: tabController, tabs: const [
          Tab(
            icon: Icon(Icons.keyboard),
            text: 'Tab 1',
          ),
          Tab(
            icon: Icon(Icons.lock),
            text: 'Tab 2',
          ),
          Tab(
            icon: Icon(Icons.add_box),
            text: 'Tab 3',
          ),
        ]),
      ),
      preferredSize: const Size(double.infinity, 80),
    );
  }
}

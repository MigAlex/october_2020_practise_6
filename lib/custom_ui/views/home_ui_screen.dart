import 'package:flutter/material.dart';
import 'package:october_2020_practise_6/custom_ui/helper_widgets/export_helper_widgets.dart';
import 'package:october_2020_practise_6/custom_ui/model/users_list.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeUIScreen extends StatefulWidget {
  @override
  _HomeUIScreenState createState() => _HomeUIScreenState();
}

class _HomeUIScreenState extends State<HomeUIScreen> {
  int index = 0;
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final user = users[index];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.person_outline), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.close), onPressed: () {})],
      ),
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: 150,
        maxHeight: 350,
        parallaxEnabled: true,
        parallaxOffset: 0.55,
        color: Colors.transparent,
        body: PageView(
          children: users
              .map((user) => Image.asset(user.urlImage, fit: BoxFit.cover))
              .toList(),
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        panelBuilder: (ScrollController scrollController) => PanelWidget(
          user: user,
          onClickedPanel: panelController.open,
          onClickedFollowing: () => setState((){
            user.isFollowing = !user.isFollowing;
          })
        ),
      ),
      bottomNavigationBar: BottomNaviBarWidget(),
    );
  }
}

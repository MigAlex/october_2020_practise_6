import 'package:flutter/material.dart';
import 'package:october_2020_practise_6/custom_ui/model/user.dart';

import 'export_helper_widgets.dart';

class PanelWidget extends StatelessWidget {
  final User user;
  final VoidCallback onClickedPanel;
  final VoidCallback onClickedFollowing;

  const PanelWidget(
      {Key key,
      @required this.user,
      @required this.onClickedPanel,
      @required this.onClickedFollowing})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatsWidget(user: user),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white),
            child: buildProfile(),
          ),
        ),
      ],
    );
  }

  Widget buildProfile() => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onClickedPanel,
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [

              SizedBox(height: 24),
              Expanded(child: buildProfileDetails(user)),
            ],
          ),
        ),
      );

  Widget buildProfileDetails(User user) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user.bio, style: TextStyle(fontStyle: FontStyle.italic)),
          SizedBox(height: 14),
          Text('photos', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 14),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: user.urlPhotos
                  .map(
                    (url) => Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(right: 5),
                      child: Image.asset(url, fit: BoxFit.cover),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
}

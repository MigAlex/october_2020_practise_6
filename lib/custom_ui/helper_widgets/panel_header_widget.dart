import 'package:flutter/material.dart';
import 'package:october_2020_practise_6/custom_ui/model/user.dart';

import 'export_helper_widgets.dart';

class PanelHeaderWidget extends StatelessWidget {
  final User user;
  final VoidCallback onClickedFollowing;

  const PanelHeaderWidget(
      {Key key, @required this.user, @required this.onClickedFollowing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: buildUser()),
        FollowButtonWidget(
          isFollowing: user.isFollowing,
          onClicked: onClickedFollowing,
        ),
      ],
    );
  }

  Widget buildUser() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(user.location)
        ],
      );
}

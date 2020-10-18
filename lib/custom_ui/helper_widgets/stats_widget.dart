import 'package:flutter/material.dart';
import 'package:october_2020_practise_6/custom_ui/model/user.dart';

class StatsWidget extends StatelessWidget {
  final User user;

  const StatsWidget({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildStatistic('Followers', user.countFollowers),
          buildStatistic('Posts', user.countPosts),
          buildStatistic('Following', user.countFollowing),
        ],
      ),
    );
  }

  Widget buildStatistic(String text, int value) => Column(
        children: [
          Text(
            '$value',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 4),
          Text(text, style: TextStyle(color: Colors.white))
        ],
      );
}

import 'package:flutter/material.dart';

class User {
  final String name;
  final int countFollowers, countFollowing, countPosts;
  final String urlImage;
  final String location, bio;
  final List<String> urlPhotos;
  bool isFollowing;

  User(
      {@required this.name,
      @required this.countFollowers,
      @required this.countFollowing,
      @required this.countPosts,
      @required this.urlImage,
      @required this.location,
      @required this.bio,
      @required this.urlPhotos,
      this.isFollowing});
}

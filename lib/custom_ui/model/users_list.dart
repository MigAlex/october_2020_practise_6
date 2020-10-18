import 'user.dart';

final users = <User>[
  User(
    name: 'Whatever name',
    bio: 'Pizza with not annanas',
    countFollowers: 142,
    countFollowing: 103,
    location: 'Madrid, Spain',
    isFollowing: true,
    countPosts: 38,
    urlImage: 'assets/user1.jpg',
    urlPhotos: [
      'assets/photo1.jpg',
      'assets/photo2.jpg',
      'assets/photo3.jpg',
    ],
  ),
  User(
    name: 'I dont care Name',
    bio: 'Sleeping, eating, standing, laying, sitting, boring.',
    countFollowers: 800,
    countFollowing: 10,
    location: 'Toulouse, France',
    isFollowing: false,
    countPosts: 12,
    urlImage: 'assets/user2.jpg',
    urlPhotos: [
      'assets/photo1.jpg',
      'assets/photo3.jpg',
    ],
  ),
  User(
    name: 'Who care\'s name',
    bio: 'I love to some bla bla or eat blah blah or go to blo blo blo',
    countFollowers: 323,
    countFollowing: 7,
    location: 'Ingolstadt, Germany',
    isFollowing: false,
    countPosts: 316,
    urlImage: 'assets/user3.jpg',
    urlPhotos: [
      'assets/photo2.jpg',
      'assets/photo1.jpg',
      'assets/photo2.jpg',
      'assets/photo3.jpg',
    ],
  )
];

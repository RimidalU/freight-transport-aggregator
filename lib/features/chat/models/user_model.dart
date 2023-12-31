class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/images/men1.png',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Iron Man',
  imageUrl: 'assets/images/men2.png',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Captain America',
  imageUrl: 'assets/images/men3.png',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Hulk',
  imageUrl: 'assets/images/men1.png',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Scarlet Witch',
  imageUrl: 'assets/images/men4.png',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Spider Man',
  imageUrl: 'assets/images/men5.png',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Black Widow',
  imageUrl: 'assets/images/men1.png',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Thor',
  imageUrl: 'assets/images/men3.png',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Captain Marvel',
  imageUrl: 'assets/images/men5.png',
  isOnline: false,
);

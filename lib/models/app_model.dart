class UserModel {
  final String id;
  final String name;

  UserModel({required this.id, required this.name});

  static final userA = UserModel(id: 'userA', name: 'User A');
  static final userB = UserModel(id: 'userB', name: 'User B');
}

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String uid;
  final String email;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const User(
      {required this.uid,
      required this.bio,
      required this.email,
      required this.followers,
      required this.following,
      required this.photoUrl,
      required this.username});

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['uid'] = this.uid;
  //   data['bio'] = this.bio;
  //   data['followers'] = this.followers;
  //   data['following'] = this.following;
  //   data['photoUrl'] = this.photoUrl;
  //   data['username'] = this.username;
  //   return data;
  // }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "bio": bio,
        "followers": followers,
        "following": following,
        "photoUrl": photoUrl,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        username: snapshot['username'],
        bio: snapshot['bio'],
        email: snapshot['email'],
        followers: snapshot['followers'],
        following: snapshot['following'],
        photoUrl: snapshot['photoUrl'],
        uid: snapshot['uid']);
  }
}

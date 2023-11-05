import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String uid;
  final String description;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post(
      {required this.uid,
      required this.datePublished,
      required this.description,
      required this.likes,
      required this.postId,
      required this.postUrl,
      required this.profImage,
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
        "description": description,
        "postId": postId,
        "datePublished": datePublished,
        "postUrl": postUrl,
        "profImage": profImage,
        "likes": likes
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        username: snapshot['username'],
        description: snapshot['description'],
        postId: snapshot['postId'],
        datePublished: snapshot['datePublished'],
        postUrl: snapshot['postUrl'],
        profImage: snapshot['profImage'],
        likes: snapshot['likes'],
        uid: snapshot['uid']);
  }
}

class CommentModels {
  dynamic id;
  String? name;
  String? comments;
  String? createdAt;
  dynamic isSeen;
  dynamic isPublished;
  CommentModels(
      {this.name,
      this.comments,
      this.createdAt,
      this.id,
      this.isSeen,
      this.isPublished});

  CommentModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    comments = json['comments'];
    createdAt = json['createdAt'];
    isSeen = json['isSeen'];
    isPublished = json['isPublished'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['comments'] = this.comments;
    data['createdAt'] = this.createdAt;
    data['isSeen'] = this.isSeen;
    data['isPublished'] = this.isPublished;
    return data;
  }
}

class CommentModel {
  String? fKUserId;
  String? name;
  String? comments;
  String? createdAt;

  CommentModel({this.fKUserId, this.name, this.comments, this.createdAt});

  CommentModel.fromJson(Map<String, dynamic> json) {
    fKUserId = json['fK_UserId'];
    name = json['name'];
    comments = json['comments'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fK_UserId'] = this.fKUserId;
    data['name'] = this.name;
    data['comments'] = this.comments;
    data['createdAt'] = this.createdAt;
    return data;
  }
}

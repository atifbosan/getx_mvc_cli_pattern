class MapUserModel {
  dynamic fKUserId;
  String? fullName;
  dynamic totalComment;
  dynamic totalLikes;
  String? photo;

  MapUserModel(
      {this.fKUserId,
      this.fullName,
      this.totalComment,
      this.totalLikes,
      this.photo});

  MapUserModel.fromJson(Map<String, dynamic> json) {
    fKUserId = json['fK_UserId'];
    fullName = json['fullName'];
    totalComment = json['totalComment'];
    totalLikes = json['totalLikes'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fK_UserId'] = this.fKUserId;
    data['fullName'] = this.fullName;
    data['totalComment'] = this.totalComment;
    data['totalLikes'] = this.totalLikes;
    data['photo'] = this.photo;
    return data;
  }
}

class GraiteeModel {
  String? fullName;
  String? id;
  String? photo;
  String? jobTitle;
  String? brands;
  String? industry;
  String? role;
  String? nationality;
  String? userName;
  bool? isFollow;

  GraiteeModel(
      {this.fullName,
      this.id,
      this.photo,
      this.jobTitle,
      this.brands,
      this.industry,
      this.role,
      this.nationality,
      this.userName,
      this.isFollow});

  GraiteeModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    id = json['id'];
    photo = json['photo'];
    jobTitle = json['jobTitle'];
    brands = json['brands'];
    industry = json['industry'];
    role = json['role'];
    nationality = json['nationality'];
    userName = json['userName'];
    isFollow = json['isFollow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['id'] = this.id;
    data['photo'] = this.photo;
    data['jobTitle'] = this.jobTitle;
    data['brands'] = this.brands;
    data['industry'] = this.industry;
    data['role'] = this.role;
    data['nationality'] = this.nationality;
    data['userName'] = this.userName;
    data['isFollow'] = this.isFollow;
    return data;
  }
}

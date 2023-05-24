class ExperienceModel {
  dynamic? id;
  dynamic? userId;
  dynamic? industryId;
  String? startDate;
  String? endDate;
  String? role;
  String? company;
  String? responsibilities;
  String? userName;
  bool? isCurrentlyEmployed;
  String? companyAddress;
  String? industryName;
  dynamic? companyLat;
  dynamic? companyLng;
  ExperienceModel({
    this.id,
    this.userId,
    this.startDate,
    this.endDate,
    this.role,
    this.company,
    this.responsibilities,
    this.userName,
    this.isCurrentlyEmployed,
    this.companyAddress,
    this.companyLat,
    this.companyLng,
    this.industryName,
    this.industryId,
  });

  ExperienceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    role = json['role'];
    company = json['company'];
    responsibilities = json['responsibilities'];
    userName = json['userName'];
    isCurrentlyEmployed = json['isCurrentlyEmployed'];
    companyAddress = json['companyAddress'];
    companyLat = json['companyLat'];
    companyLng = json['companyLng'];
    industryName = json['industryName'] ?? " ";
    industryId = json['industryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['role'] = this.role;
    data['company'] = this.company;
    data['responsibilities'] = this.responsibilities;
    data['userName'] = this.userName;
    data['isCurrentlyEmployed'] = this.isCurrentlyEmployed;
    data['companyAddress'] = this.companyAddress;
    data['companyLat'] = this.companyLat;
    data['companyLng'] = this.companyLng;
    data['industryId'] = this.industryId;
    data['industryName'] = this.industryName ?? " ";
    return data;
  }
}

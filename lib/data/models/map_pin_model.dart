class MapPinModel {
  String? companyAddress;
  double? companyLat;
  double? companyLng;
  int? employeeNo;

  MapPinModel(
      {this.companyAddress, this.companyLat, this.companyLng, this.employeeNo});

  MapPinModel.fromJson(Map<String, dynamic> json) {
    companyAddress = json['companyAddress'] ?? "";
    companyLat = json['companyLat'];
    companyLng = json['companyLng'];
    employeeNo = json['employeeNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyAddress'] = this.companyAddress;
    data['companyLat'] = this.companyLat;
    data['companyLng'] = this.companyLng;
    data['employeeNo'] = this.employeeNo;
    return data;
  }
}

class IndustriesModel {
  int? id;
  String? industriesName;

  IndustriesModel({this.id, this.industriesName});

  IndustriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    industriesName = json['industriesName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['industriesName'] = this.industriesName;
    return data;
  }
}

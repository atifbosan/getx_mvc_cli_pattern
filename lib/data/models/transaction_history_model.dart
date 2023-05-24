class TransactionHistoryModel {
  String? createdAt;
  double? tip;
  String? name;
  bool? isDebit;

  TransactionHistoryModel({this.createdAt, this.tip, this.name, this.isDebit});

  TransactionHistoryModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    tip = json['tip'];
    name = json['name'];
    isDebit = json['isDebit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['tip'] = this.tip;
    data['name'] = this.name;
    data['isDebit'] = this.isDebit;
    return data;
  }
}

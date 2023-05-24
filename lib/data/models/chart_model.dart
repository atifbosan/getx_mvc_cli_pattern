class ChartModel {
  dynamic earnings;
  dynamic time;

  ChartModel({this.earnings, this.time});

  ChartModel.fromJson(Map<String, dynamic> json) {
    earnings = json['earnings'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['earnings'] = this.earnings;
    data['time'] = this.time;
    return data;
  }
}

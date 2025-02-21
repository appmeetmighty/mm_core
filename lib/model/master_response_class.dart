class MasterResponseClass {
  dynamic requestData;

  MasterResponseClass({this.requestData});

  MasterResponseClass.fromJson(Map<String, dynamic> json) {
    requestData = (json['responseData'] != null) ? json['responseData'] : "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['responseData'] = requestData;
    return data;
  }
}

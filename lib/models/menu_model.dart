class MenuModel {
  String title;
  bool active;
  int action;

  MenuModel({this.title, this.active, this.action});

  MenuModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    active = json['active'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['active'] = this.active;
    data['action'] = this.action;
    return data;
  }
}

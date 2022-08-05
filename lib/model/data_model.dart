class DataModel {
  String brand_name;
  String brand_logo;
  int status;
  String due_info;
  int due;
  int brand_id;

  DataModel(
      {required this.brand_logo,
      required this.brand_name,
      required this.due,
      required this.due_info,
      required this.status,
      required this.brand_id});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        brand_logo: json["brand_logo"],
        brand_name: json["brand_name"],
        due: json["due"],
        due_info: json["due_info"],
        status: json["status"],
        brand_id: json["brand_id"]);
  }
}

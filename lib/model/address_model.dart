class AddressModel {
  final String country;

  AddressModel({required this.country});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(country: json['country']);
  }
}

class Company {
  late String name;
  late String catchPhrase;
  late String bs;

  Company(
      this.name,
      this.catchPhrase,
      this.bs,
      );

  Company.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    catchPhrase = json["catchPhrase"];
    bs = json["bs"];
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}

class Geo{
  late String lat;
  late String lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> json){
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic>toJson() => {
    "lat" : lat,
    "lng" : lng,
  };
}

class Address{
  late String street;
  late String suite;
  late String city;
  late String zipcode;
  late Geo geo;

  Address(
      this.street,
      this.suite,
      this.city,
      this.zipcode,
      this.geo,
      );

  Address.fromJson(Map<String, dynamic> json){
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = Geo.fromJson(json["geo"]);
  }

  Map<String, dynamic>toJson() => {
    "street" : street,
    "suite" : suite,
    "city" : city,
    "zipcode" : zipcode,
    "geo" : geo.toJson,
  };
}

class User {
  late int id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Company company;

  User(
  this.id,
  this.name,
  this.username,
  this.email,
  this.address,
  this.phone,
  this.website,
  this.company
      );

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
    address = Address.fromJson(json["address"]);
    phone = json["phone"];
    website = json["website"];
    company = Company.fromJson(json["company"]);
  }

  Map<String, dynamic> toJson() => {
    "id" : id,
    "name" : name,
    "username" : username,
    "email" : email,
    "address" : address.toJson(),
    "phone" : phone,
    "website" : website,
    "company" : company.toJson(),
  };

}


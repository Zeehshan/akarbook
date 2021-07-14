class Property {
  final String? owner;
  final String? place;
  final String? date;
  final String? image;
  final String? price;

  Property({this.owner, this.place, this.date, this.image, this.price});


  Property.fromMap(Map<String, dynamic> json,)
      : owner = json['owner'],
        place = json['place'],
        date = json['date'],
        price = json['price'],
        image = json['image'];

}
class Price {
  String place, crop;
  Price({required this.place, required this.crop});
  factory Price.fromDoc(Map<String, dynamic> map) {
    return Price(place: map['desc'], crop: map['title']);
  }
}

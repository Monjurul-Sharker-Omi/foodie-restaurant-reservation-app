class HotelInfo {
  int id;
  String name;
  String image;
  String location;
  String city;

  HotelInfo(this.id, this.name, this.image, this.location, this.city);
}

List<HotelInfo> hotelInfo = [
  HotelInfo(1, "Ambrosia Hotel and Restaurant", "hotel1.png",
      "Kazi Dairy, Tiger Pass", "Chittagong"),
  HotelInfo(
      2, "Taava Restaurant", "hotel2.png", "Zakir Hossain Road", "Chittagong"),
  HotelInfo(
    3,
    "Haatkhola",
    "hotel3.png",
    "6 Surson Road",
    "Chittagong",
  ),
];

class TravelModel {
  TravelModel({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.totalPrice,
  });
  final String imagePath;
  final String title;
  final String location;
  final String distance;
  final String temp;
  final String rating;
  final String description;
  final String totalPrice;
}

List<TravelModel> travelList = [
  TravelModel(
    imagePath: 'assets/images/Isfahan.jpg',
    title: 'Isfahan',
    location: '30 o 3 Bridge ,Isfahan',
    distance: '9Km',
    temp: '17° C',
    rating: '4.8',
    description:
        'IsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahanIsfahan',
    totalPrice: '1430',
  ),
  TravelModel(
    imagePath: 'assets/images/Shiraz.jpg',
    title: 'Shiraz',
    location: 'Fars ,Shiraz',
    distance: '11Km',
    temp: '23° C',
    rating: '4.1',
    description:
        'ShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShirazShiraz',
    totalPrice: '920',
  ),
  TravelModel(
    imagePath: 'assets/images/tehran.jpeg',
    title: 'Tehran',
    location: 'Chitgar ,Tehran',
    distance: '25Km',
    temp: '7° C',
    rating: '4.4',
    description:
        'TehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehranTehran',
    totalPrice: '1620',
  ),
  TravelModel(
    imagePath: 'assets/images/yazd.jpg',
    title: 'Yazd',
    location: 'Fire temple ,Yazd',
    distance: '9Km',
    temp: '29° C',
    rating: '4.5',
    description:
        'YazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazdYazd',
    totalPrice: '750',
  ),
];

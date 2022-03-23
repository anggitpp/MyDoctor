class Hospital {
  final int id;
  final String name;
  final String address;
  final String imageURL;
  Hospital({
    required this.id,
    required this.name,
    required this.address,
    required this.imageURL,
  });
}

List<Hospital> dummyHospitals = [
  Hospital(
      id: 1,
      name: 'Rumah Sakit Citra Bunga Merdeka',
      address: 'Jln. Surya Sejahtera 20',
      imageURL: 'hospital-1.png'),
  Hospital(
      id: 2,
      name: 'Rumah Sakit Anak Happy Family & Kids',
      address: 'Jln. Surya Sejahtera 20',
      imageURL: 'hospital-2.png'),
  Hospital(
      id: 3,
      name: 'Rumah Sakit Jiwa Tingkatan Paling Atas',
      address: 'Jln. Surya Sejahtera 20',
      imageURL: 'hospital-3.png'),
];

class Doctor {
  final int id;
  final String name;
  final String role;
  final String imageURL;
  final double star;
  final String gender;
  final bool isOnline;
  Doctor({
    required this.id,
    required this.name,
    required this.role,
    required this.imageURL,
    required this.star,
    required this.gender,
    this.isOnline = false,
  });
}

List<Doctor> dummyDoctors = [
  Doctor(
      id: 1,
      name: 'Alexa Rachel',
      role: 'Pediatrician',
      imageURL: 'doctor-1.png',
      gender: 'F',
      star: 5),
  Doctor(
    id: 2,
    name: 'Sunny Frank',
    role: 'Dentist',
    imageURL: 'doctor-2.png',
    gender: 'F',
    star: 5,
    isOnline: true,
  ),
  Doctor(
    id: 3,
    name: 'Poe Minn',
    role: 'Podiatrist',
    imageURL: 'doctor-3.png',
    gender: 'F',
    star: 5,
  ),
  Doctor(
    id: 4,
    name: 'Alexander Jannie',
    role: 'Podiatrist',
    imageURL: 'doctor-4.png',
    gender: 'F',
    star: 4,
  ),
  Doctor(
    id: 5,
    name: 'John McParker Steve',
    role: 'Podiatrist',
    imageURL: 'doctor-5.png',
    gender: 'M',
    star: 4.5,
  ),
  Doctor(
    id: 6,
    name: 'Nairobi Putri Hayza',
    role: 'Podiatrist',
    imageURL: 'doctor-6.png',
    gender: 'F',
    star: 4,
  ),
  Doctor(
    id: 7,
    name: 'James Rivillia',
    role: 'Podiatrist',
    imageURL: 'doctor-7.png',
    gender: 'M',
    star: 4,
  ),
  Doctor(
    id: 8,
    name: 'Liu Yue Tian Park',
    role: 'Podiatrist',
    imageURL: 'doctor-8.png',
    gender: 'F',
    star: 4,
  ),
];

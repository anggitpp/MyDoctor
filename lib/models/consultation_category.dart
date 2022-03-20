class ConsultationCategory {
  final int id;
  final String name;
  final String imageURL;
  ConsultationCategory({
    required this.id,
    required this.name,
    required this.imageURL,
  });
}

List<ConsultationCategory> dummyConsultationCategories = [
  ConsultationCategory(
      id: 1, name: 'Dokter Umum', imageURL: 'icon-dokter-umum.png'),
  ConsultationCategory(
      id: 2, name: 'Psikiater', imageURL: 'icon-psikiater.png'),
  ConsultationCategory(id: 3, name: 'Dokter Obat', imageURL: 'icon-obat.png'),
];

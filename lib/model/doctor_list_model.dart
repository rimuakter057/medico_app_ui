class DoctorListModel {
  final String image;
  final String name;
  final String category;
  final String degree;
  final String working;
  final String number;
  final String experience;

  DoctorListModel({
    required this.image,
    required this.name,
    required this.category,
    required this.degree,
    required this.working,
    required this.number,
    required this.experience,
  });
}

List<DoctorListModel> doctorListModel = [
  DoctorListModel(
      image: 'assets/images/doctor_list.png' ,
      name: "Assoc Prof. Dr. Khandakar"
          "Paevez Ahmad ",
      category: "Specialties",
      degree: "MBBS, PHD (Neurology) (ITALY),Msc"
          "(Endocrinology) UK",
      working: "Victoria Healthcare",
      number: "M367045",
      experience: "17+ years")
];

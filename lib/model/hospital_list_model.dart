class HospitalListModel{
  final String image;
  final String name;
  final String category;
  final String location;
  final String code;

  HospitalListModel(
  {
   required this.image, required this.name,required this.category,required this.location,required this.code
});
}
List <HospitalListModel> hospitalListModel =[
  HospitalListModel(image:'assets/images/hospital_list1.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list2.png' ,
      name: "Nuxes Hospital",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list3.png' ,
      name: "Pranto Specialized Hospitals",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list4.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list1.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list2.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list3.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399"),
  HospitalListModel(image:'assets/images/hospital_list4.png' ,
      name: "Delta Health Care",
      category: "Specialized Hospitals",
      location: "Mymensingh",
      code: "10000399")
];
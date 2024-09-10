class CategoryModel{
  final String image;
  final String name;

  CategoryModel({required this.image,required this.name});
}
List < CategoryModel> categoryList =[
  CategoryModel(image:'assets/images/Hospital.png',
      name:"Hospital" ),
  CategoryModel(image:'assets/images/Doctor.png',
      name:"Doctor" ),
  CategoryModel(image:'assets/images/DoctorReport.png',
      name:"Doctor Report" ),
  CategoryModel(image:'assets/images/investigation.png',
      name:"Investigation" ),
  CategoryModel(image:'assets/images/Insurance.png',
      name:"Insurance" ),
  CategoryModel(image: 'assets/images/Invite.png',
      name:"Invite" ),
  CategoryModel(image:'assets/images/FAQ.png',
      name:"FAQ" ),
  CategoryModel(image:'assets/images/Support.png',
      name:"Support" ),


];
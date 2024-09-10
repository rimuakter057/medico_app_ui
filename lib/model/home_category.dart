class HomeCategoryModel{
  final String image;
  final String name;

  HomeCategoryModel({required this.image,required this.name});
}
List < HomeCategoryModel> homeCategoryList =[
  HomeCategoryModel(image:'assets/images/Hospital.png',
      name:"Hospital" ),
  HomeCategoryModel(image:'assets/images/Doctor.png',
      name:"Doctor" ),
  HomeCategoryModel(image:'assets/images/investigation.png',
      name:"Investigation" ),
  HomeCategoryModel(image:'assets/images/DoctorReport.png',
      name:"Doctor Report" ),
  HomeCategoryModel(image: 'assets/images/department.png',
      name:"Department" ),
  HomeCategoryModel(image: 'assets/images/Invite.png',
      name:"Invite" ),
  HomeCategoryModel(image:'assets/images/FAQ.png',
      name:"FAQ" ),
  HomeCategoryModel(image:'assets/images/Support.png',
      name:"Support" ),
  HomeCategoryModel(image: 'assets/images/setting.png',
      name:"Setting" ),



];
abstract class Role{
  void displayRole();
}
class Person implements Role{
  String name,address;
  int age;
  Person(this.name, this.age, this.address);
  @override
  void displayRole(){
    print('Name : ${this.name}');
    print('Age : ${this.age}');
    print('Address : ${this.address}');
  }
}
class Teacher extends Person{
  int teacherID;
  List<String>courseTaught=[];
  Teacher(String name, int age, String address,this.teacherID,this.courseTaught)
  :super(name,age,address);
  @override
  void displayRole(){
    print('Role : Teacher');
    super.displayRole();
    print('Teacher ID : ${this.teacherID}');
    print('Courses Taught : ${this.courseTaught}');
  }
}
class Student extends Person{
  int studentID;
  double grade;
  List<double>courseScore=[];
  Student(String name, int age, String address, this.studentID, this.grade, this.courseScore)
      : super(name, age, address);
  double Average(){
    double total=0.0;
    for(var score in courseScore){
      total+=score;
    }
    return total/courseScore.length;
  }
  @override
  void displayRole(){
    print('Role : Student');
    super.displayRole();
    print('Student ID : ${this.studentID}');
    print('Grade : ${this.grade}');
    print('Average Score : ${Average()}');
    print("Course Scores : ${this.courseScore}");
  }
}
main(){
  var student = Student('Ghost',180, 'Konoha', 232, 3.5,[89.5,95.5,98.5]);
  student.displayRole();
  var teacher=Teacher('Madara',200, 'Konoha', 55, ['Bangla','English','Art of living']);
  teacher.displayRole();
}
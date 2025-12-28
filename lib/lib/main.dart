import 'dart:io';

void main (){
  print("inter your name");
  String name =stdin.readLineSync()!;

  print("hello $name");

  print("inter your age");
  int age =int.parse(stdin.readLineSync()!);

  print("ok $name");

print("inter your school grade");
int grade =int.parse(stdin.readLineSync()!);
if (grade<50){
  print("You failed");
}else if(grade>=50 && grade<60) {
print("good");
}else if(grade>=60 && grade<70) {
  print("very good");
}else if(grade>=70 && grade<80){
  print("excillent");
}
  




}
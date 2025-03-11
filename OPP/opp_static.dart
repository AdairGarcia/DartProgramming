// This is a simple example of how to use static variables and methods in Dart
// Static variables and methods are shared among ALL instances of a class

class Employee {
  static String? _bussines; // STATIC variable
  String? name; // instance variable

  // Constructor
  Employee(this.name);
    
  // Getter name
  String getName() {
    return this.name!; // return the name, '!' means that the variable is not null
  }
  // Setter name
  void setName(String name) {
    this.name = name; // set the name
  }

  // Static method
  // getter for the static variable
  static String getBussines() {
    return _bussines!; // return the bussines, '!' means that the variable is not null
  }

  // Static method 
  // setter for the static variable
  static void setBussines(String bussines) {
    _bussines = bussines; // set the bussines
  }

}

void main(){
  Employee p1 = Employee("Pol");
  print("Person 1: ${p1.getName()}"); 


  Employee p2 = Employee("Pao"); 
  print("Person 2: ${p2.getName()}");

  Employee.setBussines("Google");

  print("Bussines: ${Employee.getBussines()}");


  p1.setName("Pola");
  print("Person 1: ${p1.getName()}");

  p2.setName("Paolo");
  print("Person 2: ${p2.getName()}");

  print("Bussines: ${Employee.getBussines()}");
  
}
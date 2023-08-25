/// Assignment of Module 3.

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double get getMilesDriven => milesDriven;

  String get getBrand => brand;

  String get getModel => model;

  int get getYear => year;

  int get getAge {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Camry', 2020, 0);
  car1.drive(12000);
  print(
      'Car 1: ${car1.getBrand} ${car1.getModel} ${car1.getYear} Miles: ${car1.getMilesDriven} Age: ${car1.getAge}');

  Car car2 = Car('Honda', 'Civic', 2018, 0);
  car2.drive(9500);
  print(
      'Car 2: ${car2.getBrand} ${car2.getModel} ${car2.getYear} Miles: ${car2.getMilesDriven} Age: ${car2.getAge}');

  Car car3 = Car('Tesla', 'X', 2015, 0);
  car3.drive(14000);
  print(
      'Car 3: ${car3.getBrand} ${car3.getModel} ${car3.getYear} Miles: ${car3.getMilesDriven} Age: ${car3.getAge}');

  print('Total number of cars created: ${Car.numberOfCars}');
<<<<<<< HEAD
}
=======
}
>>>>>>> 9364fbc0f29b4684c38bb83b1ba8354152963c65

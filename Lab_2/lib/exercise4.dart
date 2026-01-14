void runExercise4() {
  print('--- Exercise 4: OOP ---');
  Car car = Car('Toyota');
  car.drive();
  Car car2 = Car.named('Honda');
  car2.drive();

  ElectricCar tesla = ElectricCar('Tesla');
  tesla.drive();
}
class Car {
  String brand;
  Car(this.brand);
  Car.named(this.brand);
  void drive() {
    print('The $brand car is driving.');
  }
}
class ElectricCar extends Car {
  ElectricCar(String brand) : super(brand);
  @override
  void drive() {
    print('The $brand electric car is driving silently.');
  }
}

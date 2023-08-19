// Create a Car class with properties:
// ●     brand (String),
// ●     model (String),
// ●     year (int),
// ●     milesDriven (double).
//
// Methods of this class are:
// ●     drive(double miles): Increases the milesDriven property by the provided distance value, simulating driving.
// ●     getMilesDriven(): Retrieves the current milesDriven value.
// ●     getBrand(): Retrieves the brand of the car.
// ●     getModel(): Retrieves the model of the car.
// ●     getYear(): Retrieves the manufacturing year of the car.
// ●     getAge(): Calculates and returns the age of the car.
//
// Include a static property numberOfCars to track the total number of Car objects created..
//
// In main(), create 3 Car instances, drive them different miles. Print brand, model, year, miles, age for each car.
// Display total numberOfCars.
//-------------------------------------------------------------------------------------------------------------------

class Car {
  String brand ;
  String model ;
  int year ;
  double milesDriven ;
  static int numberOfCars  = 0  ;

  Car({required this.brand , required this.model , required this.year , required this.milesDriven})
  {
    numberOfCars ++ ;
  }

  double drive (double miles)
  {
    this.milesDriven = miles + this.milesDriven;
    return this.milesDriven ;
  }

  double getMilesDriven()
  {
    return this.milesDriven;
  }

  String getBrand()
  {
    return brand;
  }

  String getModel()
  {
    return model;
  }
  int getYear()
  {
    return year;
  }
  int getAge()
  {
    int age = 2023 - this.year;
    return age ;
  }

 }

 void main ()
 {
   Car car_1 = Car (brand: "Toyota" , year: 2020 , model: "Camry" , milesDriven: 8000);
   Car car_2 = Car (brand: "Honda" , year: 2018 , model: "Civic" , milesDriven: 7000);
   Car car_3 = Car (brand: "Ford" , year: 2015  , model: "F-150" , milesDriven: 10000);

   car_1.drive(2000);
   car_2.drive(1000);
   car_3.drive(5000);

   print("Car 1 : ${car_1.getBrand()} ${car_1.getModel()} ${car_1.getYear()} Miles: ${(car_1.getMilesDriven()).toInt()} Age: ${car_1.getAge()}");
   print("Car 2 : ${car_2.getBrand()} ${car_2.getModel()} ${car_2.getYear()} Miles: ${(car_2.getMilesDriven()).toInt()} Age: ${car_2.getAge()}");
   print("Car 3 : ${car_3.getBrand()} ${car_3.getModel()} ${car_3.getYear()} Miles: ${(car_3.getMilesDriven()).toInt()} Age: ${car_3.getAge()}");
   
   print("Total number of cars created: ${Car.numberOfCars}");
 }

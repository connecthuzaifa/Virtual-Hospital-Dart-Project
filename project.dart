import 'dart:io';

void main() {
  print("===== Welcome to virtual hospital =====");
  bool checkout = false;
  while (!checkout) {
    print("1. Rentout patient bed");
    print("2. Rentout oxygen cylinder");
    print("3. Laboratory technician");
    print("4. Patient attendant");
    print("5. Patient general checkups");
    print("6. Checkout");
    print("Enter what service you want (1-6): ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        rentbed();
        print("Do you want more services? \n 1. Yes \n 2. No");
        int more = int.parse(stdin.readLineSync()!);
        if (more == 1) {
          print("Enter what service you want (1-6): ");
          checkout = false;
        } else if (more == 2) {
          totalservices;
          totalprice;
          print(
              "_________________________________________________________________________");
          print(
              "================================ RECEIPT ================================");
          print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
          int sum = 0;
          for (int i = 0; i < totalservices.length; i++) {
            print(
                "| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
            sum = sum + totalprice[i];
          }
          print("| \t Amount \t \t \t \t \t     $sum           |");
          print(
              "_________________________________________________________________________");

          return;
        }
        break;
      case 2:
        rentoxygen();
        print("Do you want more services? \n 1. Yes \n 2. No");
        int more = int.parse(stdin.readLineSync()!);
        if (more == 1) {
          print("Enter what service you want (1-6): ");
          checkout = false;
        } else if (more == 2) {
          totalservices;
          totalprice;
          print(
              "_________________________________________________________________________");
          print(
              "================================ RECEIPT ================================");
          print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
          int sum = 0;
          for (int i = 0; i < totalservices.length; i++) {
            print(
                "| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
            sum = sum + totalprice[i];
          }
          print("| \t Amount \t \t \t \t \t     $sum           |");
          print(
              "_________________________________________________________________________");

          return;
        }
        break;
      case 3:
        Laboratory();
        print("Do you want more services? \n 1. Yes \n 2. No");
        int more = int.parse(stdin.readLineSync()!);
        if (more == 1) {
          print("Enter what service you want (1-6): ");
          checkout = false;
        } else if (more == 2) {
          totalservices;
          totalprice;
          print(
              "_________________________________________________________________________");
          print(
              "================================ RECEIPT ================================");
          print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
          int sum = 0;
          for (int i = 0; i < totalservices.length; i++) {
            print(
                "| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
            sum = sum + totalprice[i];
          }
          print("| \t Amount \t \t \t \t \t     $sum           |");
          print(
              "_________________________________________________________________________");

          return;
        }
        break;
      case 4:
        attendant();
        print("Do you want more services? \n 1. Yes \n 2. No");
        int more = int.parse(stdin.readLineSync()!);
        if (more == 1) {
          print("Enter what service you want (1-6): ");
          checkout = false;
        } else if (more == 2) {
          totalservices;
          totalprice;
          print(
              "_________________________________________________________________________");
          print(
              "================================ RECEIPT ================================");
          print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
          int sum = 0;
          for (int i = 0; i < totalservices.length; i++) {
            print(
                "| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
            sum = sum + totalprice[i];
          }
          print("| \t Amount \t \t \t \t \t     $sum           |");
          print(
              "_________________________________________________________________________");

          return;
        }
        break;
      case 5:
        checkup();
        print("Do you want more services? \n 1. Yes \n 2. No");
        int more = int.parse(stdin.readLineSync()!);
        if (more == 1) {
          print("Enter what service you want (1-6): ");
          checkout = false;
        } else if (more == 2) {
          totalservices;
          totalprice;
          print(
              "_________________________________________________________________________");
          print(
              "================================ RECEIPT ================================");
          print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
          int sum = 0;
          for (int i = 0; i < totalservices.length; i++) {
            print(
                "| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
            sum = sum + totalprice[i];
          }
          print("| \t Amount \t \t \t \t \t     $sum           |");
          print(
              "_________________________________________________________________________");

          return;
        }
        break;
      case 6:
        totalservices;
        totalprice;
        print(
            "_________________________________________________________________________");
        print(
            "================================ RECEIPT ================================");
        print("|\t SERVICES \t \t \t \t \t     TOTAL \t |");
        int sum = 0;
        for (int i = 0; i < totalservices.length; i++) {
          print("| \t ${totalservices[i].padRight(50)}  ${totalprice[i]}\t |");
          sum = sum + totalprice[i];
        }
        print("| \t Amount \t \t \t \t \t     $sum           |");
        print(
            "_________________________________________________________________________");

        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}

List<String> totalservices = [];
List<int> totalprice = [];

rentbed() {
  {
    bool condition = true;
    while (condition) {
      print("Please choose quality of bed: \n 1. A Class \n 2. B Class");
      int bedclass = int.parse(stdin.readLineSync()!);
      if (bedclass == 1) {
        print(
            "A Class bed quality is selected. For how many days you want it? \n Please enter number of days:");
        int days = int.parse(stdin.readLineSync()!);

        if (days > 0) {
          int bedprice = days * 1000;
          totalservices.add("A Class Bed for $days days");
          totalprice.add(bedprice);
          print("The total price for A Class bed is $bedprice");
        } else {
          print("Please enter correct number of days.");
        }

        condition = false;
      } else if (bedclass == 2) {
        print(
            "B Class bed quality is selected. For how many days you want it? \n Please enter number of days:");
        int days = int.parse(stdin.readLineSync()!);

        if (days > 0) {
          int bedprice = days * 500;
          print("The total price for B Class bed is $bedprice");
          totalservices.add("B Class Bed for $days days");
          totalprice.add(bedprice);
        } else {
          print("Please enter correct number of days.");
        }
        condition = false;
      } else {
        print("Please enter correct option.");
        condition = true;
      }
    }
  }
}

attendant() {
  bool condition = true;
  while (condition) {
    print("For how much time do you want an attendant? (in 1-24 hours)");
    int time = int.parse(stdin.readLineSync()!);

    if (time > 0 && time < 13) {
      print("Please enter number of days:");
      int days = int.parse(stdin.readLineSync()!);
      int price = 500;
      int totalprices = price * days;
      totalservices.add("Attendant for $time hours for $days days");
      totalprice.add(totalprices);
      print(
          "Attendant charges for $time hours for $days days are $totalprices");
      condition = false;
    } else if (time > 12 && time <= 24) {
      print("Please enter number of days:");
      int days = int.parse(stdin.readLineSync()!);
      int price = 1000;
      int totalprices = price * days;
      totalservices.add("Attendant for $time hours for $days days");
      totalprice.add(totalprices);
      print(
          "Attendant charges for $time hours for $days days are $totalprices");
      condition = false;
    } else {
      print("Please enter correct time.");
      condition = true;
    }
  }
}

checkup() {
  Map<String, Map<String, String>> doctors = {
    "Dr Saad": {
      "Monday": "3pm to 6pm",
      "Tuesday": "1pm to 4pm",
      "Thursday": "2pm to 5pm",
    },
    "Dr Fahad": {
      "Monday": "1pm to 4pm",
      "Wednesday": "12pm to 3pm",
      "Friday": "4pm to 7pm",
    },
    "Dr Asif": {
      "Tuesday": "2pm to 5pm",
      "Wednesday": "3pm to 6pm",
      "Saturday": "4pm to 7pm",
    }
  };
  List docfees = [2000, 1500, 1000];

  print("Which doctor to see? \n 1. Dr. Saad \n 2. Dr. Fahad \n 3. Dr. Asif");
  int doc = int.parse(stdin.readLineSync()!);
  int fees = docfees[doc - 1];

  String doctorName = ""; // To store the selected doctor's name

  switch (doc) {
    case 1:
      doctorName = "Dr Saad";
      break;
    case 2:
      doctorName = "Dr Fahad";
      break;
    case 3:
      doctorName = "Dr Asif";
      break;
    default:
      print("Invalid choice. Please try again.");
      return;
  }

  Map<String, String>? docDetails = doctors[doctorName];
  if (docDetails != null) {
    print("Doctor: $doctorName \n Fees:$fees");
    print("Available Days and Times:");

    // Display the available days and times for the chosen doctor
    int index = 1;
    docDetails.forEach((day, time) {
      print("$index. $day: $time");
      index++;
    });

    // Prompt the user to select a day
    bool condition = true;
    while (condition) {
      print("Enter the number of the day you want to select:");
      int selectedDay = int.parse(stdin.readLineSync()!);

      if (selectedDay >= 1 && selectedDay <= docDetails.length) {
        // Get the selected day's name
        String selectedDayName = docDetails.keys.elementAt(selectedDay - 1);
        // Get the available time for the selected day
        String selectedTime = docDetails[selectedDayName]!;

        print("You have selected: $selectedDayName: $selectedTime");
        totalservices.add(
            "$doctorName appointment on $selectedDayName at $selectedTime");
        totalprice.add(fees);
        condition = false;
      } else {
        print("Invalid selection.");
        condition = true;
      }
    }
  } else {
    print("Selected doctor not found in the list.");
  }
}

rentoxygen() {
  print(
      "How much capacity of oxygen cylinder you want? \n 1. 500kg \n 2. 1000kg \n 3. 2000kg");
  int oxygen = int.parse(stdin.readLineSync()!);
  switch (oxygen) {
    case 1:
      int price = 1000;
      print("500kg oxygen cylinder is selected. \n Price = $price");
      totalservices.add("500kg oxygen cylinder");
      totalprice.add(price);
      break;
    case 2:
      int price = 2000;
      print("1000kg oxygen cylinder is selected. \n Price = $price");
      totalservices.add("2000kg oxygen cylinder");
      totalprice.add(price);
      break;
    case 3:
      int price = 4000;
      print("2000kg oxygen cylinder is selected. \n Price = $price");
      totalservices.add("4000kg oxygen cylinder");
      totalprice.add(price);
      break;
    default:
      print("Invalid option");
  }
}

Laboratory() {
  Map<String, Map<String, String>> Laboratory = {
    "Sugar Test": {
      "Reports delivery date": "3 days after test",
      "Delivery time": "1pm to 4pm",
      "Blood drawn": "From Arm",
    },
    "Hemoglobin Test": {
      "Reports delivery date": "2 days after test",
      "Reports delivery time": "7pm to 10pm",
      "Blood drawn": "From Vein",
    },
    "Cholesterol Test": {
      "Reports delivery date": "1 days after test",
      "Reports delivery time": "1pm to 2pm",
      "Blood drawn": "From Vein",
    }
  };
  List testcharges = [2000, 1500, 3000];

  print(
      "Please select the test you want? \n 1.Sugar Test \n 2.Hemoglobin Test \n 3.Cholesterol Test");
  int test = int.parse(stdin.readLineSync()!);
  int charges = testcharges[test - 1];

  String Tests = ""; // To store the selected doctor's name

  switch (test) {
    case 1:
      Tests = "Sugar Test";
      break;
    case 2:
      Tests = "Hemoglobin Test";
      break;
    case 3:
      Tests = "Cholesterol Test";
      break;
    default:
      print("Invalid choice.");
      return;
  }

  Map<String, String>? testDetails = Laboratory[Tests];
  if (testDetails != null) {
    print("Test: $Tests \n Charges: $charges");
    testDetails.forEach((key, value) {
      print("$key: $value");
    });
    totalservices.add(Tests);
    totalprice.add(charges);
  } else {
    print("Selected test not found in the list.");
  }
}

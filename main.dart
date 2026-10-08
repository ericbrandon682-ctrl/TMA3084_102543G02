import 'dart:io';

void main() {
  //Pizza price statement
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  //Pizza size input
  print("Please enter your pizza size (small, medium, or large)");
  String? size = stdin.readLineSync();

  int size_cost;
  switch (size) {
    case "small":
      size_cost = 5;
      break;
    case "medium":
      size_cost = 7;
      break;
    case "large":
      size_cost = 10;
    default:
      print("Invalid pizza size. Please try again.");
      return;
  }
  //Pizza quantity input
  print("How many pizzas do you want of $size?");
  int? quantity = int.tryParse(stdin.readLineSync() ?? '');
  if (quantity == null) {
    print("Invalid quantity. Please try again.");
    return;
  }

  //Total pizza cost
  int total = size_cost * quantity;
  print('Your Total Payment is: \$$total');
}

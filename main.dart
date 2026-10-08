import 'dart:io';

void main() {
  // Pizza price statement
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  bool ordering = true;

  // while loop for continuous ordering
  while (ordering) {
    // Pizza size input
    print("Please enter your pizza size (small, medium, or large)");
    String size = (stdin.readLineSync() ?? '').trim().toLowerCase();

    // size validation
    if (size != "small" && size != "medium" && size != "large") {
      print("Invalid pizza size. Please try again.");
      continue;
    }

    // Pizza quantity input
    print("How many pizzas do you want of $size?");
    int? quantity = int.tryParse((stdin.readLineSync() ?? '').trim());

    if (quantity == null) {
      print("Invalid quantity. Please try again.");
      continue;
    }

    // switch, total payment
    int total;
    switch (size) {
      case "small":
        total = 5 * quantity;
        print('Your Total Payment is: \$$total');
        break;
      case "medium":
        total = 7 * quantity;
        print('Your Total Payment is: \$$total');
        break;
      case "large":
        total = 10 * quantity;
        print('Your Total Payment is: \$$total');
        break;
      default:
        print("Invalid pizza size. Please try again.");
    }

    // Repeat order
    print("Do you want to order again? (yes/no)");
    String again = (stdin.readLineSync() ?? '').trim().toLowerCase();
    if (again != "yes") {
      ordering = false;
    }
  }
}

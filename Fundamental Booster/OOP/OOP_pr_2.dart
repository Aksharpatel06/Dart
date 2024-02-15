import 'dart:io';

class Product {
  int id;
  String name;
  double price;
  int quantity;

  Product(this.id, this.name, this.price, this.quantity);
}

class Category {
  String name;
  List<Product> products;

  Category(this.name, this.products);
}

class ShoppingCart {
  List<Product> items = [];

  void addItem(Product item) {
    items.add(item);
  }

  double calculateTotal() {
    double total = 0.0;
    for (var item in items) {
      total += item.price * item.quantity;
    }
    return total;
  }

  double applyDiscount(double total) {
    if (total >= 500 && total < 1500) {
      return total * 0.9;
    } else if (total >= 1500 && total < 3500) {
      return total * 0.8;
    } else if (total >= 3500 && total < 6500) {
      return total * 0.75;
    } else if (total >= 6500) {
      return total * 0.7;
    }
    return total;
  }

  void printReceipt() {
    double total = calculateTotal();
    double discountedTotal = applyDiscount(total);

    print("\n===== Receipt =====");
    for (var item in items) {
      print("ID: ${item.id}\t${item.name}\t${item.price}\t${item.quantity}");
    }
    print("Total: \$${total.toStringAsFixed(2)}");
    if (discountedTotal < total) {
      double discountAmount = total - discountedTotal;
      print("Discount Amount: \$${discountAmount.toStringAsFixed(2)}");
      print("Discounted Total: \$${discountedTotal.toStringAsFixed(2)}");
    }
    print("===================");
  }
}

class Customer {
  int id;
  String name;
  String contact;
  late ShoppingCart cart;

  Customer(this.id, this.name, this.contact) {
    cart = ShoppingCart();
  }
}

void main() {
  List<Category> categories = [
    Category("Electronics", [
      Product(1, "Laptop", 1000.0, 0),
      Product(2, "Smartphone", 800.0, 0),
      Product(3, "Headphones", 100.0, 0),
      Product(4, "Tablet", 400.0, 0),
      Product(5, "Smartwatch", 300.0, 0),
    ]),
    Category("Clothing", [
      Product(6, "T-shirt", 20.0, 0),
      Product(7, "Jeans", 50.0, 0),
      Product(8, "Dress", 80.0, 0),
      Product(9, "Shoes", 60.0, 0),
      Product(10, "Sweater", 40.0, 0),
    ]),
    Category("Books", [
      Product(11, "Novel", 15.0, 0),
      Product(12, "Programming Book", 50.0, 0),
      Product(13, "Cookbook", 30.0, 0),
      Product(14, "Self-help Book", 25.0, 0),
      Product(15, "Biography", 35.0, 0),
    ]),
  ];

  List<Customer> customers = [];

  print("Welcome to the Super Market!");

  while (true) {
    stdout.write("Enter customer ID (0 to finish): ");
    int customerId = int.parse(stdin.readLineSync()!);

    if (customerId == 0) {
      break;
    }

    stdout.write("Enter customer name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter customer contact: ");
    String contact = stdin.readLineSync()!;

    Customer customer = Customer(customerId, name, contact);

    ShoppingCart cart = customer.cart;

    print("\nAvailable Categories:");
    for (int i = 0; i < categories.length; i++) {
      print("${i + 1}. ${categories[i].name}");
    }

    while (true) {
      stdout.write("Enter the category number to explore or 0 to finish: ");
      int choice = int.parse(stdin.readLineSync()!);

      if (choice == 0) {
        break;
      }

      if (choice >= 1 && choice <= categories.length) {
        Category selectedCategory = categories[choice - 1];
        print("\nProducts available in ${selectedCategory.name}:");

        for (int i = 0; i < selectedCategory.products.length; i++) {
          print(
              "${i + 1}. ${selectedCategory.products[i].name} - \$${selectedCategory.products[i].price}");
        }

        while (true) {
          stdout.write(
              "Enter the product number to add to cart or 0 to go back to categories: ");
          int productNumber = int.parse(stdin.readLineSync()!) - 1;

          if (productNumber == -1) {
            break;
          }

          if (productNumber >= 0 &&
              productNumber < selectedCategory.products.length) {
            stdout.write("Enter quantity: ");
            int quantity = int.parse(stdin.readLineSync()!);

            Product selectedProduct = selectedCategory.products[productNumber];
            selectedProduct.quantity = quantity;

            cart.addItem(selectedProduct);
            print("Product added to cart!");
          } else {
            print("Invalid product number. Please try again.");
          }
        }
      } else {
        print("Invalid category number. Please try again.");
      }
    }

    customers.add(customer);
  }

  stdout.write("Enter the customer ID to search for details: ");
  int searchId = int.parse(stdin.readLineSync()!);

  Customer searchedCustomer = customers
      .firstWhere((customer) => customer.id == searchId, orElse: () => null!);

  if (searchedCustomer != null) {
    print("\nCustomer ID: ${searchedCustomer.id}");
    print("Name: ${searchedCustomer.name}");
    print("Contact: ${searchedCustomer.contact}");

    ShoppingCart searchedCart = searchedCustomer.cart;

    searchedCart.printReceipt();
  } else {
    print("Customer not found with the given ID.");
  }
}

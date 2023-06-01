import 'package:flutter/material.dart';
import 'package:grocery_shop/models/grocery.dart';

class Cart extends ChangeNotifier {
  final List<Grocery> _groceryList = <Grocery>[
    Grocery(
      name: 'Asparagus',
      price: 10,
      image: 'asparagus.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Broccoli',
      price: 12,
      image: 'broccoli.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Cabbage',
      price: 10,
      image: 'cabbage.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Carrots',
      price: 10,
      image: 'carrots.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Cauliflower',
      price: 10,
      image: 'cauliflower.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Celery',
      price: 10,
      image: 'celery.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Cucumber',
      price: 10,
      image: 'cucumber.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Green Beans',
      price: 10,
      image: 'greenbeans.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Lettuce',
      price: 10,
      image: 'lettuce.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
    Grocery(
      name: 'Mushrooms',
      price: 10,
      image: 'mushrooms.jpg',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam faucibus sollicitudin nibh eu gravida. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam nibh lorem, ultrices a facilisis fringilla, fermentum et nibh. Sed gravida, enim non blandit ullamcorper, lacus arcu sodales urna, elementum venenatis lacus eros non velit. Sed auctor non libero a imperdiet. Aliquam erat volutpat. Duis vestibulum sapien in massa tristique, nec lacinia purus euismod.',
    ),
  ];

  // list of item in user cart

  List<Grocery> userCart = [];

  // get list of grocery

  List<Grocery> getGroceryList() {
    return _groceryList;
  }

  // get cart

  List<Grocery> getUserCart() {
    return userCart;
  }

  // add item to the cart

  void addItemToCart(Grocery grocery) {
    userCart.add(grocery);
    addPrice(grocery);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Grocery grocery) {
    userCart.remove(grocery);
    removePrice(grocery);
    notifyListeners();
  }

  double totalPrice = 0;

  double addPrice(Grocery grocery) {
    totalPrice += grocery.price;
    return totalPrice;
  }

  double removePrice(Grocery grocery) {
    totalPrice -= grocery.price;
    return totalPrice;
  }
}

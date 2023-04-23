import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/cupertino.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'assets/images/coffee1.png',
    ),

    //espresso
    Coffee(
      name: 'Espresso',
      price: '3.10',
      imagePath: 'assets/images/coffee.png',
    ),

    //latte
    Coffee(
      name: 'Latte',
      price: '5.10',
      imagePath: 'assets/images/coffee-cup.png',
    ),

    //ice coffee
    Coffee(
      name: 'Ice Coffee',
      price: '6.10',
      imagePath: 'assets/images/cup.png',
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}

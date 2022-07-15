
import 'package:flutter_all_in_one/models/cart.dart';
import 'package:flutter_all_in_one/models/model.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
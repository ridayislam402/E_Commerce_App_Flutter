import 'package:flutter_all_in_one/models/model.dart';

class CartModel{
  /// single ton
  static final cartModel=CartModel._internal();
  CartModel._internal();
  factory CartModel()=>cartModel;

  /////////
  // Catelog fild
    CatalogModel _catalog=new CatalogModel();


// Collection of ids--store ids of eatch
  final List<int> _itemIds=[];

  //get catalog
  CatalogModel get catalog=>_catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog!=null);
    _catalog=newCatalog;
  }

  //get item in the cart
  List<Item> get items=>_itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice=>items.fold(0, (total, current) => total+current.price);

  //add item
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item){
    _itemIds.remove(item.id);
  }

}

class CatalogModel{
 static List<Item> item=[
   Item(id: 0,
       name: 'riday',
       desc: 'very good',
       price: 100,
       color: '#33505a',
       image: 'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FydG9vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
   ),
   ///can add more item list
  /* Item(id: "01",
       name: 'riday2',
       desc: 'very good',
       price: 100,
       color: '#33505a',
       image: 'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FydG9vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
   ),
   Item(id: "01",
       name: 'riday3',
       desc: 'very good',
       price: 100,
       color: '#33505a',
       image: 'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FydG9vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
   )*/

  ];
}
class Item{
  final int id;
      final String name;
      final String desc;
      final num price;
      final String color;
      final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  factory Item.fromMap(Map<String,dynamic> map){
    return Item(id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]
    );
  }

 toMap()=>{
    "id":id,
   "name":name,
   "desc":desc,
   "price":price,
   "color":color,
   "image":image,
 };
}


import 'models.dart';

class Offer {
  String? id;
  int? price;
  Product? product;

  Offer({
    this.id,
    this.price,
    this.product,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        id: json["id"],
        price: json["price"],
        product: Product.fromJson(json['product']),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "product": product?.toJson(),
      };
}

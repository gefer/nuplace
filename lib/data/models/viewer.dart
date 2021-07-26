import 'models.dart';

class Viewer {
  String? id;
  String? name;
  int? balance;
  List<Offer>? offers;

  Viewer({
    this.id,
    this.name,
    this.balance,
    this.offers,
  });

  factory Viewer.fromJson(Map<String, dynamic> json) => Viewer(
        id: json["id"],
        name: json["name"],
        balance: json["balance"],
        offers: json['offers']
            .map<Offer>((offersJson) => Offer.fromJson(offersJson))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "balance": balance,
        "offers": offers?.map<Map>((offer) => offer.toJson()).toList()
      };
}

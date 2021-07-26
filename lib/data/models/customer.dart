class Customer {
  final String? id;
  final String? name;
  final int? balance;

  Customer({
    this.id,
    this.name,
    this.balance,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        name: json["name"],
        balance: json['balance'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "balance": balance,
      };
}

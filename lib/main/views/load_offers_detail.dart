import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuplace/data/models/models.dart';
import 'package:nuplace/main/factories/usecases/buy_product_result_factory.dart';

class OfferDetail extends StatefulWidget {
  final Offer offer;

  OfferDetail({required this.offer}) : super();

  @override
  _OfferDetailState createState() => _OfferDetailState(offer);
}

class _OfferDetailState extends State<OfferDetail> {
  final Offer offer;

  _OfferDetailState(this.offer);

  @override
  Widget build(BuildContext context) {
    final Product? product = offer?.product;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes da oferta"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        onPressed: () {
          if (offer.id == null) return;
          makeBuyProduct().make(offer.id ?? "");
        },
        icon: Icon(Icons.check),
        label: Text('Comprar'),
      ),
      body: ListView(
        children: [
          Image.network(product?.image ?? 'no_image.png'),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product?.name ?? "",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  product?.description ?? "",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.purple,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "R\$ ${offer?.price?.toStringAsFixed(2)}" ?? "0.00",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

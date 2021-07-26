import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuplace/data/models/models.dart';
import 'package:nuplace/main/views/views.dart';

class OfferCard extends StatelessWidget {
  final Offer offer;

  const OfferCard({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: getRows(),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OfferDetail(offer: offer),
          ),
        );
      },
    );
  }

  getRows() {
    return Row(
      children: [
        getImage(offer?.product?.image),
        getInfoAndPrice(),
      ],
    );
  }

  Widget getImage(String? image) {
    return Container(
      height: 120,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          image ?? "",
          fit: BoxFit.fitHeight,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget getInfoAndPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          offer?.product?.name ?? "",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "R\$ ${offer?.price?.toStringAsFixed(2)}" ?? "0.00",
          style: TextStyle(
            fontSize: 20,
            color: Colors.teal,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

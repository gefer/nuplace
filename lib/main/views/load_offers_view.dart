import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuplace/data/models/models.dart';
import 'package:nuplace/main/factories/usecases/usecases.dart';
import 'package:nuplace/main/widgets/widgets.dart';

class LoadOffersView extends StatefulWidget {
  const LoadOffersView({Key? key}) : super(key: key);

  @override
  _LoadOffersViewState createState() => _LoadOffersViewState();
}

class _LoadOffersViewState extends State<LoadOffersView> {
  Viewer? viewer;

  @override
  void initState() {
    doLoadOffersAsync();
    super.initState();
  }

  Future<void> doLoadOffersAsync() async {
    viewer = await makeGetOffers().getViewer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Nuplace - suas ofertas'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 2),
            child: PrincipalCard(
              balance: viewer?.balance ?? 0,
              username: viewer?.name ?? "",
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 140, 5, 2),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return OfferCard(
                  offer: viewer?.offers?[index] ?? Offer(),
                );
              },
              itemCount: viewer?.offers?.length ?? 0,
            ),
          )
        ],
      ),
    );
  }
}

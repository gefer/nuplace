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
  Viewer viewer = Viewer();

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
            child: FutureBuilder(
              future: makeGetOffers().getViewer(),
              builder: (context, AsyncSnapshot? asyncSnapshot) {
                if (asyncSnapshot?.data == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                Viewer? _viewer = asyncSnapshot?.data;

                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return OfferCard(
                      offer: _viewer?.offers?[index] ?? Offer(),
                    );
                  },
                  itemCount: _viewer?.offers?.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:bloc_app/app/login/model/gif_model.dart';
import 'package:flutter/material.dart';

class ListGif extends StatelessWidget {
  final List<Datum> gifs;

  const ListGif({Key? key, required this.gifs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: gifs.length,
      itemBuilder: (BuildContext context, int index) {
        return _TargetGig(gif: gifs[index], index: index);
      },
    );
  }
}

class _TargetGig extends StatelessWidget {
  final Datum gif;
  final int index;

  const _TargetGig({Key? key, required this.gif, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) => OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            child: Container(
              color: Color.fromARGB(145, 213, 220, 225),
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.only(top: 1),
              child: Wrap(
                children: [
                  Center(
                    child: Text(
                      '${gif.title}-',
                      style: TextStyle(color: Color.fromARGB(255, 66, 59, 59)),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'detail',
                          arguments: gif),
                      child: Container(
                        color: Colors.black,
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            FadeInImage(
                              placeholder: AssetImage('assets/img/giphy.gif'),
                              image: NetworkImage(gif.images.original.url),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}

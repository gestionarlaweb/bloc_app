import 'package:bloc_app/app/login/model/gif_model.dart';
import 'package:flutter/material.dart';

class ListGif extends StatelessWidget {
  final List<Datum> gifs;

  const ListGif({Key? key, required this.gifs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.only(top: 10),
          child: Wrap(
            children: [
              Text(
                '${gif.title}-',
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                // ignore: unnecessary_null_comparison
                child: (gif.embedUrl != null)
                    ? FadeInImage(
                        placeholder: AssetImage('assets/img/giphy.gif'),
                        image: NetworkImage(
                            'https://giphy.com/embed/bgOlRzT5klkAWyn5Kf'), //NetworkImage(gif.embedUrl),
                      )
                    : Image(
                        image: AssetImage('assets/img/no-image.png'),
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

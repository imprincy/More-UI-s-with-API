import 'package:airtel_app/movie_api/model_movie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Movies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return MovieModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movies"),
          elevation: 8,
        ),
        body: Consumer<MovieModel>(
            builder: (BuildContext context, MovieModel value, Widget? child) {
              if (value.movieData.isEmpty) {
                value.apiCallingMovie();
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: value.movieData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap:() {
                          int id = value.movieData[index]['id'];
                          Navigator.pushNamed(context, 'aboutMovie', arguments: id);
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Image.network(
                                    'https://image.tmdb.org/t/p/w500${value
                                        .movieData[index]['poster_path']}',
                                    height: 270,
                                    width: 180,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.0,
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: CircleAvatar(

                                        )),
                                  ),
                                ],
                              ),
                              Text(
                                "${value.movieData[index]['title']}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text("${value.movieData[index]['release_date']}")
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.5,


                  ),
                ),
              );
            }),
      ),
    );
  }
}

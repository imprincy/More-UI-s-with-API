// import 'package:airtel_app/api/model_movie.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:intl/intl.dart';
//
// class Movie extends StatelessWidget {
//   const Movie({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (BuildContext context) {
//         return MovieModel();
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Movies List'),
//           elevation: 8,
//         ),
//         body: Consumer<MovieModel>(
//           builder: (BuildContext context, MovieModel value, Widget? child) {
//             if (value.movieData.isEmpty) {
//               value.apiCallingMovie();
//             }
//             return SizedBox(
//               width: MediaQuery.of(context).size.width * 0.5,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: value.movieData.length,
//                 itemBuilder: (context, index) {
//                   DateTime dateTime =
//                       DateTime.parse(value.movieData[index]['release_date']);
//                   String format = DateFormat("MMM dd, yyyy").format(dateTime);
//
//                   return Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Card(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Stack(
//                             alignment: Alignment.bottomLeft,
//                             children: [
//                               Image.network(
//                                 'https://image.tmdb.org/t/p/w500${value.movieData[index]['poster_path']}',
//                                 height: 270,
//                                 width: 180,
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 8.0),
//                                 child: Align(
//                                   alignment: Alignment.bottomLeft,
//                                   child: CircleAvatar(),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   " ${value.movieData[index]['title']}",
//                                   style: const TextStyle(
//                                       fontSize: 16, fontWeight: FontWeight.bold),
//                                 ),
//                                 Text(format.toString())                            ],
//                             ),
//                           )
//
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

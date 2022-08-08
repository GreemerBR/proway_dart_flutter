import 'package:flutter/material.dart';
import 'package:get_api_ghibli/movie_model.dart';
import 'package:get_api_ghibli/movie_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MoviesPage extends StatefulHookConsumerWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends ConsumerState<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(movieProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ghibli Movies'),
      ),
      body: Center(
        child: Visibility(
          visible: movies.isNotEmpty,
          replacement: const CircularProgressIndicator(),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              MovieModel myMovies = movies[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Flexible(
                          child: AlertDialog(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            title: Text(
                              myMovies.title,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            content: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  const Text(
                                    'Descrição',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myMovies.description,
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image.network(myMovies.movieBanner),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Diretor:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        myMovies.director,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Data de lançamento:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        myMovies.releaseDate,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Duração:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        myMovies.runningTime,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      const Text(
                                        'min',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Título original:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        myMovies.originalTitle,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Título original romanizado:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          myMovies.originalTitleRomanised,
                                          style: const TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            myMovies.title,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.network(myMovies.image),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

  // MovieRepository repository = MovieRepository(Dio());
  // late Future<List<MovieModel>> movies;

  // @override
  // void initState() {
  //   movies = repository.getAllMovies();
  //   super.initState();
  // }
  
  // child: FutureBuilder(
  //   future: movies,
  //   builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
  //     if (snapshot.hasData) {
  //       return ;
  //     }
  //     return const Center(
  //       child: CircularProgressIndicator(),
  //     );
  //   },
  // ),
import 'package:flutter/material.dart';
import 'package:user_profile_ui/animations/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/emma.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3),
                          ],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(
                          20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeAnimation(
                              delay: 1,
                              child: Text(
                                'Emma Watson',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FadeAnimation(
                                  delay: 1.2,
                                  child: Text(
                                    '60 Videos',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FadeAnimation(
                                  delay: 1.3,
                                  child: Text(
                                    '240K Subscribers',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(
                        20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FadeAnimation(
                            delay: 1.6,
                            child: Text(
                              'Emma Charlotte Duerr Watson is a British film actress and fashion model. She is best known for her role as Hermione Granger in the Harry Potter films, in which she co-starred with Daniel Radcliffe and Rupert Grint. Watson landed the role in 1999 when she was 9 years old.',
                              style: TextStyle(
                                color: Colors.grey,
                                height: 1.4,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const FadeAnimation(
                            delay: 1.7,
                            child: Text(
                              'Born',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeAnimation(
                            delay: 1.7,
                            child: Text(
                              'April, 15th 1990, Paris, France',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const FadeAnimation(
                            delay: 1.7,
                            child: Text(
                              'Nationality',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const FadeAnimation(
                            delay: 1.7,
                            child: Text(
                              'British',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const FadeAnimation(
                            delay: 1.7,
                            child: Text(
                              'Videos',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeAnimation(
                            delay: 1.8,
                            child: SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  makeVideo(
                                    image: 'assets/images/emma-1.jpg',
                                  ),
                                  makeVideo(
                                    image: 'assets/images/emma-2.jpg',
                                  ),
                                  makeVideo(
                                    image: 'assets/images/emma-3.jpg',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: FadeAnimation(
                delay: 2,
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}

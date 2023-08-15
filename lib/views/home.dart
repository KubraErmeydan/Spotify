import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height* .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0),
              ]
            )
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recently Played",style: Theme.of(context).textTheme.headline6,),
                    SizedBox(width:20 ,),
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width:16 ,),
                        Icon(Icons.settings),
                      ],
                    )
                  ],
                ),
              ),


              SingleChildScrollView(
                padding: EdgeInsets.all(16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  AlbumCard(image:AssetImage('assets/dktt.jpg'), label:'Dolu Kadehi Ters Tut',),
                    SizedBox(width: 16,),
                    AlbumCard(image:AssetImage('assets/dragons.jpeg'), label:'Imagine Dragons',),
                    SizedBox(width: 16,),
                    AlbumCard(image:AssetImage('assets/lp.jpeg'), label:'LP',),
                    SizedBox(width: 16,),
                    AlbumCard(image:AssetImage('assets/mavigri.jpg'), label:'Mavi Gri',),
                    SizedBox(width: 16,),
                ],),
              )
            ],),
          ),
        )
      ],),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    super.key, required this.image, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image, width: 120,height: 120,fit: BoxFit.cover),
        SizedBox(height: 10,),
        Text(label)
      ],
    );
  }
}

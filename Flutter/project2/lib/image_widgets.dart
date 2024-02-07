import 'package:flutter/material.dart';

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_interpolation_to_compose_strings
//ignore_for_file: avoid_print
//ignore_for_file: sort_child_properties_last
//ignore_for_file: dartprefer_final_fields
//ignore_for_file: prefer_const_literals_to_create_immutables
//ignore_for_file: avoid_unnecessary_containers
//ignore_for_file: prefer_final_fields

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _imgURL ='';
    // String _logoURL ='';
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      'assets/images/car.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                /* Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),*/
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        /*child: Text(
                      'E',
                      style: Theme.of(context).textTheme.headline1,
                  ),*/
                        // backgroundImage: NetworkImage(_logoURL),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*  Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _imgURL),
          ),*/
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: Colors.blue,
            ),
          )),
        ],
      ),
    );
  }
}

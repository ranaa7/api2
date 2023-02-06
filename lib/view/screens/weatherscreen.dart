import 'package:api2/provider/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Weatherscreen extends StatelessWidget {
  const Weatherscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Weatherprovider>(context);
      return Scaffold(
          appBar: AppBar(
            title: TextField(
              onChanged:(value){
               provider.getweather(value);
              },
              decoration:InputDecoration(suffixIcon: Icon(Icons.search),hintText:"search"),),
          ),
          body:Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                      Colors.lightBlue,
                      Colors.purpleAccent,
                      Colors.black
                    ])),
            child: Center(
            child: Column(
              children: [
                Text("${provider.postmodel4.temp}",style: TextStyle(fontSize: 30)),
                Text(provider.postmodel4.name,style: TextStyle(fontSize: 30,color: Colors.black),),
                Text(provider.postmodel4.des,style: TextStyle(fontSize: 30,color: Colors.black)),

              ],
            ),
          ) ,)

          ) ;
    }
  }


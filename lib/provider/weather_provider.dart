import 'package:api2/Post_model/postmodel5.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Weatherprovider extends ChangeNotifier{

Postmodel4 postmodel4=Postmodel4(name: "", des: "", id: 0, temp: 0);


  Future getweather(String value) async {
    try{
      var response= await Dio().get("https://api.openweathermap.org/data/2.5/weather?appid=7b2ce1bed528aaf8b9558abc7528ce77&q=$value");
      postmodel4= Postmodel4.fromJson(response.data);
      print(response.data);
      notifyListeners();
    }catch(e){
      print(e);
    }

  }
}
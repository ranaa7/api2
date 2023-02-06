import 'dart:convert';

import 'package:api2/Post_model/Postmodel1.dart';
import 'package:api2/Post_model/postmodel2.dart';
import 'package:api2/Post_model/postmodel3.dart';
import 'package:api2/Post_model/postmodel4.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'cubitclass_state.dart';


class classCubit extends Cubit<classState> {
  classCubit() : super(classInitial()){
    //getquotes();
    //getquoteshttp();

  }

  List<Quotemodel> quotes =[];
  Future getquotes() async{
    try {
      var response = await Dio().get("https://dummyjson.com/quotes");
      quotes = List<Quotemodel>.from(response.data['quotes'].map((e)=>Quotemodel.fromJson(e)));
      emit(getQuotestate());
  }
  catch(e){
      print(e);
  }
  }
  Future getquoteshttp() async{    //di btry2t el http
    try {
      var response = await http.get(Uri.parse("https://dummyjson.com/quotes"));
      var request = jsonDecode(response.body);
      quotes = List<Quotemodel>.from(request['quotes'].map((e)=>Quotemodel.fromJson(e)));
      emit(getQuotestate());
    }
    catch(e){
      print(e);
    }

  }
  Future createpost(Postmodel post)async{
    var response = await Dio().post("https://dummyjson.com/posts/add",data:post.toJson());
    print(response.data);

  }
  Future createpost2(Postmodel2 post2)async{
    var response = await Dio().post("https://dummyjson.com/users/add",data:post2.toJson());
    print(response.data);

  }
  Future createpost3(Postmodel3 post3)async{
    var response=await Dio().post("https://dummyjson.com/comments/add",data:post3.toJson());
    print(response.data);

  }

}

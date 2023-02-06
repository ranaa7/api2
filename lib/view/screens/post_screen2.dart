
import 'package:api2/Post_model/postmodel4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubitclass_cubit.dart';

class Postscreen2 extends StatelessWidget {
  Postscreen2({Key? key}) : super(key: key);
  var body = TextEditingController();

  var postId = TextEditingController();

  var userId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<classCubit, classState>(builder: (context, state) {
      var cubit = context.read<classCubit>();
      return Scaffold(
          appBar: AppBar(
            title: Text("Comments screen"),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        colors: [
                      Colors.lightBlue,
                      Colors.purpleAccent,
                      Colors.black
                    ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: postId,
                      decoration: InputDecoration(
                        hintText: ("post id"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: body,
                      decoration: InputDecoration(
                        hintText: ("body"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: userId,
                      decoration: InputDecoration(
                        hintText: ("user id"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink, // background
                          onPrimary: Colors.purple, // foreground
                        ),
                        onPressed: () {
                          cubit.createpost3(Postmodel3(body: body.text, postId: int.parse(postId.text), userId: int.parse(userId.text)));
                        },
                        child: Text(
                          "Add post",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              )
            ],
          ));
    });
  }
}

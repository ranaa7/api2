import 'package:api2/Post_model/postmodel3.dart';
import 'package:api2/cubit/cubitclass_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var title = TextEditingController();

  var body = TextEditingController();

  var age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<Postprovider>(context);

    return BlocBuilder<classCubit, classState>(builder: (context, state) {
      var cubit = context.read<classCubit>();
      return Scaffold(
          appBar: AppBar(
            title: Text("Home screen"),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: title,
                decoration: InputDecoration(
                  hintText: ("title"),
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
                controller: age,
                decoration: InputDecoration(
                  hintText: ("age"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.yellow, // foreground
                  ),
                  onPressed: () {
                    setState(() {
                      cubit.createpost2(Postmodel2(
                          firstName: title.text,
                          lastName: body.text,
                          age: int.parse(age.text)));
                    });



                  },
                  child: Text(
                    "Add post",
                    style: TextStyle(color: Colors.black),
                  )),
              Text(title.text ),
            ],
          ));
    });
  }
}

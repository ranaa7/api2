
import 'package:api2/cubit/cubitclass_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class Postscreen extends StatelessWidget {
  const Postscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<classCubit,classState>(builder: (context,state){
      var cubit=context.read<classCubit>();
      return Scaffold(
        appBar: AppBar(
          title: Text("Post screen"),
        ),
        body:ListView.builder(itemCount:cubit.quotes.length ,itemBuilder: (context, index) {
          return Card(
            color: Colors.purpleAccent,
            child: ListTile(
              title: Text(cubit.quotes[index].author),
              subtitle: Text(cubit.quotes[index].quote),
            ),
          );
        }),

        //     floatingActionButton: FloatingActionButton(     mmkn el try2a di bs hanady 3la el fun mn el constructor 3latol
        //     onPressed: () {
        //       context.read<classCubit>().getquotes();
        //
        //       // provider1.getquote();
        // },
        // child: Icon(Icons.add),
        // backgroundColor: Colors.pinkAccent,
        // ),


      ) ;

    });




  }
}

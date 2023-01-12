import 'package:flutter/material.dart';
import 'model/model.dart';
import 'student_api.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),

      body: Container(
        child: FutureBuilder(
          future: fetchStudents(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data?.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  Students product = snapshot.data![index];
                  return Text('${product.section}');
                },
              );
            }
           return CircularProgressIndicator();

          },
        ),
      ),
    );
  }
}

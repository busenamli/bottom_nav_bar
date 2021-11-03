import 'package:flutter/material.dart';

class GelenBasvuru extends StatefulWidget{

  List<String>? modelList;

  GelenBasvuru({this.modelList});

  @override
  State<GelenBasvuru> createState() {
    return _GelenBasvuruPageState(modelList: modelList);
  }
}

class _GelenBasvuruPageState extends State<GelenBasvuru> {

  List<String>? modelList;

  _GelenBasvuruPageState({this.modelList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Home'),
      ),*/
      body: Center(
          child: buildList()
          //Text('Gelen Başvuru', style: TextStyle(fontSize: 60))),
      )
    );
  }

  ListView buildList(){
    return ListView.builder(
        //itemCount: modelList!.length,
        itemCount: widget.modelList!.length,
        itemBuilder: (BuildContext context, int position){
          return Card(
            color: Colors.black12,
            elevation: 2,
            child: ListTile(
                leading: Icon(
                  (Icons.file_copy_sharp),
                ),
              title: Text(widget.modelList![position]),
              trailing: Icon(Icons.circle),
              onTap: (){

              },
            ),
          );
        });
  }
}
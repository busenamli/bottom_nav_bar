import 'package:flutter/material.dart';

class KabulEdilen extends StatefulWidget{
  List<String>? modelList;

  KabulEdilen({this.modelList});

  @override
  State<KabulEdilen> createState() {
    return _KabulEdilenBasvuruPageState(modelList: modelList);
  }
}

class _KabulEdilenBasvuruPageState extends State<KabulEdilen> {

  List<String>? modelList;

  _KabulEdilenBasvuruPageState({this.modelList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Home'),
      ),*/
      body: Center(
        child: buildList()
      ),
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
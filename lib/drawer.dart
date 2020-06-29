import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("sevdenurzorlu"),
              accountEmail: Text("sevdenzorlu@gmail.com"),
              currentAccountPicture: Image.network("https://img.pngio.com/my-profile-icon-png-327283-free-icons-library-profile-icon-png-500_500.jpg"),
              otherAccountsPictures: <Widget>[
                CircleAvatar(backgroundColor: Colors.deepOrange,child: Text("AS"),),
                CircleAvatar(backgroundColor: Colors.green,child: Text("SZ"),)

              ],
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(leading: Icon(Icons.assignment),title: Text("Tüm Gelen Kutuları"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.mail),title: Text("Gelen Kutusu"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.send),title: Text("Giden Kutusu"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.error),title: Text("Spam Kutusu"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.delete),title: Text("Çöp Kutusu"),trailing: Icon(Icons.chevron_right),),
                  ListTile(leading: Icon(Icons.drafts),title: Text("Taslaklar"),trailing: Icon(Icons.chevron_right),),
                  Divider(),


                ],
              ),
            ),
          ],

        ),
      ) ,
      appBar:AppBar(
        title: Text("Flutter Drawer Kullanımı"),

      ) ,
    );
  }
}

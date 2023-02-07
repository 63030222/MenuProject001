import 'package:flutter/material.dart';
import 'info.dart';
import 'string_resource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringResource.app_name,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${StringResource.app_name}")),
      body: _listView(context),
    );
  }
}

ListView _listView(BuildContext context) {
  return ListView.builder(
      itemCount: StringResource.items.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${StringResource.items[index]}',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('Price : ${StringResource.price[index]}'' Rate : ${StringResource.rate[index]}', style: TextStyle(color: Colors.blue[450]),),
            leading:
        Container(
        height: 80,
        width: 80,
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
              image: AssetImage( StringResource.image[index]
              ),
        fit: BoxFit.cover,
        ),
        ),
        ),
            // Container(
            //   height: 80,
            //   width: 80,
            //   child: Image(
            //       height: 100,
            //       image: AssetImage( StringResource.image[index]
            //       ),
            //       ),
            // ),
            // Icon(
            //   Icons.shopping_cart,
            //   color: Colors.green,
            // ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) =>
                            Info(StringResource.items[index], StringResource.price[index], StringResource.rate[index])

                    ));},
            ),
          ),
        );
      });
}
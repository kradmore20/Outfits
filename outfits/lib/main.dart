import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outfits',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Vogue'
      ),
      home: const FavouritesPage(),
    );
  }
}

      class NavigationDrawer extends StatelessWidget {
        const NavigationDrawer({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) => Drawer(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildHeader(context),
                buildMenuItems(context)
              ]
            )
          )
      );

      Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        )
      );

      Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            leading: const Icon(Icons.favorite_border_outlined),
            title: const Text('Favourites'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const FavouritesPage()
              ));
            }
          ),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: const Text('Inventory'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const InventoryPage()
              ));
            }
          ),
          ListTile(
            leading: const Icon(Icons.girl_outlined),
            title: const Text('Create Outfit'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const CreateOutfitPage()
              ));
            }
          ),
          ListTile(
            leading: const Icon(Icons.add_a_photo_outlined),
            title: const Text('Add Items'),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const AddItemsPage()
              ));
            }
          )
        ]
      );
}

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: const NavigationDrawer(),
    appBar: AppBar(title: const Text('FAVOURITES'),
    titleTextStyle: const TextStyle(color: Colors.black54, fontSize: 33, fontFamily: 'Vogue'),
    backgroundColor: const Color.fromARGB(188, 143, 29, 7),)
    );
}

class InventoryPage extends StatelessWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(title: const Text('INVENTORY'),
    titleTextStyle: const TextStyle(color: Colors.black54, fontSize: 33, fontFamily: 'Vogue'),
    backgroundColor: const Color.fromARGB(172, 129, 8, 66),)
    );
}

class CreateOutfitPage extends StatelessWidget {
  const CreateOutfitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(title: const Text('CREATE OUTFIT'),
    titleTextStyle: const TextStyle(color: Colors.black54, fontSize: 33, fontFamily: 'Vogue'),
    backgroundColor: const Color.fromARGB(179, 177, 130, 37),)
    );
}

class AddItemsPage extends StatelessWidget {
  const AddItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(title: const Text('ADD ITEMS'),
    titleTextStyle: const TextStyle(color: Colors.black54, fontSize: 33, fontFamily: 'Vogue'),
    backgroundColor: const Color.fromARGB(172, 118, 200, 81),)
    );
}
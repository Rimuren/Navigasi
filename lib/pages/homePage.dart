import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'package:navigasi/widget/footer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item('Noir M1-NEX', 376950, 'assets/images/Noir Mouse.png'),
    Item('Rexus QB400', 171000, 'assets/images/Rexus Mouse.png'),
    Item('WL MOUSE BEAST X MAX', 2399000, 'assets/images/WL Mouse.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Barang :'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments: items[index],
                      );
                    },
                    child: ListTile(
                      title: Text(items[index].name),
                      subtitle: Text('Rp ${items[index].price}'),
                    ),
                  ),
                );
              },
            ),
          ),
          const FooterWidget(
            name: 'M.ismatullah.s.s',  // Ganti dengan nama yang diinginkan
            nim: '362358302099',    // Ganti dengan NIM yang diinginkan
          ),
        ],
      ),
    );
  }
}
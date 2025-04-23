import 'package:flutter/material.dart';
import 'package:play_navigation/presentation/homepage.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Food Order: $makanan'),
            Text('Drink Order: $minuman'),
            Text('Food QTY Order: $jumlahMakanan'),
            Text('Drink QTY Order: $jumlahMinuman'),
            Text('Total Price: $totalHarga'),

            
          ],
        ),
      ),
    );
  }
}

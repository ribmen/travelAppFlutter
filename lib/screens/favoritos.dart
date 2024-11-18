import 'package:f05_lugares_app/components/item_lugar.dart';
import 'package:f05_lugares_app/model/lugar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:f05_lugares_app/lugar_provider.dart';

class FavoritosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lugaresFavoritos =
        Provider.of<LugarProvider>(context).lugaresFavoritos;

    if (lugaresFavoritos.isEmpty) {
      return const Center(
        child: Text(
          'Nenhum Lugar Marcado como Favorito!',
          style: TextStyle(fontSize: 20),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: lugaresFavoritos.length,
        itemBuilder: (ctx, index) {
          return ItemLugar(lugar: lugaresFavoritos[index]);
        },
      );
    }
  }
}

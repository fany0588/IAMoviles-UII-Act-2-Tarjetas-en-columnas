import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  // 🔥 APPBAR PRO
  Widget appBarPersonalizado() {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1F3A5F),
            Color(0xFF4A6FA5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Icon(Icons.shopping_bag, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Amazon",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          Row(
            children: [

              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(40),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(8),
                child: Icon(Icons.search, color: Colors.white),
              ),

              SizedBox(width: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(40),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(8),
                child: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  // 🔥 TARJETAS PRO
  Widget tarjeta(String titulo, String descripcion, String imagen, Color color, IconData icono) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Row(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imagen,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Icon(icono, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      titulo,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 6),

                Text(
                  descripcion,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(40),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withAlpha(80),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "Ver más",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1F3A5F),
              Color(0xFF4A6FA5),
              Color(0xFFFFE0A3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
          children: [

            // 👇 APPBAR
            appBarPersonalizado(),

            // 👇 TARJETAS
            Expanded(
              child: ListView(
                children: [

                  tarjeta(
                    "Electrónica",
                    "Gadgets, celulares y tecnología",
                    "https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Electronica.jpg",
                    Color(0xFF1F3A5F),
                    Icons.devices,
                  ),

                  tarjeta(
                    "Hogar",
                    "Todo para tu casa y decoración",
                    "https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Hogar.jpg",
                    Color.fromARGB(255, 202, 184, 151),
                    Icons.home,
                  ),

                  tarjeta(
                    "Ropa",
                    "Moda, estilo y tendencias",
                    "https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Ropa.jpg",
                    Color(0xFFFF9900),
                    Icons.checkroom,
                  ),

                  tarjeta(
                    "Mascotas",
                    "Accesorios y cuidado animal",
                    "https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Mascotas1.jpg",
                    Color(0xFF4A6FA5),
                    Icons.pets,
                  ),

                  tarjeta(
                    "Deportes",
                    "Equipamiento y fitness",
                    "https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Deportes1.jpg",
                    Color.fromARGB(255, 224, 162, 68),
                    Icons.sports_soccer,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
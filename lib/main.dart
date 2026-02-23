import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Perfil.dart';
import 'package:flutter_application_1/widgets/Categoria.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle:true, 
          title: const Text('Explore Categories'),
          backgroundColor: const Color(0xFF1DB9C3),
          actions:<Widget> [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_shopping_cart),),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_business_sharp),),],),

body: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,decoration: BoxDecoration(color: const Color(0xFFC9C6C6),borderRadius: BorderRadius.circular(25),),
        child: Row(
          children: const [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 10),
            Text('Buscar',style: TextStyle(color: Colors.grey),),],
        ),
      ),

      const SizedBox(height: 40),
      
      ContacMe(
        title: "Perfil",
        subtitle: "Bogotá, Colombia",
        icon: Icons.person,
        ),
        
        const SizedBox(height: 40),


      Categoria(
        title: 'Supermercado',
        subtitle:'Encuentra productos frescos ' ,
      ),


      Categoria(
        title: 'Ropa',
        subtitle: 'Explora las ultimas tendencias',
        onTap: () {
          debugPrint('');
        },
      ),


            Categoria(
        title: 'Tecnologia',
        subtitle: 'Descubre dispositivos y accesorios',
        onTap: () {
          debugPrint('');
        },
      ),

      Categoria(
        title: 'Salud y Bienestar',
        subtitle: 'Servicios, cuidado personal y fitness',
      ),



    ],
  ),
),


bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  currentIndex: 0, 
  selectedItemColor: Color(0xFF1DB9C3),
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Mi Tienda',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_offer),
      label: 'Ofertas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Pedidos',
    ),          
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Configuracion',
    ),
  ],
),

        
      ),
    );
  }
}
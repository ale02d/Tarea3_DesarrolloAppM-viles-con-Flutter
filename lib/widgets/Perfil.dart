import 'package:flutter/material.dart';


class ContacMe extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  const ContacMe({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25,),
         leading: const CircleAvatar(radius: 40, backgroundImage: NetworkImage('https://img.freepik.com/foto-gratis/retrato-mujer-tomando-foto-dispositivo-dia-mundial-fotografia_23-2151704378.jpg?semt=ais_hybrid&w=740&q=80',),),
        title: Center(
          child: Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.add),
        onTap: onTap,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:listview/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
   ListaPage({super.key});

    final List<Contato> contatos = [
    Contato('Alice Calisti de Souza', 'alicecalisti@email.com'),
    Contato('Daniel Souza', 'danielsouza@email.com'),
    Contato('Terezinha Calisti', 'trerezinha.calisti@email.com')
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview builder')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          //final contato = contatos[index];
          return ListTile(
            leading: CircleAvatar(child: Text(contatos[index].nomecompleto[0]),),
            title: Text(contatos[index].nomecompleto),
            subtitle: Text(contatos[index].email) ,

          );
        },
      ),
    );
  }
}


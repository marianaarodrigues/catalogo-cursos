import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cursos CEP Cora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF004A8D)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF004A8D),
          title: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/logo.jpg',
                scale: 3,
              ),
              const Text(
                "Catálogo de cursos - Programa Senac de Gratuidade",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 20.0,
                  runSpacing: 10.0,
                  children: [
                    _buildImageWithCaption('images/informatica-fundamental.jpg',
                        'Informática Fundamental - 60 h'),
                    _buildImageWithCaption(
                        'images/python.jpg', 'Fundamentos de Python I - 30 h'),
                    _buildImageWithCaption('images/dev-web-front-end.jpg',
                        'Desenvolvedor WEB Front-End - 108 h'),
                    _buildImageWithCaption(
                        'images/assistente-administrativo.jpg',
                        'Assistente Administrativo - 160 h'),
                    _buildImageWithCaption('images/operador-de-computador.jpg',
                        'Operador de Computador - 196 h'),
                    _buildImageWithCaption('images/adm-banco-de-dados.jpg',
                        'Administrador de Banco de Dados - 200 h'),
                    _buildImageWithCaption('images/programador-de-sistemas.jpg',
                        'Programador de Sistemas - 200 h'),
                    _buildImageWithCaption('images/sistema-cftv.jpg',
                        'Instalador de Sistemas Eletroeletrônicos e CFTV - 200 h'),
                    _buildImageWithCaption('images/tecnico-administracao.jpg',
                        'Técnico em Administração - 1.000 h'),
                    _buildImageWithCaption('images/tecnico-informatica.jpg',
                        'Técnico em Informática - 1.200 h'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildImageWithCaption(String imagePath, String caption) {
  return Stack(
    children: [
      Image.asset(
        imagePath,
        width: 250,
        height: 250,
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          color: Colors.black.withOpacity(0.3),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            caption,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

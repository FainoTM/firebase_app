import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'appRoutes.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Página Inicial', style: TextStyle(color: Colors.white),
      ),
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
       // leading:
       // IconButton(
        //  icon: Icon(Icons.person, color: Colors.white,),
       //   onPressed: (){
           // Navigator.pushNamed(context, AppRoutes.loginUsuario);
        //  },
       // ),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
          padding: EdgeInsets.all(12),
          itemCount: 7,
          itemBuilder: (context, int index) {

            List<IconData> icones = [
              Icons.person_add,
              Icons.add_shopping_cart,
              Icons.account_balance_sharp,
              Icons.list_alt,
              Icons.line_style_rounded,
              Icons.featured_play_list_outlined,
              Icons.support
            ];

            List<String> texto = [
              'Cadastrar Pessoa',
              'Cadastrar Produto',
              'Cadastrar Fornecedor',
              'Listar Pessoas',
              'Listar Produtos',
              'Listar Fornecedores',
              'Suporte'
            ];

            return GestureDetector(
                onTap: () {
                  switch(index){
                    case 0: Navigator.pushNamed(context, AppRoutes.cadastrarPessoa);
                    //case 1: Navigator.pushNamed(context, AppRoutes.cadastrarProduto);
                    case 3: Navigator.pushNamed(context, AppRoutes.listarPessoa);
                    //break;
                  }
                },
                child: Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icones[index], color: Colors.white, size: 90,),
                        Text(texto[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)
                      ],
                    )
                )
            );
          }),
    );
  }
}

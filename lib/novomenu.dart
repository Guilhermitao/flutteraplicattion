import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteraplicativo/ajuda.dart';
import 'package:flutteraplicativo/cliente.dart';
import 'package:flutteraplicativo/main.dart';

class NovoMenu extends StatelessWidget {
  const NovoMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          children:<Widget> [ 
            SizedBox(height: 20,),        
           menuItem(texto: "Principal", icone:
            Icons.house, clique:()=>itemSelecionado(
              context, 0)
            ),  
            SizedBox(height: 20,),        
           menuItem(texto: "Cliente", icone:
            Icons.people, clique:()=>itemSelecionado(
              context, 1)
            ),/*menuItem */
            SizedBox(height: 20,),
            menuItem(texto: "Ajuda", icone:
            Icons.help, clique:()=>itemSelecionado(
              context, 2)
            ),/*menuItem */
          ],
        ),
      ),
    );
  }//widget build

  Widget menuItem({
    required String texto,
    required IconData icone,
    VoidCallback? clique,
  })/*widget menuItem*/{
      final cor = Colors.white;
      final corselecao= Colors.grey;
      return ListTile(
             leading: Icon(icone, color:cor),
             title: Text(texto,style: TextStyle(color:cor)),
             hoverColor: corselecao,
             onTap: clique,
      );//ListTile
  }//menuItem

  void itemSelecionado(BuildContext context, int i){
        Navigator.of(context).pop();
                if(i==0){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>MyApp()));
        }
        else if(i==1){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>Cliente()));
        }else if (i==2){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>Ajuda()));
        }//else if
  }//void itemSelecionado

}//statelesswidget
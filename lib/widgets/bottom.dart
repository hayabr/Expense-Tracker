import 'package:expensess/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:expensess/screens/statistics.dart';
import 'package:expensess/screens/add.dart';


class Bootom extends StatefulWidget {
  const Bootom({super.key});

  @override
  State<Bootom> createState() => _BootomState();
}

class _BootomState extends State<Bootom> {
  int index_color=0;
  List screen = [Home(),Statistics (),Home(),Statistics ()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index_color],
      floatingActionButton: FloatingActionButton(onPressed: (){
      
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add_Screen()));
       

      },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff368983),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top:7.5,bottom: 9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    setState(() {
                      index_color=0;
                    });
        
                  },
                child: Icon
                  (Icons.home,size:30,color: index_color==0? Color(0xff368983):Colors.grey)
                ,
              ),
              GestureDetector(
                  onTap: (){
                      setState(() {
                      index_color=1;
                    });
                  },
                child: Icon
                  (Icons.bar_chart_outlined,size:40,color: index_color==1? Color(0xff368983):Colors.grey,)
                ,
              ),
              SizedBox(
               width:20 ,
              ),
              GestureDetector(
                  onTap: (){
                     setState(() {
                      index_color=2;
                    });
                  },
                child: Icon
                  (Icons.account_balance_wallet_outlined,size:40,color: index_color==2? Color(0xff368983):Colors.grey,)
                ,
              ),GestureDetector(
                  onTap: (){
                     setState(() {
                      index_color=3;
                    });
                  },
                child: Icon
                  (Icons.person_outlined,size:40,color: index_color==3? Color(0xff368983):Colors.grey,)
                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
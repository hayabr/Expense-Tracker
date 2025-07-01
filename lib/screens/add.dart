import 'dart:math';
import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => __Add_ScreenState();
}

class __Add_ScreenState extends State<Add_Screen> {
  String? dropdownValue;
  String? selecteditem;
  String? selecteditemi;
  FocusNode ex = FocusNode();
  final TextEditingController expalin_C = TextEditingController();
  final List<String> _item = ['food', 'Transfer', 'Transportation', 'Education'];
   FocusNode amount_C = FocusNode();
  final TextEditingController amount_ = TextEditingController();
  final List<String> _itemi=['income','Expenses'];
  DateTime date = DateTime.now();
  @override
  void initState() {
    super.initState();
    ex.addListener(() {
      setState(() {});
    });
     amount_.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    ex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ...background_container(context),
            Positioned(
              top: 120,
              child: main_container(),
            ),
          ],
        ),
      ),
    );
  }

  Container main_container() {
    return Container(
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: Column(
        children: [
          const SizedBox(height: 50),
          name(),
          const SizedBox(height: 30),
          explain(),
           const SizedBox(height: 30),
           amount(),
            const SizedBox(height: 30),
            how(),
             const SizedBox(height: 30),
             Date(),
             Spacer(),
             GestureDetector(
               child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Color(0xff368983),
                ),
                width: 120,
                height: 50,
                child: Text( 'save',
                         style: TextStyle(color: Colors.white,
                         fontWeight:FontWeight.w600,
                         fontSize: 17,
                           ),
                       ),
                       ),
             ),
             
     SizedBox(height: 20,),
            

        ],
      ),
    );
  }

  Container Date() {
    return Container(
             alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width:2,color: Color(0xffc5c5c5))
            ),
            width: 300,
            child: TextButton(onPressed: ()async{

              DateTime? newDate =await showDatePicker(context: context, 
              initialDate: date,firstDate:DateTime(2020), lastDate: DateTime(2100));
              if (newDate==Null) return;
              setState(() {
                date = newDate!;
              });

            }, child: Text('Date : ${date.day}/ ${date.month} /${date.year}',style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),)),
           );
  }

  Padding how() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: const Color(0xffc5c5c5),
        ),
      ),
      child: DropdownButton<String>(
        value: selecteditemi,
        items: _itemi
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      child: Image.asset('assets/${e}.png'),
                    ),
                    const SizedBox(width: 10),
                    Text(e, style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            )
            .toList(),
        selectedItemBuilder: (BuildContext context) => _itemi
            .map(
              (e) => Row(
                children: [
                  Container(
                    width: 42,
                    child: Image.asset('assets/${e}.png'),
                  ),
                  const SizedBox(width: 5),
                  Text(e, style: const TextStyle(fontSize: 18)),
                ],
              ),
            )
            .toList(),
        hint: const Text(
          'how',
          style: TextStyle(color: Colors.grey),
        ),
        dropdownColor: Colors.white,
        isExpanded: true,
        underline: Container(),
        onChanged: (value) {
          setState(() {
            selecteditemi = value!;
          });
        },
      ),
    ),
  );
  }

  Padding amount() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          keyboardType: TextInputType.number,
          focusNode: amount_C,
          controller: amount_,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            labelText: 'amount',
            labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                color: Color(0xffc5c5c5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                color: Color(0xffc5c5c5),
              ),
            ),
          ),
        ),
      );
  }

  Padding explain() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            focusNode: ex,
            controller: expalin_C,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              labelText: 'Explain',
              labelStyle: TextStyle(fontSize: 17, color: Colors.grey.shade500),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xffc5c5c5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: Color(0xffc5c5c5),
                ),
              ),
            ),
          ),
        );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: const Color(0xffc5c5c5),
          ),
        ),
        child: DropdownButton<String>(
          value: selecteditem,
          items: _item
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        child: Image.asset('assets/${e}.png'),
                      ),
                      const SizedBox(width: 10),
                      Text(e, style: const TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              )
              .toList(),
          selectedItemBuilder: (BuildContext context) => _item
              .map(
                (e) => Row(
                  children: [
                    Container(
                      width: 42,
                      child: Image.asset('assets/${e}.png'),
                    ),
                    const SizedBox(width: 5),
                    Text(e, style: const TextStyle(fontSize: 18)),
                  ],
                ),
              )
              .toList(),
          hint: const Text(
            'Name',
            style: TextStyle(color: Colors.grey),
          ),
          dropdownColor: Colors.white,
          isExpanded: true,
          underline: Container(),
          onChanged: (value) {
            setState(() {
              selecteditem = value!;
            });
          },
        ),
      ),
    );
  }

  List<Widget> background_container(BuildContext context) {
    return [
      Column(
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              color: const Color(0xff368983),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Adding',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.attach_file_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }
}

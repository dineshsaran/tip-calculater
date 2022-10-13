 import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  
 }
 
 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: splaceScreen(),
   );
  }
  
}
   
   class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>HomeScreen();
}
class HomeScreen extends State<Home>{

 var billControler = TextEditingController();
 var tipControler = TextEditingController();
  var totalpperson  = 0.0;
  var totalbill =  0.0;
  var  totaltip =0.0;
 var person = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black12),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Column(
                            children: [
                            RichText(
                                text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Mr',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)
                              ),
                              TextSpan(
                                  text: ' TIP',style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold))
                            ])),
                            RichText(
                                text: TextSpan(children: <TextSpan>[
                              TextSpan(text: 'Calculater',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold))
                            ]))
                          ],),
                            Container(
                              height: 120,
                            width: 100,

                            child:
                                  Image.asset('assets/images/cat.png'),
                          )
                        ],),
                      ),
                        SizedBox(height: 25,),

                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 235,
                            width: double.infinity,

                            child: Card(
                              elevation: 10,
                              color: Colors.white,
                           child: Padding(
                             padding: const EdgeInsets.all(15),
                             child: Column(
                               children: [
                                 Column(
                                   children: [
                                     Text('Tolal p/person',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                     Text('\u{20B9} $totalpperson',style: TextStyle(fontSize: 20,color: Colors.blue),),
                                   ],
                                 ),

                                 SizedBox(height: 50,),

                                 Container(color: Colors.black,height: 2,),

                                 SizedBox(height: 50,),

                                 Row(children: [

                                   Column(
                                     children: [
                                       Text('Total bill',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                       Text('\u{20B9} $totalbill ',style: TextStyle(fontSize: 20,color:Colors.blue),),
                                     ],
                                   ),
                                   SizedBox(width: 150,),
                                   Column(
                                     children: [
                                       Text('Total tip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                       Text('\u{20B9} $totaltip',style: TextStyle(fontSize: 20,color: Colors.blue),),
                                     ],
                                   )
                                 ],)
                               ],
                             ),
                           ),
                            ),
                          ),
                        ),

                        SizedBox(height: 55,),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [

                                  Text('Enter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  Text('your bill',style: TextStyle(fontSize: 20),)
                                ],
                              ),
                            ),
                            SizedBox(width: 25,),
                            Container(
                              width: 250,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                              child: TextField(
                                controller: billControler,
                                keyboardType: TextInputType.number ,
                                enabled: true,
                                decoration: InputDecoration(
                                  label: Text('Enter Amount'),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 35,),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(children: [
                                Text('Choose', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('your tip',style: TextStyle(fontSize: 20),)
                              ],),
                            ),
                            SizedBox(width: 25,),
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     Card(
                                       elevation: 7,
                                       child: InkWell(
                                         onTap: (){

                                           var tt = int.parse(billControler.text.toString())*10/100  ;
                                           var tb =int.parse(billControler.text.toString())+tt ;


                                           setState((){
                                             totaltip= tt;
                                             totalbill= tb;
                                             totalpperson= totaltip/person;
                                           });

                                         },
                                         child: Container(height: 45,width: 78,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                              child: Center(child: Text('10 %',style: TextStyle(color: Colors.white,fontSize: 25),)),),
                                       ),
                                     ),

                                     SizedBox(width: 1,),
                                     Card(
                                       elevation: 7,
                                       child: InkWell(
                                         onTap: (){
                                           setState((){
                                             var bill = int.parse(billControler.text.toString());
                                             var tt =  bill*15/100  ;
                                             var tb = bill+tt ;


                                             setState((){
                                               totaltip= tt;
                                               totalbill= tb;
                                               totalpperson= totaltip/person;
                                             });
                                           });
                                         },
                                         child: Container(height: 45,width: 78,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                           child: Center(child: Text('15 %',style: TextStyle(color: Colors.white,fontSize: 25),)),),
                                       ),
                                     ),
                                     SizedBox(width: 1,),
                                     Card(
                                       elevation: 7,
                                       child: InkWell(
                                         onTap: (){
                                           setState((){
                                             var bill = int.parse(billControler.text.toString());
                                             var tt = bill*20/100  ;
                                             var tb = bill+tt ;


                                             setState((){
                                               totaltip= tt;
                                               totalbill=tb;
                                               totalpperson= totaltip/person;
                                             });
                                           });
                                         },
                                         child: Container(height: 45,width: 78,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                         child: Center(child: Text('20 %',style: TextStyle(color: Colors.white,fontSize: 25),)),),
                                       ),
                                     )
                                   ],
                                 ),
                                 SizedBox(height: 3,),
                                 Container(
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.blue),
                                   width: 245,
                                   child: Center(
                                     child: TextField(
                                       controller: tipControler,
                                       keyboardType: TextInputType.number ,
                                       enabled: true,
                                       decoration: InputDecoration(
                                           hintText: ('Custom tip'),
                                       ),
                                     ),
                                   ),
                                 ),

                               ],
                             )
                          ],
                        ),
                        SizedBox(height: 35,),

                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(children: [
                                  Text('Split', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                              Text('the total',style: TextStyle(fontSize: 20),)
                            ],),
                          ),
                          SizedBox(width: 25,),

                          Card(
                            elevation: 7,
                            child: InkWell(
                              onTap:  (){


                                if(person>1){
                                  person-=1;
                                }
                                totalpperson= totaltip/person;

                                 setState( (){});

                              },
                              child: Container(width: 50,height: 45,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
                                child: Center(child:
                                Text('-',style: TextStyle(color: Colors.white,fontSize: 25),)),),
                            ),
                          ),

                          Container(height: 45,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                          child: Center(child: Text('$person',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),),

                         Card(
                           elevation: 7,
                           child: InkWell(
                             onTap:   (){
                               person+=1;
                               totalpperson= totaltip/person;


                               setState((){});
                             },

                             child: Container( width: 50,height: 45,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
                                  child: Center(child:
                                  Text('+ ',style: TextStyle(color: Colors.white,fontSize: 25),)),),
                           ),
                         ),






                    ],
                        ),
                ]
                    )
                ),

              ),
            ),
          ),
    )
    );

  }
  
  
}

 class splaceScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> SplaceScreen();
  
 }
 
 class SplaceScreen extends State<splaceScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(height: 200,width: 200,
                  child: Image.asset('assets/images/nyan-cat.gif')),),
          ],
        ),
      ),
    );
  }
  
 }
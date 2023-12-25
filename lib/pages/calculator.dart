import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:slickpay/pages/qr_code.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 20;
  Widget nbOpbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () { calculation(btntxt);},
        style: ElevatedButton.styleFrom(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: btncolor,
          padding: EdgeInsets.all(10),
        ),
        child: Text(
          btntxt,
          style: TextStyle(color: txtcolor, fontSize: 35),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: const BoxDecoration(color:  Color(0xFF00C2A7),),
                height: 150,
                child: Row( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 
                  
                  const Padding(
                     padding:  EdgeInsets.all(8.0),
                     child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('welcome back !',style: TextStyle(fontSize: 22,color: Colors.white,),),
                        Text('username',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w500),),
                        Text('password',style: TextStyle(fontSize: 22,color: Colors.white),)
                      ],),
                   ),
                    SizedBox(width: 100,),
                  
                    Container(
                        margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                         border: Border.all(
                          
                            color: Colors.white, 
                            width: 0.5,       
                          ),
                          borderRadius: BorderRadius.circular(20),
                          
                       ),
                      child: IconButton(
                          onPressed: () {
                          
                          },
                          icon: Icon(Icons.home,color: Color(0xFF03285E),),
                        ),
                    ),
                      Container(
                        margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                         border: Border.all(
                          
                            color: Colors.white, 
                            width: 0.5,       
                          ),
                          borderRadius: BorderRadius.circular(20),
                          
                       ),
                      child: IconButton(
                          onPressed: () {
                          
                          },
                          icon: Icon(Icons.notifications,color: Color(0xFF03285E),),
                        ),
                    ),
          
          
                ]),
              ),
          
                  Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height:550,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 51, 204, 255), width: 1),
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            
                            child: Text(
                              '$text',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                          ),),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  nbOpbutton(
                                      'C', const Color.fromARGB(255, 250, 250, 250), Colors.red),
                                  nbOpbutton(
                                      '( )', const Color.fromARGB(255, 250, 250, 250), const Color(0xFF03285E)),
                                  nbOpbutton(
                                      '%', const Color.fromARGB(255, 250, 250, 250), const Color(0xFF03285E)),
                                  nbOpbutton(
                                      '/', const Color.fromARGB(255, 250, 250, 250), const Color(0xFF03285E)),
                                ],
                              ),
                                 Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            nbOpbutton('7', const Color.fromARGB(255, 250, 250, 250),Colors.red),
                            nbOpbutton('8',const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('9', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('x', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                          ],),
                            //  SizedBox(height: 15,),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            nbOpbutton('4', const Color.fromARGB(255, 250, 250, 250),Colors.red),
                            nbOpbutton('5',const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('6', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('-', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                          ],),
                          //SizedBox(height: 15,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            nbOpbutton('1', const Color.fromARGB(255, 250, 250, 250),Colors.red),
                            nbOpbutton('2',const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('3', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('+', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                          ],),
                          //SizedBox(height: 15,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            nbOpbutton('+/-', const Color.fromARGB(255, 250, 250, 250),Colors.red),
                            nbOpbutton('0',const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('.', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                            nbOpbutton('=', const Color.fromARGB(255, 250, 250, 250),const Color(0xFF03285E)),
                          ],
                              
                  ),
                        
                      
                    
                ]),
                  ),
                  Positioned(
                    left: 30,
                    top: 5,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      color: Colors.white,
                      child: Image.asset( 'assets/slickpay.png',width: 70, height: 30,),
                    ),
                  ),
                ],
                )  
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white70,
        activeColor: Color(0xFF00C2A7),
        color: Color(0xFF03285E),
        items:const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.credit_card_rounded, title: 'My card'),
          TabItem(icon: Icons.qr_code_2_rounded, title: 'Qr'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => {print('click index=$i'),
        if(i==2){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>  QRCodeScannerPage())),
        }},
      ),
    );
  }
  //Calculator logic
  dynamic text ='0';
  double nbone = 0;
  double nbtwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
 void calculation(btntext) {
  try {
    if (btntext == 'C') {
    text ='0';
      nbone = 0;
      nbtwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btntext == '=') {
      nbone = double.tryParse(result) ?? 0; 
      preOpr = opr;
      opr = btntext;
      result = '';
    } else if (
        btntext == '+' || btntext == '-' || btntext == 'x' || btntext == '/' || btntext == '=') {
      if (nbone == 0) {
        nbone = double.tryParse(result) ?? 0; 
      } else {
        nbtwo = double.tryParse(result) ?? 0; 
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }

      preOpr = opr;
      opr = btntext;
      result = '';
    } else if (btntext == '%') {
      result = (nbone / 100).toString();
      finalResult = doesContainDecimal(result);
    } else if (btntext == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btntext == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    }    
    else {
      result = result + btntext;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
      
    });
  } catch (e) {
    print("Error: $e");
    print("Error in : $result");
  }
}

  String add() {
         result = (nbone + nbtwo).toString();
         nbone = double.parse(result);           
         return doesContainDecimal(result);
  }

  String sub() {
         result = (nbone - nbtwo).toString();
         nbone = double.parse(result);
         return doesContainDecimal(result);
  }
  String mul() {
         result = (nbone * nbtwo).toString();
         nbone = double.parse(result);
         return doesContainDecimal(result);
  }
  String div() {
          if(nbone==0){return '0';}
          else if(nbtwo==0){return'Error';}
          else{
          result = (nbone / nbtwo).toString();
          nbone = double.parse(result);
          return doesContainDecimal(result);}
  }
   

  String doesContainDecimal(dynamic result) {
    
    if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0))
         return result = splitDecimal[0].toString();
    }
    return result; 
  }

}





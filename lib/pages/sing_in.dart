import 'package:flutter/material.dart';
import 'package:slickpay/pages/calculator.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController emailOrphone = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _submitted = false; 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: SingleChildScrollView(
        child: Container(
          child:  SafeArea(
            child:  Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 children:<Widget>[
               Center(
                 child: Container(
                  height: 40,
                   child: Image.asset(
                      'assets/slickpay.png', 
                         ),
                         
                 ),
               ),
               Padding(padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                   child: Column(
                     crossAxisAlignment:CrossAxisAlignment.start,children: [
               SizedBox(height: 20,),
               Text("Hi There! ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: Color(0xFF03285E)),),
               SizedBox(height: 20,),
               Text("Welcome back, Sign in to your account",style: TextStyle(fontSize: 20,color: Colors.black87),),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TextFormField(
                            controller: emailOrphone,
                                  validator: (value) {
                              if (_submitted && (value == null || value.isEmpty)) {
                                return ' Email or Phone number are required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                            labelText: ' Email or Phone number',
                            hintText: ' Email or Phone number',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                         SizedBox(height: 20,),
                  TextFormField(
                    controller: password,
                    obscureText: true,
                    onChanged: (_) {  if (_submitted) {
                        _formKey.currentState!.validate();
                      }
                    },
                    validator: (value) {
                      if (_submitted && (value == null || value.isEmpty)) {
                        return 'Password is required';
                      }
                      return null;
                    },
                              
                      decoration: InputDecoration(
                      labelText: ' Password',
                      hintText: ' Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  ],
                  ),  
                    SizedBox(height: 20,),
                      GestureDetector(
                                onTap: (){
                                },
                                 child: const Text('forget password ?',style:TextStyle(
                                                 fontWeight: FontWeight.w500,
                                                 fontSize: 22.0,
                                                 color: Color(0xFF00C2A7),
                                                 letterSpacing: 0.7,
                                                 
                                                 ),
                                                 ),
                               ),
                               SizedBox(height: 20,),
                               GestureDetector(
                                onTap: (){ setState(() {
                                    _submitted = true;
                                  });
                                  if (_formKey.currentState!.validate()){
                                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Calculator()));
        
                                }
                                 },
                                child: Container(
                                padding:   const EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF03285E),
                                  ),
                                  
                                  child:const  Center(
                                    child:Text('Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.7,
                                  
                                  ),   
                                  ),
                                  ),
                                  ),
                     ),
               ],
               ),
               ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
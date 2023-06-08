
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final Formvalidation myProvider = Provider.of<Formvalidation>(context);
    // var email= "";
    // var password ="";
    // var emailcontroller =TextEditingController();
    // var passwordcontrooller= TextEditingController();


    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('Home',
            style: TextStyle(
            fontSize: 20
      ),),
        ),),
      body: Form(
        key: myProvider.globalFormKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: ListView(
            children: [

              TextFormField(
                controller: myProvider.emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //create lable
                  labelText: 'Email',
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,

                    fontWeight: FontWeight.w400,
                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                   // print('Enter email');
                    return 'Enter Email';
                  }

                  return null;
                },
              ),
              SizedBox(height: 50,),
              TextFormField(
                controller: myProvider.passwordcontrooller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  //create lable
                  labelText: 'Password',
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,

                    fontWeight: FontWeight.w400,
                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Enter password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
                  Container(
                    height: 50,

                    color: Colors.grey,
                    child: TextButton(
                      child: Text('next ',style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),),

                      onPressed: () {
                        myProvider.functionvalidate();
                        print('value of validerate${myProvider.valid}');

                        if (myProvider.valid == true) {


                          Navigator.pushNamed(context, '/second', arguments: {'email':myProvider.emailcontroller.text, 'password':myProvider.passwordcontrooller.text});
                         myProvider.valid = false;

                        }
                        //
                      }
                    ),
                  ),
            ],
          ),
        ),
      )

      // Column(
      //   children: [
      //       SizedBox(
      //         height: 30,
      //
      //       ),
      //     Center(child: Text('Home')),
      //     SizedBox(
      //       height: 30,
      //
      //     ),
      //
      //
      //     ElevatedButton(
      //       child: Text('Elevated Button'),
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.grey,
      //       ),
      //       onPressed: () {
      //       Navigator.pushNamed(context, '/second', arguments: {'name':'ali', 'age':20});
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}

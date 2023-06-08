import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final email = args['email'];
    final password = args['password'];
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text('Profile',
            style: TextStyle(
                fontSize: 20
            ),),
        ),),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text('email is $email' ),
          SizedBox(height: 20),
          Text('password is $password'),
        ],
      ),
    );
  }
}


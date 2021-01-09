import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.headline3,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    color: Colors.yellow,
                    child: Text('ENTER'),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/catalog');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

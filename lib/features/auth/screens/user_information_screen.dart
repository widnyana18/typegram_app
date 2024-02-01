import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  static const routeName = '/user-information';
  const UserInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1661849963038-7a735f000ae0?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D'),
                    radius: 64,
                  ),
                  Positioned(
                    right: 80,
                    bottom: -10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Input your name',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.done),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

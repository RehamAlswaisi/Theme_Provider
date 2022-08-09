import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/my_provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text('Light'),
            ),
            Switch(
              value: Provider.of<MyProvider>(context, listen: true).swVal,
              onChanged: (bool val) =>
                  Provider.of<MyProvider>(context, listen: false)
                      .switchChange(val),
              activeColor: Colors.black,
              inactiveThumbColor: Colors.blue,
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text('Dark'),
            ),
          ],
        ),
      ),
    );
  }
}

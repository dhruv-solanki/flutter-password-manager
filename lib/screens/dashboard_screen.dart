import 'package:flutter/material.dart';
import 'package:flutter_password_manager/models/secret_model.dart';
import 'package:flutter_password_manager/widgets/secret_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static const secretItems = SecretModel.secrets;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Your Secrets',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 5),
          child: ListView.builder(
            itemCount: secretItems.length,
            itemBuilder: (context, index) {
              return SecretCard(
                item: secretItems[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

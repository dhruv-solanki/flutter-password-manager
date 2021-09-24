import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';
import 'package:flutter_password_manager/screens/add_secret_bottom_sheet.dart';

class AddSecretButton extends StatelessWidget {
  const AddSecretButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: CircleAvatar(
        backgroundColor: black,
        child: IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: const AddSecretBottomSheet(),
                  ),
                );
              },
            );
          },
          icon: Icon(
            Icons.add,
            color: green,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_password_manager/constants.dart';
import 'package:flutter_password_manager/models/secret_model.dart';
import 'package:flutter_password_manager/widgets/dialog_bar.dart';

class SecretDialogScreen extends StatelessWidget {
  final SecretModel item;
  const SecretDialogScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: green,
                  child: Text(
                    item.name[0].toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                )
              ],
            ),
            Divider(
              color: grey,
            ),
            const SizedBox(
              height: 10,
            ),
            DialogBar(
              title: 'UserID',
              text: item.userName,
            ),
            const SizedBox(
              height: 10,
            ),
            DialogBar(
              title: 'Password',
              text: item.password,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

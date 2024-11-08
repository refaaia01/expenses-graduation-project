import 'package:expenses_graduation_project/src/screen/home.dart';
import 'package:flutter/material.dart';

class SkipLoginButton extends StatelessWidget {
  final VoidCallback onSkip;

  const SkipLoginButton({super.key, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text(
                'Login will be skipped and no information will be saved. Are you sure?',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancellation'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const Home(),
                      ),
                    );
                  },
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      },
      child: Text('Skip'),
    );
  }
}

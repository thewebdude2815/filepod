import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';

class FilePodLeftBar extends StatelessWidget {
  const FilePodLeftBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: rectangleBgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Image.asset(
                    'assets/logo.png',
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // FilePod Text
                  const Text(
                    'FilePod',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 30,
                      color: Color(0xFFAAEFFF),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Experience the\nNext Revolution in Cloud Tech',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFDCF7FF),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'All of your files, always available , in your pocket',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFAAEFFF), fontSize: 12),
              ),
              const SizedBox(
                height: 40,
              ),
              CircleAvatar(
                radius: 22,
                child: Container(
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Color(0xFF442EBD),
                    ),
                  ),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFAAEFFF),
                        Color(0xFF61A6FF),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Learn, how it works',
                style: TextStyle(color: Color(0xFFDCF7FF), fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

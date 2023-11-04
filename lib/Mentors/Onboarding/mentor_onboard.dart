import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/select_option.dart';

class MentorOnboard extends StatelessWidget {
  const MentorOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          title: const Text('Mentor Management System'),
        ),
        body: const Center(
          child: MentorOnboardContent(),
        ),
      ),
    );
  }
}

class MentorOnboardContent extends StatelessWidget {
  const MentorOnboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 300,
              height: 200,
              child: Image.asset('assets/images/mentor.png')),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              'Everything you need to manage'
                  ' your tasks and objectives',
              textAlign: TextAlign.start,
              softWrap: true,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          const SizedBox(
            width: 300,
            height: 100,
            child: Text(
              'Manage people, complete tasks, track the progress of your programs, create and download certificates, and do so much more.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SelectOption()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 161, 139, 164)),
              ),
              child:
              const Text('Register', style: TextStyle(color: Colors.black)),
            ),
          ),
          const SizedBox(
            height: 16,
            width: 50,
          ),
          Container(
            width: 300,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 242, 237, 243)),
              ),
              child: const Text('Login',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

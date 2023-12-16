import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../screens/about_page.dart';
import '../../screens/contact_page.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Sneakers",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400])),
          const SizedBox(
            height: 20,
          ),
          Text("About ",
              style: TextStyle(fontSize: 20, color: Colors.grey[400])),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            child: Text("About us",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            child: Text("Features",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            child: Text("News & Blog",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Connect ",
              style: TextStyle(fontSize: 20, color: Colors.grey[400])),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              _launchUrl();
            },
            child: Text("Linkedin",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              _launchUrlfac();
            },
            child: Text("Facebook",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              _launchUrlGithub();
            },
            child: Text("Github",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              _launchUrlinsta();
            },
            child: Text("Instgram",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Support ",
              style: TextStyle(fontSize: 20, color: Colors.grey[400])),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ));
            },
            child: Text("FAQs",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ));
            },
            child: Text("Support Center",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ));
            },
            child: Text("Contact Us",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text("Made with ❤️ and by ☕ Anas",
                  style: TextStyle(fontSize: 14, color: Colors.grey[400])))
        ]),
      ),
    );
  }
}

final Uri _urllink =
    Uri.parse('https://www.linkedin.com/in/anas-ezz-434257273/');
Future<void> _launchUrl() async {
  if (!await launchUrl(_urllink)) {
    throw Exception('Could not launch $_urllink');
  }
}

final Uri _urlface = Uri.parse('https://www.facebook.com/anas.ezz.777');
Future<void> _launchUrlfac() async {
  if (!await launchUrl(_urlface)) {
    throw Exception('Could not launch $_urlface');
  }
}

final Uri _urlGithub = Uri.parse('https://github.com/anas1ezz0');
Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_urlGithub)) {
    throw Exception('Could not launch $_urlGithub');
  }
}

final Uri _urlinsta = Uri.parse('https://www.instagram.com/anas_2812_/?hl=ar');
Future<void> _launchUrlinsta() async {
  if (!await launchUrl(_urlinsta)) {
    throw Exception('Could not launch $_urlinsta');
  }
}

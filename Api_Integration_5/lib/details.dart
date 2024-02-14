import 'package:flutter/material.dart';
import 'package:flutter_application_5/global/CustomAppBar.dart';

class ScreenDetails extends StatelessWidget {
  final String firstName;
  //final String? lastName;
  //final String email;
  final String jobTitle;
  final String description;
  final int? priceValue;
  final List<String> skills;
  const ScreenDetails(
      {super.key,
      required this.firstName,
      // this.lastName,
      // required this.email,
      required this.jobTitle,
      required this.description,
      required this.skills,
      this.priceValue});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: ReusableAppBar(
        //   title: 'TealPot',
        //   icon: Icons.abc,
        //   icons: Icons.arrow_back_ios,
        // ),
        backgroundColor: Colors.grey.shade500,
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Row(
              children: [
                Icon(
                  Icons.timelapse_outlined,
                  color: Colors.teal.shade800,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'TealPot',
                  style: TextStyle(
                      color: Colors.teal.shade800,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 175,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.teal.shade800,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 400,
              color: Colors.teal.shade900,
              child: const Center(
                child: Text(
                  'Switch To Buyer Mode',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 2, 150, 128),
                      size: 25,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        maxLines: 2,
                        //overflow: TextOverflow.ellipsis,
                        jobTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Posted By ::',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      firstName,
                      style: const TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Price Value',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("$priceValue"),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'About Job',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(
              indent: 5,
              thickness: 1.5,
              endIndent: 5,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Job Description',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              description,
            ),
            const Divider(
              indent: 5,
              thickness: 2,
              endIndent: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Required Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Wrap(
                children: List.generate(
                  skills.length,
                  (index) => Text(
                    skills[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

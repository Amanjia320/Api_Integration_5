import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/details.dart';
import 'package:flutter_application_5/global/CustomAppBar.dart';
import 'package:http/http.dart' as http;
import 'getAllServices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ReusableAppBar(
          title: 'TealPot',
          icon: Icons.history,
          icons: Icons.menu,
        ),
        backgroundColor: Colors.grey.shade500,
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                );
              } else if (snapshot.hasError) {
                return const Text("ERROR");
              } else if (!snapshot.hasData) {
                return const Text("NO DATA FOUND");
              } else if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenDetails(
                                          firstName: snapshot.data!.data![index]
                                                  .user!.firstName ??
                                              "N/A",
                                          jobTitle: snapshot
                                                  .data!.data![index].title ??
                                              "N/A",
                                          description: snapshot.data!
                                                  .data![index].description ??
                                              "N/A",
                                          skills: snapshot.data!.data![index]
                                                  .user!.skills ??
                                              [],
                                          priceValue: snapshot
                                              .data!.data![index].priceValue,
                                        )),
                              );
                            },
                            child: Container(
                              height: 300,
                              width: 380,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white54),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'FirstName',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '${snapshot.data!.data![index].user?.firstName}',
                                    ),
                                    const Text(
                                      'LastName',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '${snapshot.data!.data![index].user?.lastName}',
                                    ),
                                    const Text(
                                      'Email',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '${snapshot.data!.data![index].user?.email}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Text(
                                      'Job Title',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                        '${snapshot.data!.data![index].title}'),
                                    const Text(
                                      'Description',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '${snapshot.data!.data![index].description}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              } else {
              
                return const Text("Nothing to show");
              }
            }),
      ),
    );
  }

  Future<GetAllServices?> getData() async {
    final response = await http.get(Uri.parse(
        'https://tealpot-backend-b13a3144e5af.herokuapp.com/service/all'));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      log("//=============== status ====${response.statusCode}=============//");
      return GetAllServices.fromJson(data);
    } else {
      log("//=============== status ====${response.statusCode}=============//");

      return null;
    }
  }
}

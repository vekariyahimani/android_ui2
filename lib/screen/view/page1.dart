import 'package:android_ui2/screen/provider/page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtname = TextEditingController();
  GlobalKey<ScaffoldState> _key = GlobalKey();

  PageProvider? pageProvidertrue;
  PageProvider? pageProviderfalse;
  int current = 0;


  @override
  Widget build(BuildContext context) {
    pageProviderfalse = Provider.of<PageProvider>(context, listen: false);
    pageProvidertrue = Provider.of<PageProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Text(
            "Edit Your Profile",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(Colors.lightBlueAccent), Colors.green.shade200])),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
          Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.blue,
              )),
                child: Stepper(

                    steps: [
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Profile Picture",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  "assets/image/user.png",
                                ),
                                width: 70,
                              )
                            ],

                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              TextField(
                                controller: txtname,
                                decoration: InputDecoration(
                                  hintText: "Name : ",
                                  hintStyle: TextStyle(color: Colors.lightBlue),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(10),
                                          bottom: Radius.circular(10))),
                                ),
                              ),
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Phone",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "+98 1234 1213",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "himanivekariya109@gmail.com",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "DOB",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "10/9/2004",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Gender",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.girl,
                                    size: 40,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Current Location",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 30,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Your Location",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Nationalition",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.real_estate_agent,
                                    size: 30,
                                    color: Colors.black38,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "India",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Religion",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Hindu",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Language(s)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Language",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    prefixIcon: Icon(
                                      Icons.language_outlined,
                                      color: Colors.black38,
                                    )),
                              )
                            ],
                          )),
                      Step(
                          isActive: current >= 0,

                          title: Text(
                            "Biography(s)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Bio",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    prefixIcon: Icon(
                                      Icons.add_box_outlined,
                                      color: Colors.black38,
                                    )),
                              )
                            ],
                          )),

                    ],
                    currentStep: pageProvidertrue!.i,
                    onStepCancel: () {
                      pageProviderfalse!.backstep();
                    },
                    onStepContinue: () {
                      pageProviderfalse!.nextstep();

                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

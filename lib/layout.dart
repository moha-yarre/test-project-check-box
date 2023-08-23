import 'package:flutter/material.dart';

class layoutpage extends StatefulWidget {
  const layoutpage({super.key});

  @override
  State<layoutpage> createState() => _layoutpageState();
}

class _layoutpageState extends State<layoutpage> {
  final _formkey = GlobalKey<FormState>();
  final firtsnameeditingcontroller = new TextEditingController();
  final secondnameeditincontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final firsname = TextFormField(
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Enter first name';
      //   } else if (value!.isEmpty ||
      //       !RegExp(r'^[a-z a-z]+$').hasMatch(value!)) {
      //     return 'please Enter correct name';
      //   }
      //   ;
      // },
      autofocus: false,

      controller: firtsnameeditingcontroller,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firtsnameeditingcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "First Name"),
      // maxLines: 2,
    );

    final Lastname = TextFormField(
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Enter second name';
      //   } else if (value!.isEmpty ||
      //       !RegExp(r'^[a-z a-z]+$').hasMatch(value!)) {
      //     return 'please Enter correct name';
      //   }
      //   ;
      // },
      autofocus: false,
      controller: secondnameeditincontroller,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        secondnameeditincontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Last Name"),
    );
    final SubmitButton = Material(
      color: Colors.purple[800],
      elevation: 5,
      // borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            // if (_formkey.currentState!.validate()) {

            // }
          },
          child: Text(
            "Submit",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Layout Management Assignment",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.purple[800],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          firsname,
                          SizedBox(
                            height: 20,
                          ),
                          Lastname,
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Gender",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    RadioListTile(
                                      title: Text("male"),
                                      value: "male",
                                      groupValue: firsname,
                                      onChanged: (value) {
                                        setState(() {
                                          // firsname = value.toString();
                                        });
                                      },
                                    ),
                                    RadioListTile(
                                      title: Text("Female"),
                                      value: "female",
                                      groupValue: firsname,
                                      onChanged: (value) {
                                        setState(() {
                                          // firsname = value.toString();
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          // ss

                          SubmitButton,
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

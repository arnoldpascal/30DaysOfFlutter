import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
// <<<<<<< Day18
//         color: context.canvasColor,
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Image.asset(
//                   "assets/images/login_image.png",
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   "Welcome $name",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 16.0, horizontal: 32.0),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                           hintText: "Enter username",
//                           labelText: "Username",
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Username cannot be empty";
//                           }

//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "Password",
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
// =======
// <<<<<<< Day8
//         color: Colors.white,
//         child: SingleChildScrollView(
//             child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/images/login_image.png",
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "Welcome $name",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                             hintText: "Enter UserName", labelText: "UserName"),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Username cannot be empty";
//                           }
//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             hintText: "Enter Password", labelText: "Password"),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Material(
//                         color: Colors.deepPurple,
//                         borderRadius:
//                             BorderRadius.circular(changeButton ? 50 : 8),
//                         child: InkWell(
//                           splashColor: Colors.red,
//                           onTap: () => moveToHome(context),
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: changeButton ? 50 : 150,
//                             height: 40,
//                             alignment: Alignment.center,
//                             child: changeButton
//                                 ? Icon(Icons.done, color: Colors.white)
//                                 : Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18),
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )));
//   }
// }
// =======
// <<<<<<< Day7
//         color: Colors.white,
//         child: SingleChildScrollView(
//             child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/images/login_image.png",
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "Welcome $name",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                             hintText: "Enter UserName", labelText: "UserName"),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Username cannot be empty";
//                           }
//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             hintText: "Enter Password", labelText: "Password"),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value.length < 6) {
//                             return "Password length should be atleast 6";
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Material(
//                         color: Colors.deepPurple,
//                         borderRadius:
//                             BorderRadius.circular(changeButton ? 50 : 8),
//                         child: InkWell(
//                           splashColor: Colors.red,
//                           onTap: () => moveToHome(context),
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: changeButton ? 50 : 150,
//                             height: 40,
//                             alignment: Alignment.center,
//                             child: changeButton
//                                 ? Icon(Icons.done, color: Colors.white)
//                                 : Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18),
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )));
//   }
// }

// // 2:45:03
// =======
// // <<<<<<< Day6
// //         color: Colors.white,
// //         child: Column(
// //           children: [
// //             Image.asset(
// //               "assets/images/login_image.png",
// //               fit: BoxFit.cover,
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Text(
// //               "Welcome $name",
// //               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             Padding(
// //               padding:
// //                   const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
// //               child: SingleChildScrollView(
// //                 child: Column(
// //                   children: [
// //                     TextFormField(
// //                       decoration: InputDecoration(
// //                           hintText: "Enter UserName", labelText: "UserName"),
// //                       onChanged: (value) {
// //                         name = value;
// //                         setState(() {});
// //                       },
// //                     ),
// //                     TextFormField(
// //                       obscureText: true,
// //                       decoration: InputDecoration(
// //                           hintText: "Enter Password", labelText: "Password"),
// //                     ),
// //                     SizedBox(
// //                       height: 40,
// //                     ),

// //                     InkWell(
// //                       onTap: () async {
// //                         setState(() {
// //                           changeButton = true;
// //                         });

// //                         await Future.delayed(Duration(seconds: 1));
// //                         Navigator.pushNamed(context, MyRoutes.homeRoute);
// //                       },
// //                       child: AnimatedContainer(
// //                         duration: Duration(seconds: 1),
// //                         width: changeButton ? 50 : 150,
// //                         height: 40,
// //                         alignment: Alignment.center,
// //                         child: changeButton
// //                             ? Icon(Icons.done, color: Colors.white)
// //                             : Text(
// //                                 "Login",
// //                                 style: TextStyle(
// //                                     color: Colors.white,
// //                                     fontWeight: FontWeight.bold,
// //                                     fontSize: 18),
// //                               ),
// //                         decoration: BoxDecoration(
// //                           color: Colors.deepPurple,
// //                           borderRadius:
// //                               BorderRadius.circular(changeButton ? 50 : 8),
// //                         ),
// //                       ),
// //                     ),

// //                     // ElevatedButton(
// //                     //   child: Text("Login"),
// //                     //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
// //                     //   onPressed: () {
// //                     //     Navigator.pushNamed(context, MyRoutes.homeRoute);
// //                     //   },
// //                     // )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ));
// //   }
// // }
// // =======
// // // <<<<<<< Day5
// // //         color: Colors.white,
// // //         child: Column(
// // //           children: [
// // //             Image.asset(
// // //               "assets/images/login_image.png",
// // //               fit: BoxFit.cover,
// // //             ),
// // //             SizedBox(
// // //               height: 20,
// // //             ),
// // //             Text(
// // //               "Welcome",
// // //               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// // //             ),
// // //             SizedBox(
// // //               height: 20,
// // //             ),
// // //             Padding(
// // //               padding:
// // //                   const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
// // //               child: SingleChildScrollView(
// // //                 child: Column(
// // //                   children: [
// // //                     TextFormField(
// // //                       decoration: InputDecoration(
// // //                           hintText: "Enter UserName", labelText: "UserName"),
// // //                     ),
// // //                     TextFormField(
// // //                       obscureText: true,
// // //                       decoration: InputDecoration(
// // //                           hintText: "Enter Password", labelText: "Password"),
// // //                     ),
// // //                     SizedBox(
// // //                       height: 40,
// // //                     ),
// // //                     ElevatedButton(
// // //                       child: Text("Login"),
// // //                       style: TextButton.styleFrom(minimumSize: Size(150, 40)),
// // //                       onPressed: () {
// // //                         Navigator.pushNamed(context, MyRoutes.homeRoute);
// // //                       },
// // //                     )
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ));
// // //   }
// // // }
// // >>>>>>> Day2

// // // 2:06:22
// // =======
// // // <<<<<<< Day4
// // //         color: Colors.white,
// // //         child: Column(
// // //           children: [
// // //             Image.asset(
// // //               "assets/images/login_image.png",
// // //               fit: BoxFit.cover,
// // //             ),
// // //             SizedBox(
// // //               height: 20,
// // //             ),
// // //             Padding(
// // //               padding:
// // //                   const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
// // //               child: Column(
// // //                 children: [
// // //                   TextFormField(
// // //                     decoration: InputDecoration(
// // //                         hintText: "Enter UserName", labelText: "UnderName"),
// // //                   ),
// // //                   TextFormField(
// // //                     obscureText: true,
// // //                     decoration: InputDecoration(
// // //                         hintText: "Enter Password", labelText: "Password"),
// // //                   ),
// // //                   SizedBox(
// // //                     height: 20,
// // //                   ),
// // //                   ElevatedButton(
// // //                     child: Text("Login"),
// // //                     style: TextButton.styleFrom(),
// // //                     onPressed: () {
// // //                       print("Hii Arnold");
// // //                     },
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //             Text(
// // //               "Welcome",
// // //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // //             )
// // //           ],
// // //         ));
// // //   }
// // // }

// // // =======
// // //       child: Center(
// // //         child: Text(
// // //           "Login Page",
// // //           style: TextStyle(
// // //             fontSize: 20,
// // //             color: Colors.blue,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //           textScaleFactor: 2.0,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // 1:18:05
// // // >>>>>>> Day2
// // >>>>>>> Day2
// >>>>>>> Day2
// >>>>>>> Day2
// >>>>>>> Day2

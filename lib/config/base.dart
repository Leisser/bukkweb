import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Base<T extends StatefulWidget> extends State<T>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  PageController pageController = PageController();
  ScrollController _scrollController = ScrollController();

  String resolvedCount = "0";
  String totalCount = "0";
  String approvedCount = "0";
  String rejectedCount = "0";
  String unapprovedCount = "0";
  // String googlemapsapikey = "";
  // String flutterwaveapikey = "";
  // bool showSingleStudent = false;
  // bool showSingleTeacher = false;
  String? baseauthToken;
  String? basefirstName = "User";
  String? baselastName = "";
  String? baseemail;
  String? basegender;
  String? basephoneNumber;
  // String? baserole;
  String basepassword = "";
  String? baseuserId;
  String baseusername = "";
  // String? baseprofilePhoto64;
// Uint8List? _bytesImage;
  bool _balancePending = false;
  // Student activeStudent = Student(
  //     id: "",
  //     firstname: "",
  //     lastname: "",
  //     othernames: "",
  //     gender: "",
  //     classid: null,
  //     parentone: "",
  //     datecreated: DateTime.now(),
  //     status: "0");

  // var alertStyle = AlertStyle(
  //   animationType: AnimationType.fromTop,
  //   isCloseButton: false,
  //   isOverlayTapDismiss: false,
  //   descStyle: TextStyle(fontWeight: FontWeight.bold),
  //   descTextAlign: TextAlign.start,
  //   animationDuration: Duration(milliseconds: 400),
  //   alertBorder: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(0.0),
  //     side: BorderSide(
  //       color: Colors.grey,
  //     ),
  //   ),
  //   titleStyle: TextStyle(color: Colors.blue),
  //   alertAlignment: Alignment.topCenter,
  // );

  //This function gets the loaclly stored session data
  // Future<void> getSessionData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     baseemail = prefs.getString('email');
  //     basefirstName = prefs.getString("firstName");
  //     baselastName = prefs.getString("lastName");
  //     basephoneNumber = prefs.getString("phoneNumber");
  //     basegender = prefs.getString("gender");
  //     // baserole = prefs.getString("role");
  //     baseuserId = prefs.getString("userid");
  //     baseusername = prefs.getString("username")!;
  //     basepassword = prefs.getString("password")!;
  //     // baseprofilePhoto64 = prefs.getString("photo");

  //     // if (_profilePhoto64 != null && _profilePhoto64!.trim() != "") {
  //     //   _bytesImage = base64.decode(_profilePhoto64!.split(',').last);
  //     // }
  //   });
  // }

  // Future<void> getIncidentStats() async {
  //   String userId = "";
  //   String _authToken = "";

  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var url = Uri.parse(AppConstants.baseUrl + "incidents/stats");

  //   // Get username and password from shared prefs
  //   baseusername = prefs.getString("email")!;
  //   basepassword = prefs.getString("password")!;

  //   await AppFunctions.authenticate(baseusername, basepassword);
  //   _authToken = prefs.getString("authToken")!;

  //   var response = await http.get(
  //     url,
  //     headers: {
  //       "Content-Type": "Application/json",
  //       'Authorization': 'Bearer $_authToken',
  //     },
  //   );
  //   print("++++++" + response.body.toString() + "+++++++");
  //   if (response.statusCode == 200) {
  //     final items = json.decode(response.body);
  //     setState(() {
  //       resolvedCount = items["resolved"].toString();
  //       totalCount = items["total"].toString();
  //       unapprovedCount = items["unapproved"].toString();
  //       approvedCount = items["approved"].toString();
  //     });
  //     // Navigator.pushNamed(context, AppRouter.home);
  //   } else {
  //     // showSnackBar("Network Failure: Failed to retrieve transactions");
  //   }
  // }

  // This method authenticates the user and any API calls using the email address.
  Future<dynamic> authenticate(
      String? email, BuildContext context, String type) async {
    // print("++++++++ LOGIN FUNCTION TRIGGERED +++++++++++");
    // isConnected().then((isInternet) async {
    //   if (isInternet) {
    // var url = Uri.parse(BASE_URL + "users/emailauth/$email");

    // String? jwtJson = "";

    // // try {
    // var response = await http.get(url, headers: {
    //   "Content-Type": "Application/json",
    // });

    // print("++++++++ EMAIL AUTH FUNCTION TRIGGERED +++++++++++ Response code" +
    //     response.statusCode.toString());

    // if (response.statusCode == 200) {
    //   final headers = response.headers;
    //   final items = json.decode(response.body);
    //   LoginModel loginModel = LoginModel.fromJson(items);
    //   //   loggedIn = loginModel.data.loggedIn;
    //   // jwtJson = response.headers['authorization'];
    //   jwtJson = loginModel.token;
    //   print("++++++++ JWT IS +++++++++++");
    //   print(jwtJson);
    //   if (jwtJson != null && jwtJson != "") {
    //     SharedPreferences prefs = await SharedPreferences.getInstance();
    //     prefs.setString("authToken", jwtJson);
    //     var jwt = jwtJson.split(".");

    //     if (jwt.length != 3) {
    //       showSnackBar("Invalid User Credentials");
    //     } else {
    //       var payload = json
    //           .decode(ascii.decode(base64.decode(base64.normalize(jwt[1]))));
    //       int expiry = int.tryParse(payload["expiry"].toString()) ?? 0;
    //       if (DateTime.fromMillisecondsSinceEpoch(expiry * 1000)
    //           .isAfter(DateTime.now())) {
    //         showSnackBar("Login successful");

    //         SharedPreferences prefs = await SharedPreferences.getInstance();
    //         prefs.setString('userid', loginModel.userid);
    //         prefs.setString('email', loginModel.email ?? "");
    //         prefs.setString("firstName", loginModel.firstname);
    //         prefs.setString("lastName", loginModel.lastname);
    //         prefs.setString("gender", loginModel.gender);
    //         prefs.setString("username", loginModel.username);
    //         prefs.setString("gender", loginModel.gender);
    //         prefs.setString("role", loginModel.roleid ?? "");
    //         prefs.setString("photo", loginModel.photo ?? "");

    //         if (prefs.getString("userid") != null && type == "navigate") {
    //           push(Dashboard());
    //         } else {
    //           showSnackBar("Authentication failed");
    //         }
    //       } else {
    //         showSnackBar("Session Timeout");
    //       }
    //     }
    //   } else {
    //     showSnackBar("Invalid User Credentials");
    //   }
    // } else if (response.statusCode == 401) {
    //   showSnackBar("Invalid User Credentials");
    // } else {
    //   showSnackBar("Authentication Failed: '${response.statusCode}'");
    //   throw HttpException('${response.statusCode}');
    // }
    // }
    // });
  }

  // //GET STUDENTS
  // Future<List<Student>> getStudents() async {
  //   List<Student> returnValue = [];
  //   await getSessionData();
  //   if (baseuserId != "" && baseuserId != null) {
  //     var url = Uri.parse(BASE_URL + "students");
  //     bool responseStatus = false;
  //     String jwt = "";

  //     final SharedPreferences prefs = await SharedPreferences.getInstance();
  //     await authenticate(baseemail, context, "stay");

  //     if (prefs.getString('authToken') != null ||
  //         prefs.getString('authToken') != "") {
  //       print("This is the authToken -- " + prefs.getString('authToken')!);
  //       setState(() {
  //         baseauthToken = prefs.getString('authToken');
  //       });

  //       var response = await http.get(
  //         url,
  //         headers: {
  //           "Content-Type": "Application/json",
  //           'Authorization': 'Bearer $baseauthToken',
  //         },
  //       );
  //       print("This is the response code -- " + response.statusCode.toString());
  //       if (response.statusCode == 200) {
  //         final items = json.decode(response.body);
  //         print(response.body.toString() + "++++++++++++");
  //         if (response.body.toString() != "[]") {
  //           List<Student> students =
  //               (items as List).map((data) => Student.fromJson(data)).toList();

  //           returnValue = students;
  //           setState(() {});
  //         }
  //       } else if (response.statusCode == 404) {
  //         showSnackBar("Info: No students available.");
  //       } else {
  //         returnValue = [];
  //         showSnackBar("Error: Failed to load students. Check your connection");
  //         // await NDialog(
  //         //   dialogStyle: DialogStyle(titleDivider: true),
  //         //   title: const Text("Network Failure"),
  //         //   content: const Text("Failed to retrieve students."),
  //         //   actions: <Widget>[
  //         //     Center(
  //         //         child: MaterialButton(
  //         //       child: const Text("Okay"),
  //         //       onPressed: () {
  //         //         Navigator.of(context).pop();
  //         //       },
  //         //       color: Colors.black,
  //         //     )),
  //         //   ],
  //         // ).show(context);
  //       }
  //     }
  //   }
  //   return returnValue;
  // }

  // This method is about push to new widget and replace current widget
  pushReplacement(StatefulWidget screenName) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screenName));
  }

  // This method is about push to new widget but don't replace current widget
  push(StatefulWidget screenName) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => screenName));
  }

  // This method is about push to new widget and remove all previous widget
  pushAndRemoveUntil(StatefulWidget screenName) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => screenName),
        (_) => false);
  }

  Future<Container> _buildTextField(hintText, controller, textInputType, width,
      height, fcolor, tcolor, icolor, action) async {
    // add other properties here}) { // new
    return Container(
      //Type TextField
      width: width,
      height: height,
      color: fcolor,
      child: TextField(
        textInputAction: action,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: hintText, // pass the hint text parameter here
          hintStyle: TextStyle(color: tcolor),
        ),
        style: TextStyle(color: icolor),
      ),
    );
  }

  // Show loading with optional message params
  showLoading({required String msg}) {
    // return Container(
    //   color: Colors.lightBlue,
    //   child: Center(
    //     child: Loading(
    //       indicator: BallPulseIndicator(),
    //       size: 100.0,
    //       color: Colors.pink,
    //     ),
    //   ),
    // );

    // if (msg != null) {
    //   EasyLoading.show(status: msg);
    // } else {
    //   EasyLoading.show();
    // }
  }

  hideLoadingSuccess(String msg) {
    // EasyLoading.showSuccess(msg, duration: Duration(seconds: 2));
    // EasyLoading.dismiss();
  }

  hideLoadingError(String msg) {
    // EasyLoading.showError(msg, duration: Duration(seconds: 2));
    // EasyLoading.dismiss();
  }

  hideLoading() {
    // EasyLoading.dismiss();
  }

  /*
   * Show Snackbar with Global scaffold key
   * scaffoldKey is defined globally as snackbar do not find context of Scaffold widget
   * hideLoading is hide the loader when snackbar message is showing to UI
   */

  showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      dismissDirection: DismissDirection.up,
    ));
    hideLoading();
  }

  showMessage(String title, String message) {
    hideLoading();
    showCupertinoDialog(
      context: context,
      builder: (BuildContext ctxt) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          content: Text(
            message,
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                if (message.toLowerCase().contains("session expired")) {
                } else {
                  Navigator.pop(context);
                }
              },
              child: const Text(
                "Ok",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

// called on register tapped in homeview
  Future<void> gesture1(String? tex) async {
    if (tex == 'Register a User') {
      print(tex);
    } else if (tex == 'Register a boda boda') {
      print(tex);
    } else if (tex == 'Register taxis') {
      print(tex);
    } else if (tex == 'Register commercial vehicles') {
      print(tex);
    } else {
      showSnackBar('No Input');
    }
  }

// called on see all tapped in homeview
  Future<void> gesture2(String? texx) async {
    if (texx == 'Register a User') {
      print(texx);
    } else if (texx == 'Register a boda boda') {
      print(texx);
    } else if (texx == 'Register taxis') {
      print(texx);
    } else if (texx == 'Register commercial vehicles') {
      print(texx);
    } else {
      showSnackBar('No Input');
    }
  }

  // Check Internet Connection Async method with Snackbar message.
  Future<bool> isConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      showSnackBar("No Internet Connection");
      return false;
    }
    showSnackBar("No Internet Connection");
    return false;
  }
}

BoxDecoration customDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: const [
      BoxShadow(
        offset: Offset(0, 2),
        color: Color(0xff808080),
        blurRadius: 5,
      )
    ],
  );
}

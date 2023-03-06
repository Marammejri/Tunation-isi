import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Anim extends StatelessWidget {
  const Anim({Key? key}) : super(key: key);

  get kPrimaryColor => null;
  getUser() {
    var user = FirebaseAuth.instance.currentUser;
    print(user
        ?.email); // currentuser besh trajali ma3loumet user eli 3amel tasjil doukhoul andi fel app
  } // methode hedhi tjibli les informations ta user elli amel authentification adni fel app

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: double.infinity,
            height: 300.h,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 221, 166),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/DrawKit Vector Illustration Social Work & Charity (15).png"))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 1),
          alignment: Alignment.center,
          child: Text("No one has ever become poor from giving",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp)),
        ),
        SizedBox(height: 30.h),
        ElevatedButton(
            onPressed: () {
              //Navigator.pushNamed(context, "/categ");
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 167, 129, 5)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 89, vertical: 10)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27))),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Donate Now ".toUpperCase(),
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  Image.asset(
                    "assets/images/next.png",
                    width: 10.w,
                    height: 10.h,
                  )
                ]))
      ]),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  // hedhi amalneha besh namlou el 9aws loutani
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80.sp);
    path.quadraticBezierTo(
        size.width.w / 2, size.height.h, size.width.w, size.height - 80.h);
    path.lineTo(size.width.w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

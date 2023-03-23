import 'dart:html' as html;
import 'dart:ui';
import 'package:cyp/search.dart';
import 'package:cyp/sign_uo.dart';
import 'package:cyp/stage.dart';
import 'package:cyp/swipe_page.dart';
import 'package:cyp/timer.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';

import 'login.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBl97gmIufp1Q2jX569-3hR2lvmjpDokW0",
        authDomain: "cypp-10a0d.firebaseapp.com",
        projectId: "cypp-10a0d",
        storageBucket: "cypp-10a0d.appspot.com",
        messagingSenderId: "666598557202",
        appId: "1:666598557202:web:5ca05b7ddd995e744ffacb",
        measurementId: "G-7P4168SVW2"
    )
    
  );
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Firebase Storage Demo',
      scrollBehavior: CSC(),
      home: const SwipePage(),
    );
  }
}
class CSC extends MaterialScrollBehavior {

  @override
  Set<PointerDeviceKind> get dragDevices =>{
    PointerDeviceKind.mouse,
    PointerDeviceKind.touch,
  };
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? imageUrl;
  html.File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final file = html.File(await pickedFile.readAsBytes(), pickedFile.path);
      setState(() {
        _image = file;
      });
      _uploadImage();
    }
  }

  Future<void> _uploadImage() async {
    try {
      final Reference storageRef =
      FirebaseStorage.instance.ref().child('images/${DateTime.now()}');
      final uploadTask = storageRef.putBlob(_image!.slice());
      final snapshot = await uploadTask.whenComplete(() => null);
      final String downloadUrl = await snapshot.ref.getDownloadURL(); debugPrint(downloadUrl);
      setState(() {
        imageUrl = downloadUrl;
      });

    } on FirebaseException catch (e) {
      debugPrint('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Firebase Storage Demo'),
      ),
      body: Column(
        children: [
          if (imageUrl != null) Image.network(imageUrl!),
          ElevatedButton(
            onPressed: _getImage,
            child: const Text('Pick Image'),
          ),
        ],
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       scrollBehavior: MyCustomScrollBehavior(),
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//       ),
//       home: const SplashSc(),
//     );
//   }
// }
// class MyCustomScrollBehavior extends MaterialScrollBehavior {
//   @override
//   Set<PointerDeviceKind> get dragDevices => {
//     PointerDeviceKind.mouse,
//     PointerDeviceKind.touch
//   };
// }

class SplashSc extends StatefulWidget {
  const SplashSc({Key? key}) : super(key: key);

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {

  naviToHome() async {

    Future.delayed(const Duration(milliseconds: 3000),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>
      const Stage()), (route) => false);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    naviToHome();
  }

  @override
  Widget build(BuildContext context) {

    return const Center(child: Text('splash screen'));
  }
}




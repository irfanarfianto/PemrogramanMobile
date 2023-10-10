import 'package:flutter/material.dart';

class Pertemuan4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P4 - UI Advance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Gesture Detector'),
              onTap: () {
                // Tambahkan logika untuk menu Gesture Detector di sini
                // Misalnya, Navigator.push ke halaman yang sesuai.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GestureDetectorPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('OnTap'),
              onTap: () {
                // Tambahkan logika untuk menu OnTap di sini
                // Misalnya, Navigator.push ke halaman yang sesuai.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnTapPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Forms'),
              onTap: () {
                // Tambahkan logika untuk menu Forms di sini
                // Misalnya, Navigator.push ke halaman yang sesuai.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Dropdown'),
              onTap: () {
                // Tambahkan logika untuk menu Dropdown di sini
                // Misalnya, Navigator.push ke halaman yang sesuai.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DropdownPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Toast'),
              onTap: () {
                // Tambahkan logika untuk menu Toast di sini
                // Misalnya, menampilkan pesan toast.
                showToast(context, 'Ini adalah pesan toast');
              },
            ),
            // Tambahkan menu-menu lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

// Contoh halaman-halaman baru
class GestureDetectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Area kotak telah ditekan');
          },
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text('Tekan'),
            ),
          ),
        ),
      ),
    );
  }
}

class OnTapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnTap Page'),
      ),
      body: Center(
        child: Text('Ini adalah halaman OnTap'),
      ),
    );
  }
}
class FormsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnTap Page'),
      ),
      body: Center(
        child: Text('Ini adalah halaman OnTap'),
      ),
    );
  }
}

// class FormsPage extends StatelessWidget {
//   final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Forms Page'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: FormBuilder(
//           key: _formKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Column(
//             children: <Widget>[
//               FormBuilderTextField(
//                 name: 'nama',
//                 decoration: InputDecoration(
//                   labelText: 'Nama',
//                 ),
//                 validator: FormBuilderValidators.required(context),
//               ),
//               SizedBox(height: 10.0),
//               FormBuilderTextField(
//                 name: 'email',
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: FormBuilderValidators.email(context),
//               ),
//               SizedBox(height: 10.0),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState.validate()) {
//                     // Lakukan sesuatu ketika formulir valid
//                     // Misalnya, kirim data ke server
//                   }
//                 },
//                 child: Text('Kirim'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class DropdownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Page'),
      ),
      body: Center(
        child: Text('Ini adalah halaman Dropdown'),
      ),
    );
  }
}

// Fungsi untuk menampilkan pesan toast
void showToast(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ),
  );
}

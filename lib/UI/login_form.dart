import 'package:flutter/material.dart'; 
 
class LoginForm extends StatefulWidget { 
  const LoginForm({Key? key}) : super(key: key); 
 
  @override 
  _ProdukFormState createState() => _ProdukFormState(); 
} 
 
class _ProdukFormState extends State<LoginForm> { 
  final _kodeProdukController = TextEditingController(); 
  final _namaProdukController = TextEditingController(); 
  final _hargaController = TextEditingController(); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Login Form'), 
        backgroundColor: Colors.blue, 
      ), 
      body: SingleChildScrollView( 
        child: Padding( 
          padding: const EdgeInsets.all(16.0), 
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [ 
              const SizedBox(height: 20), 
              TextField( 
                controller: _kodeProdukController, 
                decoration: const InputDecoration( 
                  labelText: "Username", 
                  border: UnderlineInputBorder(), 
                ), 
              ), 
              const SizedBox(height: 30), 
              TextField( 
                controller: _namaProdukController, 
                decoration: const InputDecoration( 
                  labelText: "Password", 
                  border: UnderlineInputBorder(), 
                ), 
              ), 
              
              const SizedBox(height: 40), 
              ElevatedButton( 
                onPressed: () { 
                  // Aksi simpan 
                  print('Username: ${_kodeProdukController.text}'); 
                  print('Password: ${_namaProdukController.text}'); 
                }, 
                style: ElevatedButton.styleFrom( 
                  backgroundColor: Colors.grey[400], 
                  foregroundColor: Colors.black, 
                  padding: const EdgeInsets.symmetric(vertical: 12), 
                  shape: RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(4), 
                  ), 
                ), 
                child: const Text('Login', style: TextStyle(fontSize: 16)), 
              ), 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
 
  @override 
  void dispose() { 
    _kodeProdukController.dispose(); 
    _namaProdukController.dispose(); 
    _hargaController.dispose(); 
    super.dispose(); 
  } 
} 
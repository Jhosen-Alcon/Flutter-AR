import 'package:flutter/material.dart';
class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  

  late String _nombre;
  late String _email;
  late String _password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/loginEst.jpg'),
              ),
              Text(
                'Inicio de Sesión',
                style: TextStyle(
                  fontFamily: 'NerkoOne',
                  fontSize: 50.0
                ),
              ),
              Text(
                'Hola Estudiante',
                style: TextStyle(
                  fontFamily: 'NerkoOne',
                  fontSize: 20.0
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.blueGrey[600] ,
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'Nombre de Usuario',
                  labelText: 'Usuario',
                  suffixIcon: Icon(
                    Icons.verified_user
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _nombre=valor;
                  print('El nombre es $_nombre');
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.alternate_email),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                 onSubmitted: (valor){
                  _email=valor;
                  print('El Email es $_email');
                },
                ),
                Divider(
                  height: 15.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  suffixIcon: Icon(Icons.lock_outline),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                 onSubmitted: (valor){
                  _password=valor;
                  print('La contraseña es $_password');
                },
                ),
                Divider(
                  height: 15.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: FloatingActionButton(
                    hoverColor: Colors.lightBlue,
                    
                    child: Text('Iniciar',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15.0,
                      fontFamily: 'NerkoOne'
                    ),
                    ),
                    onPressed:(){
                      print('diste click');},
                    ),
                )
            ],
          )
        ],
      ),
    );
    
    
  }
}
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'username',
                icon: Icons.abc,
                helperText: 'Digita tu nombre',
                prefixIcon: Icons.abc_outlined,
                suffixIcon: Icons.access_alarm,
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'lastname',
                icon: Icons.abc,
                helperText: 'Digita tu apellido',
                prefixIcon: Icons.abc_outlined,
                suffixIcon: Icons.access_alarm,
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'email',
                icon: Icons.abc,
                helperText: 'Digita tu email',
                prefixIcon: Icons.mail,
                suffixIcon: Icons.access_alarm,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Password',
                hintText: 'Password',
                icon: Icons.abc,
                helperText: 'Digita tu password',
                prefixIcon: Icons.password,
                suffixIcon: Icons.password,
                obscureText: true,
                //keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              CustomInputField(
                labelText: 'Phone',
                hintText: 'phone',
                icon: Icons.abc,
                helperText: 'Digita tu phone',
                prefixIcon: Icons.phone,
                suffixIcon: Icons.phone,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: null,
                  child: SizedBox(
                      width: double.infinity,
                     
                      child: Center(child: Text('Save')))),
            ],
          ),
        ),
      ),
    );
  }
}

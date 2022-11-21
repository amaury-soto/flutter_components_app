import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "Amaury",
      "last_name": "Soto",
      "email": "amaury@gmail.com",
      "password": "12345",
      "role": "Admin",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'username',
                  icon: Icons.abc,
                  helperText: 'Digita tu nombre',
                  prefixIcon: Icons.abc_outlined,
                  suffixIcon: Icons.access_alarm,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'lastname',
                  icon: Icons.abc,
                  helperText: 'Digita tu apellido',
                  prefixIcon: Icons.abc_outlined,
                  suffixIcon: Icons.access_alarm,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'email',
                  //icon: Icons.abc,
                  helperText: 'Digita tu email',
                  prefixIcon: Icons.mail,
                  suffixIcon: Icons.access_alarm,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Password',
                  //icon: Icons.abc,
                  helperText: 'Digita tu password',
                  prefixIcon: Icons.password,
                  suffixIcon: Icons.password,
                  obscureText: true, formProperty: 'password',
                  formValues: formValues,
                  //keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(items: const [
                  DropdownMenuItem(
                    value: 'Admin',
                    child:  Text('Admin'),
                  ),
                  DropdownMenuItem(
                    value: 'Super user',
                    child:  Text('Super user'),
                  ),
                  DropdownMenuItem(
                    value: 'Developer',
                    child:  Text('Developer'),
                  ),
                  DropdownMenuItem(
                    value: 'Junior',
                    child:  Text('Junior'),
                  ),
                ], onChanged:(value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
                
                ),
                ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Sav'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      //FocusScope.of(context).unfocus();
                      if (!myFormKey.currentState!.validate()) {
                        print('Form no válido');
                        return;
                      }
                      print(formValues);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

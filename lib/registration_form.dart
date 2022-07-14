import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _nameControllerText = TextEditingController();

  @override
  void dispose() {
    _nameControllerText.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void _submitForm() {
    print('${_nameControllerText.text}');
    _showDialog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameControllerText,
              decoration: InputDecoration(
                labelText: 'Name *',
                hintText: 'Your pogonyalo',
                prefixIcon: Icon(Icons.person),
                suffixIcon: GestureDetector(
                  onTap: (() => _nameControllerText.clear()),
                  child: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.grey, width: 3)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  labelText: 'Phone number *',
                  helperText: 'Phone +7(333)5552211'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email *'),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'About you *',
              ),
              maxLines: 4,
              inputFormatters: [LengthLimitingTextInputFormatter(15)],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password *'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm password *'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: _submitForm,
                child:
                    Text('Submit Form', style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }

  void _showDialog({String }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Registration success'),
            content: Text(' is now are verification'),
          );
        });
  }
}

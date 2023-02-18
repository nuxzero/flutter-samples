import 'package:flutter/material.dart';

class TextFieldList extends StatefulWidget {
  const TextFieldList({super.key});

  @override
  State<TextFieldList> createState() => _TextFieldListState();
}

class _TextFieldListState extends State<TextFieldList> {
  var _messages = ['hello', 'hi'];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test')),
      body: Form(
        key: _formKey,
        child: ListView.builder(
          itemCount: _messages.length,
          itemBuilder: (context, index) {
            return _InputListTile(
              formKey: _formKey,
              message: _messages[index],
              onChanged: (text) {
                _messages[index] = text;
              },
            );
          },
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _messages.add("");
              });
            },
            child: const Text('Add'),
          ),
          TextButton(
            onPressed: () {
              _formKey.currentState?.validate();
            },
            child: const Text('Validate'),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _InputListTile extends StatelessWidget {
  _InputListTile({
    super.key,
    required this.formKey,
    required this.message,
    required this.onChanged,
  });

  final GlobalKey<FormState> formKey;
  final String message;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          hintText: "Enter message",
          errorStyle: TextStyle(height: 0),
        ),
        initialValue: message,
        validator: (value) => value?.isEmpty == true ? '' : null,
        onChanged: (text) {
          onChanged(text);
          formKey.currentState?.validate();
        },
        onEditingComplete: () {},
      ),
    );
  }
}

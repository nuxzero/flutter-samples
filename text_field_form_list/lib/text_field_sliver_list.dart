import 'package:flutter/material.dart';

class TextFieldSliverList extends StatefulWidget {
  const TextFieldSliverList({super.key});

  @override
  State<TextFieldSliverList> createState() => _TextFieldSliverListState();
}

class _TextFieldSliverListState extends State<TextFieldSliverList> {
  var _fullname = 'John Doe';
  var _messages = ['hello', 'hi'];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test')),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _FullNameInput(
                formKey: _formKey,
                fullName: _fullname,
                onChanged: (value) {
                  setState(() {
                    _fullname = value;
                  });
                },
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return _InputListTile(
                    formKey: _formKey,
                    message: _messages[index],
                    onChanged: (value) {
                      _messages[index] = value;
                    });
              },
              childCount: _messages.length,
            )),
          ],
        ),
      ),
      bottomNavigationBar: _BottomMenu(
        formKey: _formKey,
        onAddPressed: () {
          setState(() {
            _messages.add("");
          });
        },
      ),
    );
  }
}

class _FullNameInput extends StatelessWidget {
  const _FullNameInput({
    super.key,
    required this.fullName,
    required this.formKey,
    required this.onChanged,
  });

  final GlobalKey<FormState> formKey;
  final String fullName;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        initialValue: fullName,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          hintText: "Enter full name",
          errorStyle: TextStyle(height: 0),
        ),
        validator: (value) => value?.isEmpty == true ? '' : null,
        onChanged: (text) {
          onChanged(text);
          // formKey.currentState?.validate();
        },
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
          // formKey.currentState?.validate();
        },
        onEditingComplete: () {},
      ),
    );
  }
}

class _BottomMenu extends StatelessWidget {
  const _BottomMenu({
    super.key,
    required this.formKey,
    required this.onAddPressed,
  });

  final GlobalKey<FormState> formKey;
  final Function onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {
            onAddPressed();
            // setState(() {
            //   _messages.add("");
            // });
          },
          child: const Text('Add'),
        ),
        TextButton(
          onPressed: () {
            formKey.currentState?.validate();
          },
          child: const Text('Validate'),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

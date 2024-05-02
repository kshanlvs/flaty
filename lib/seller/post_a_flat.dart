import 'package:flutter/material.dart';

class PostAFlat extends StatefulWidget {
  const PostAFlat({super.key});

  @override
  _PostAFlatState createState() => _PostAFlatState();
}

class _PostAFlatState extends State<PostAFlat> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Flat for Rent'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Property Type',
                    hintStyle: TextStyle(color: Colors.grey)),
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Location'),
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Number of Bedrooms'),
                keyboardType: TextInputType.number,
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Number of Bathrooms'),
                keyboardType: TextInputType.number,
                onSaved: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Rent Price'),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onSaved: (value) {},
              ),
            
              // such as availability, description, etc.
            ],
          ),
        ),
      ),
    );
  }
}

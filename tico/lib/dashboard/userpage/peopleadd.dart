import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
@override
_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
Widget build(BuildContext context) {
	return MaterialApp(
    debugShowCheckedModeBanner: false,
	title: "FormValidation",
	home: MyHomePage(),
	);
}
}

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final GlobalKey<FormState> _formKey = GlobalKey();
String email = "";
String password = "";

void _submit() {
	// you can write your
	// own code according to
	// whatever you want to submit;
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Add your profile"),
	),
	body: Padding(
		padding: const EdgeInsets.all(16.0),
		child: Column(
		children: <Widget>[
			Form(
			key: _formKey,
			child: Column(
				children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            keyboardType: TextInputType.name,
          ),
				TextFormField(
					decoration: InputDecoration(labelText: 'E-Mail'),
					keyboardType: TextInputType.emailAddress,
					onFieldSubmitted: (value) {
					setState(() {
						email = value;
					});
					},
					validator: (value) {
					if (value!.isEmpty || value.contains('@')) {
						return 'Invalid email!';
					}
					},
				),
				// this is where the
				// input goes
				TextFormField(
					decoration: InputDecoration(labelText: 'Contact Number'),
					keyboardType: TextInputType.visiblePassword,
					obscureText: true,
					validator: (value) {
					if (value!.isEmpty && value.length < 7) {
						return 'Invalid password!';
					}
					},
					onFieldSubmitted: (value) {
					setState(() {
						password = value;
					});
					},
				),
        TextFormField(
          decoration: InputDecoration(labelText: "Address"),
          keyboardType: TextInputType.streetAddress,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "Work place" ),
          keyboardType: TextInputType.streetAddress,
        ),

				ElevatedButton(
					onPressed: _submit,
					child: Text("submit"),
				),
				],
			),
			),
			// this is where
			// the form field
			// are defined
			SizedBox(
			height: 20,
			),
			Column(
			children: <Widget>[
				email.isEmpty ? Text("No data") : Text(email),
				SizedBox(
				height: 10,
				),
				password.isEmpty ? Text("No Data") : Text(password),
			],
			)
		],
		),
	),
	);
}
}

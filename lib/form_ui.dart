import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormPageState();
  }
}

class FormPageState extends State<FormPage> {
  String _appName, _appSummary;
  bool appReskinned;
  int _avgMonthlyDownloads;
  DateTime _goLiveDate;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildAppName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter your app name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'App name is required';
        }
      },
      onSaved: (String value) {
        _appName = value;
      },
    );
  }

  Widget _buildIndustryType() {
    return null;
  }

  Widget _buildRedefinedIndustry() {
    return null;
  }

  Widget _buildAppSummary() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Briefly descibe your app'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'App summary is required';
        }
      },
      onSaved: (String value) {
        _appName = value;
      },
    );
  }

  Widget _buildGoLiveDate() {
    return null;
  }

  Widget _buildAvgMonthlyDownload() {
    return null;
  }

  Widget _buildAppReskinned() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                // _buildIndustryType(),
                // _buildRedefinedIndustry(),
                _buildAppSummary(),
                // _buildGoLiveDate(),
                // _buildAvgMonthlyDownload(),
                // _buildAppReskinned(),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      if (!_formkey.currentState.validate()) {
                        return;
                      }
                      _formkey.currentState.save();

                      print(_appName);
                      print(_appSummary);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'Data Form',
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}

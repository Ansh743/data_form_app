import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormPageState();
  }
}

class FormPageState extends State<FormPage> {
  String _appName, _appSummary, _industryType, _redefinedIndustry;
  bool _appReskinned;
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
        return null;
      },
      onSaved: (String value) {
        _appName = value;
      },
    );
  }

  Widget _buildIndustryType() {
    return DropdownButtonFormField(
      value: null,
      hint: Text('Industry Type'),

      //TODO: Add seperate flie/bean for the data of drop-down menu
      items: [
        DropdownMenuItem(
          child: Text("Option 1"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("Option 2"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("Option 3"),
          value: 3,
        ),
      ],
      onSaved: (int value) {
        _industryType = value.toString();
      },
      onChanged: (int value) {
        print(value);
      },
      validator: (int value) {
        if (value == null) {
          return 'Required Field';
        }
        return null;
      },
    );
  }

  Widget _buildRedefinedIndustry() {
    return DropdownButtonFormField(
      value: null,
      hint: Text('Redefine Industry'),

      //TODO: Add seperate flie/bean for the data of drop-down menu
      items: [
        DropdownMenuItem(
          child: Text("Option 1"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("Option 2"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("Option 3"),
          value: 3,
        ),
      ],
      onSaved: (int value) {
        _redefinedIndustry = value.toString();
      },
      onChanged: (int value) {
        print(value);
      },
      validator: (int value) {
        if (value == null) {
          return 'Required Field';
        }
        return null;
      },
    );
  }

  Widget _buildAppSummary() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Briefly describe your app'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'App summary is required';
        }
        return null;
      },
      onSaved: (String value) {
        _appSummary = value;
      },
    );
  }

  Widget _buildGoLiveDate() {
    return InputDatePickerFormField(
      firstDate: DateTime.now(),
      lastDate: DateTime(3000, 4),
      onDateSaved: (DateTime date) {
        _goLiveDate = date;
      },
    );
  }

  Widget _buildAvgMonthlyDownload() {
    return DropdownButtonFormField(
      value: null,
      hint: Text('Average Monthly Downloads'),

      //TODO: Add seperate flie/bean for the data of drop-down menu
      items: [
        DropdownMenuItem(
          child: Text("1"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("2"),
          value: 2,
        ),
        DropdownMenuItem(
          child: Text("3"),
          value: 3,
        ),
      ],
      onSaved: (int value) {
        _avgMonthlyDownloads = value;
      },
      onChanged: (int value) {
        //TODO: Implement this
      },
      validator: (int value) {
        if (value == null) {
          return 'Required Field';
        }
        return null;
      },
    );
  }

  Widget _buildAppReskinned() {
    return Container(
        child: Column(
      children: [
        Text('Is your App reskinned?'),
      ],
    ));
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildAppName(),
                _buildIndustryType(),
                _buildRedefinedIndustry(),
                _buildAppSummary(),
                _buildGoLiveDate(),
                _buildAvgMonthlyDownload(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildAppReskinned(),
                    ElevatedButton(
                        onPressed: () {
                          if (!_formkey.currentState.validate()) {
                            return;
                          }
                          _formkey.currentState.save();
                          //TODO: Remove below assertion statements during production
                          print(_appName);
                          print(_industryType);
                          print(_redefinedIndustry);
                          print(_appSummary);
                          print(_goLiveDate.toString());
                          print(_avgMonthlyDownloads);
                          print(_appReskinned);
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ],
                ),
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

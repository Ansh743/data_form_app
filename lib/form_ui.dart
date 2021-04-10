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
    return null;
  }

  Widget _buildIndustryType() {
    return null;
  }

  Widget _buildRedefinedIndustry() {
    return null;
  }

  Widget _buildAppSummary() {
    return null;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                _buildIndustryType(),
                _buildRedefinedIndustry(),
                _buildAppSummary(),
                _buildGoLiveDate(),
                _buildAvgMonthlyDownload(),
                _buildAppReskinned(),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      print('Submitted');
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

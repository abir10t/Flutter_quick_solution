import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';



class Loader extends StatefulWidget {
  final String text;

  const Loader({Key key, this.text}) : super(key: key);
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        elevation: 10.0,
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.all(145),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        content: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingIndicator(
                indicatorType: Indicator.values[8],
                color: Colors.red,
              ),
              //SizedBox(height: 10,),
              // FittedBox(
              //   fit: BoxFit.contain,
              //   child: Text(widget.text,style: TextStyle(
              //       fontSize: 17,
              //       color: white,
              //   ),),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
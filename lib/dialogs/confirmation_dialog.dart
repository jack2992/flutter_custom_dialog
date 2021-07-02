import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext ctx) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(Icons.warning_amber_outlined, size: 45, color: Colors.red,),
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
          ),
          SizedBox(height: 24,),
          Text('Do you want to exit', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 8,),
          Padding(padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text('If back button is pressed by mistake then click on No to continue.', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(onPressed: (){
                return Navigator.of(ctx).pop();
              },
                  child: Text('No'), color: Colors.white, textColor: Colors.green,),
              SizedBox(width: 8,),
              FlatButton(onPressed: () {
                return Navigator.of(ctx).pop(true);
              },
                child: Text('Yes'), color: Colors.white, textColor: Colors.green,
              )
            ],
          ),
        ],
      ),
    );
  }
}

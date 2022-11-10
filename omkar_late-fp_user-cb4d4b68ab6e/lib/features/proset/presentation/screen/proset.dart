
import 'package:apidemo/features/proset/proset_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ProSet extends StatelessWidget {
  const ProSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider<ProSetController>(
      create: (context) => ProSetController(),
      child: Consumer<ProSetController>(
        builder: (context, data, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login UI'),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                SizedBox(
                  height: 180,
                ),

                /// Button
                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Text('LOGIN'),
                  onPressed: () {

                    data.onProSet();

                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
  }

import 'package:flutter/material.dart';
import 'package:lightcofee/component/cofeeoptiontile.dart';
import 'package:lightcofee/models/cofee.dart';
import 'package:lightcofee/models/cofee_option.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(12),
                    bottomStart: Radius.circular(12))),
            leading: const Icon(Icons.ac_unit),
            title: const Text("کافه لایت"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "قهوه ی مناسب رو پیدا کن!",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.local_cafe_rounded),
                          hintText: "جست و جو"),
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

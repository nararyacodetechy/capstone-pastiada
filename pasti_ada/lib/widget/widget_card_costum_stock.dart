// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

import '../common/styles.dart';

class CardCostumStock extends StatefulWidget {
  const CardCostumStock({
    Key? key,
  }) : super(key: key);

  @override
  State<CardCostumStock> createState() => _CardCostumStockState();
}

class _CardCostumStockState extends State<CardCostumStock> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: iconColor),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          leading: Hero(
            tag: "1",
            child: Container(
              decoration: const BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 50,
              height: 50,
            ),
          ),
          title: Text(
            "Telur Ayam",
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Row(
            children: const [
              Text("Rp. "),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "1.500",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 100,
                  child: Center(
                    child: CustomNumberPicker(
                      shape: const Border(
                        top: BorderSide(color: iconColor),
                        left: BorderSide(color: iconColor),
                        right: BorderSide(color: iconColor),
                        bottom: BorderSide(color: iconColor),
                      ),
                      initialValue: 1,
                      maxValue: 50,
                      minValue: 1,
                      step: 1,
                      onValue: (value) {
                        print(value.toString());
                      },
                      valueTextStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: iconColor),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                  child: Icon(
                    Icons.close,
                    color: iconColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

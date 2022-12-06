import 'package:flutter/material.dart';

class CardCostumStock extends StatelessWidget {
  const CardCostumStock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: ListTile(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          leading: Hero(
            tag: "",
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
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
          trailing: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

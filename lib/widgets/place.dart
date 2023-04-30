import "package:flutter/material.dart";

import "../utils/color_utils.dart";

class Place extends StatelessWidget {
  String img;
  String name;

  Place(this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  img,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
              )
            ],
        ),
      ),
    );
    ;
  }
}

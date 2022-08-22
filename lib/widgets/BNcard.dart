import 'package:flutter/material.dart';
import 'package:newsappui/models/newsModel.dart';

class BNcard extends StatefulWidget {
  BNcard(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<BNcard> createState() => _BNcardState();
}

class _BNcardState extends State<BNcard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(widget.data.urlImage!),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.data.author!,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white38,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flagudaerah_app/models/province.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  final Province province;
  const Detailpage({
    super.key,
    required this.province,
  });

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.province.nama),
        elevation: 4,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            widget.province.laguDaerah,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '${widget.province.nama}- ${widget.province.ibuKota}',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          Image.network(
            widget.province.photo,
            height: 300,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 221, 221),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Text(
              widget.province.lirikLagudaerah,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

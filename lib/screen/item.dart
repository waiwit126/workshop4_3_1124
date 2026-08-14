import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/foodmenu.dart';
import 'addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: emp.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 97, 51, 182),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            emp[index].name,
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 219, 129, 241),
                              ),
                            ),
                          ),
                          Text(
                            "Date of Birth : ${emp[index].component}",
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 219, 129, 241),
                              ),
                            ),
                          ),
                          Text(
                            "band : ${emp[index].band}",
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 219, 129, 241),
                              ),
                            ),
                          ),
                          Text(
                            "school : ${emp[index].school.ty}",
                            style: GoogleFonts.itim(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 219, 129, 241),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      emp[index].character.image,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddForm()),
              ).then((_) {
                setState(() {});
              });
            },
            icon: const Icon(
              Icons.add,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

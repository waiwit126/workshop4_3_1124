import 'package:flutter/material.dart';
import '../models/foodmenu.dart';


class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _component = '';

  BandType _band = BandType.band4;
  schoolType _school = schoolType.type1;
  Character _character = Character.c1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เพิ่มข้อมูล"),
        backgroundColor: const Color.fromARGB(255, 136, 132, 162),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 66, 15, 133),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Form(
            key: _formKey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // =========================
                // ชื่อตัวละคร
                // =========================
                TextFormField(
                  maxLength: 50,

                  decoration: const InputDecoration(
                    labelText: "ชื่อ",

                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white70,
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),

                    counterStyle: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "กรุณากรอกชื่อ";
                    }

                    return null;
                  },

                  onSaved: (value) {
                    _name = value!.trim();
                  },
                ),

                const SizedBox(height: 10),

                // =========================
                // วันเกิด
                // =========================
                TextFormField(
                  maxLength: 100,

                  decoration: const InputDecoration(
                    labelText: "วันเกิด",

                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white70,
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),

                    counterStyle: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "กรุณากรอกวันเกิด";
                    }

                    return null;
                  },

                  onSaved: (value) {
                    _component = value!.trim();
                  },
                ),

                const SizedBox(height: 10),

                // =========================
                // Dropdown Band
                // =========================
                DropdownButtonFormField<BandType>(
                  initialValue: _band,

                  decoration: const InputDecoration(
                    labelText: "Band",

                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white70,
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  dropdownColor:
                      const Color.fromARGB(255, 97, 51, 182),

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                  items: BandType.values.map((band) {
                    return DropdownMenuItem<BandType>(
                      value: band,

                      child: Text(
                        band.name,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),

                  onChanged: (value) {
                    if (value == null) return;

                    setState(() {
                      _band = value;
                    });
                  },

                  onSaved: (value) {
                    if (value != null) {
                      _band = value;
                    }
                  },
                ),

                const SizedBox(height: 10),

                // =========================
                // Dropdown โรงเรียน
                // =========================
                DropdownButtonFormField<schoolType>(
                  initialValue: _school,

                  decoration: const InputDecoration(
                    labelText: "โรงเรียน",

                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white70,
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  dropdownColor:
                      const Color.fromARGB(255, 97, 51, 182),

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                  items: schoolType.values.map((school) {
                    return DropdownMenuItem<schoolType>(
                      value: school,

                      child: Text(
                        school.ty,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),

                  onChanged: (value) {
                    if (value == null) return;

                    setState(() {
                      _school = value;
                    });
                  },

                  onSaved: (value) {
                    if (value != null) {
                      _school = value;
                    }
                  },
                ),

                const SizedBox(height: 20),

                // =========================
                // Dropdown รูปภาพตัวละคร
                // =========================
                DropdownButtonFormField<Character>(
                  initialValue: _character,

                  decoration: const InputDecoration(
                    labelText: "เลือกรูปภาพ",

                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white70,
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  dropdownColor:
                      const Color.fromARGB(255, 97, 51, 182),

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                  items: Character.values.map((pic) {
                    return DropdownMenuItem<Character>(
                      value: pic,

                      child: Row(
                        children: [
                          Text(
                            pic.character,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 10),

                          Image.asset(
                            pic.image,
                            width: 40,
                            height: 40,

                            errorBuilder:
                                (context, error, stackTrace) {
                              return const Icon(
                                Icons.image_not_supported,
                                color: Colors.white,
                                size: 40,
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  }).toList(),

                  onChanged: (value) {
                    if (value == null) return;

                    setState(() {
                      _character = value;
                    });
                  },

                  onSaved: (value) {
                    if (value != null) {
                      _character = value;
                    }
                  },
                ),

                const SizedBox(height: 30),

                // =========================
                // ปุ่มบันทึก
                // =========================
                Center(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.blue,

                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),

                    onPressed: () {
                      // ตรวจสอบ Form
                      if (_formKey.currentState == null) {
                        return;
                      }

                      if (!_formKey.currentState!.validate()) {
                        return;
                      }

                      // บันทึกค่าจาก Form
                      _formKey.currentState!.save();

                      // เพิ่มข้อมูลเข้า List
                      emp.add(
                        FoodMenu(
                          name: _name,
                          component: _component,
                          band: _band,
                          school: _school,
                          character: _character,
                        ),
                      );

                      // กลับไปหน้าก่อนหน้า
                      Navigator.pop(context);
                    },

                    child: const Text(
                      "บันทึก",

                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class tempconvert extends StatefulWidget{
  @override
  State<tempconvert> createState() => _tempconvertState();
}

class _tempconvertState extends State<tempconvert> {
    final _cel  = TextEditingController();
    var result = '';


  void ClickCeltoFa() {
    var input = double.tryParse(_cel.text);

    if (input == null) {
      print('Please enter a value to convert');
      setState(() {
        result = 'Please enter a value to convert';
      });
    } else {
      var f = (9/5)*(input) + 32;
      setState(() {
        result = '$input Celsius = $f Fahrenheit';
      });
    }
  }
    void ClickCelToKel() {
      var input = double.tryParse(_cel.text);

      if (input == null) {
        print('Please enter a value to convert');
        setState(() {
          result = 'Please enter a value to convert';
        });
      } else {
        var k = input + 273;
        setState(() {
          result = '$input Celsius = $k Kelvin';
        });
      }
    }
    void ClickFatoCel() {
      var input = double.tryParse(_cel.text);

      if (input == null) {
        print('Please enter a value to convert');
        setState(() {
          result = 'Please enter a value to convert';
        });
      } else {
        var c = (5/9)*(input-32);
        setState(() {
          result = '$input Fahrenheit = $c Celsius';
        });
      }
    }
    void ClickFatoKel() {
      var input = double.tryParse(_cel.text);

      if (input == null) {
        print('Please enter a value to convert');
        setState(() {
          result = 'Please enter a value to convert';
        });
      } else {
        var k = (5/9)*(input-32)+273;
        setState(() {
          result = '$input Fahrenheit = $k Kelvin';
        });
      }
    }
    void ClickKeltoCel() {
      var input = double.tryParse(_cel.text);

      if (input == null) {
        print('Please enter a value to convert');
        setState(() {
          result = 'Please enter a value to convert';
        });
      } else {
        var c = input-273;
        setState(() {
          result = '$input Kelvin = $c Celsius';
        });
      }
    }
    void ClickKeltoFa() {
      var input = double.tryParse(_cel.text);

      if (input == null) {
        print('Please enter a value to convert');
        setState(() {
          result = 'Please enter a value to convert';
        });
      } else {
        var f = (9/5)*(input-273)+32;
        setState(() {
          result = '$input Kelvin = $f Fahrenheit';
        });
      }
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Caculater Temp')),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white, //สีพื้นหลังของ Container
          border: Border.all(
            width: 5.0,
            color: Colors.deepPurple.shade200,
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(16.0),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            const Text('Temperature Converter',style: TextStyle(
                  fontWeight: FontWeight. bold,
                fontSize: 50,
              ),
              ),
             TextField(
              controller: _cel,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert'
              ),
            ),

              ElevatedButton(
                  onPressed: ClickCeltoFa ,
                  child:const Text('Celsius to Fahrenheit'),
              ),

            ElevatedButton(
              onPressed: ClickCelToKel ,
              child:const Text('Celsius to Kelvin'),
            ),

            ElevatedButton(
              onPressed: ClickFatoCel ,
              child:const Text('Fahrenheit to Celsius'),
            ),

            ElevatedButton(
              onPressed: ClickFatoKel ,
              child:const Text('Fahrenheit to Kelvin'),
            ),
            ElevatedButton(
              onPressed: ClickKeltoCel ,
              child:const Text('Kelvin to Celsius'),
            ),
            ElevatedButton(
              onPressed: ClickKeltoFa ,
              child:const Text('Kelvin to Fahrenheit'),
            ),
            Text(result,style: const TextStyle(
              fontWeight: FontWeight. bold,
              fontSize: 30,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
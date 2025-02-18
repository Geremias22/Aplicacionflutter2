import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String textEtiqueta;
  final String? textHint;
  final TextEditingController tecInput; 
  final bool invert;
 

  const InputText({
    super.key,
    required this.textEtiqueta,
    this.textHint, 
    required this.tecInput, 
    required this.invert,
   
    });


  

  @override
  Widget build(BuildContext context) {
    
    return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  textEtiqueta, style:  
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: invert ? Colors.white : Colors.black,
                  ),
                ),
              ),
              TextField(
                
                
                controller: tecInput,
                style: TextStyle( 
                   color: invert ?  Colors.black : Colors.white
                  ),
                cursorColor:invert ?  Colors.black : Colors.white,
                decoration: InputDecoration(
                  fillColor: invert ?  const Color.fromARGB(255, 255, 203, 203) : const Color.fromARGB(255, 101, 17, 17),
                  filled: true,
                  hintText: textHint,
                  hintStyle: TextStyle(
                    color: invert ?  const Color.fromARGB(255, 61, 57, 57) : Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:  BorderSide(
                      color: invert ?  const Color.fromRGBO(255, 104, 104, 1) : const Color.fromARGB(255, 250, 154, 154),
                      width: 4,                      
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: invert ?  Colors.black : Colors.white,
                      width: 4
                  ),
                  ),

                ),
              ),
            ],
          ),
        );
  }
}
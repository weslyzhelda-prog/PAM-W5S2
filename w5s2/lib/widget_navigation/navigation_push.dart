import 'package:flutter/material.dart'; 
// Opsi A: Menggunakan package path lengkap (disarankan)
import 'package:w5s2/widget_navigation/navigation_pop.dart'; 

class NavigationPush extends StatefulWidget { 
  const NavigationPush({super.key}); 
  
  @override 
  State<NavigationPush> createState() => _NavigationPushState(); 
} 
  
class _NavigationPushState extends State<NavigationPush> { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text("Navigation Push"), 
      ), 
      body: Container( 
        // Penjelasan TODO: Memberikan jarak bagian dalam (padding) sebesar 10 piksel di semua sisi Container
        padding: const EdgeInsets.all(10.0), 
        child: Column( 
          children: [ 
            ElevatedButton( 
              onPressed: () { 
                Navigator.of(context) 
                    .push(MaterialPageRoute(builder: (context) { 
                  return const NavigationPop(); 
                })); 
              }, 
              child: const Text('go to next Page'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
}
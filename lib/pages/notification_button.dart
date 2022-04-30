import 'package:flutter/material.dart';
class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
      children: [
     IconButton(onPressed: (){}, icon:const Icon(Icons.notification_important,size:30 ,)),
     Positioned(
         top: 11,right: 10,
         child:    Container(
           alignment: Alignment.center,
           decoration: BoxDecoration(
             color: Colors.red,
             borderRadius: BorderRadius.circular(10)
           ),
           padding: const EdgeInsets.all(3),
       width: 18,height: 15,
       child: const Text("9+",style: TextStyle(
         color: Colors.white,fontSize: 9
       ),),
       )
     )

      ],
    );
  }
}

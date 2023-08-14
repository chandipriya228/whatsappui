import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  static const String id = 'home_screen';
  const HomeScreen({Key? key}):super(key: key);

  @override
  State<HomeScreen> createState()  => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
        title: Text('WhatsApp'),
        bottom: const TabBar(
            tabs: [
              Tab(
            child:Icon(Icons.camera_alt),
    ),
              Tab(

             child: Text('Chats'),
    ),
              Tab(

             child: Text('Status'),
    ),
              Tab(
             child: Text('Calls'),
    ),
    ]
    ) ,
      actions:[
         const Icon(Icons.search),
        const SizedBox(width: 10,),
        PopupMenuButton(
        icon:const Icon(Icons.more_vert_outlined),
        itemBuilder:(context,)=> const [
          PopupMenuItem(
              value: '1',
              child: Text('New Group')
          ),
           PopupMenuItem(
               value: '2',
               child:Text('Settings')
           ),
          PopupMenuItem(
            value: '3',
            child:Text('Logout')
          )
          ],
        ),
        SizedBox(width: 10,)
    ],
      ),
       body:  TabBarView(
         children: [
           Text('Camera') ,
              ListView.builder(
             itemCount:10,
           itemBuilder:(context,index){
               return  const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/6463841/pexels-photo-6463841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
             ),
                 title:Text('priya'),
             subtitle:Text('what are u doing'),
             trailing:Text('7.49 PM'),
               );
           }
           ),

           ListView.builder(
               itemCount:10,
               itemBuilder:(context,index){
                 return   ListTile(
                 leading: Container(
                   decoration :BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(
                         color:Colors.green,
                         width:3
                 )
                 ) ,
                     child: CircleAvatar(
                         backgroundImage: NetworkImage('https://images.pexels.com/photos/6463841/pexels-photo-6463841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                 ),
                 ),
                     title:Text('priya'),
                     subtitle:Text('35 min ago'),

                 );
               }
           ),

    ListView.builder(
    itemCount:10,
    itemBuilder:(context,index) {
      return   ListTile(
        leading: CircleAvatar(
            backgroundImage :NetworkImage('https://www.pexels.com/photo/pink-flower-plant-in-the-garden-6463841/'),

        ),
        title: Text('priya'),
        subtitle: Text(index /2 ==0? 'you missed audio call' : 'call time is 12.23'),
        trailing: Icon(index /2== 0 ? Icons.phone : Icons.video_call),
      );
    }
    ),


    ]
    ),
      )
    );
  }
}
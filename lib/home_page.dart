import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:motor_flutter/motor_flutter.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:comment_box/comment/test.dart';
import 'package:comment_box/main.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/HomePage';
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("STAKE THE STIGMA",),),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://us.123rf.com/450wm/artinspiring/artinspiring1709/artinspiring170900485/86627158-menstrual-pain-illustration-.jpg?ver=6",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? MediaQuery.of(context).size.height * 0.2
                            : MediaQuery.of(context).size.height * 0.1,
                        width: 425,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        alignment: Alignment.center,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        backgroundColor: Colors.transparent,
                                        child: Container(
                                          height: 350,
                                          width: 350,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 24),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              //                Image.asset(
                                              //                   'assets/icons/otherIcons/successfullyRegistered.png',
                                              //                 ),
                                              Text(
                                                'When I got my first period,I was very scared...',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            
                                              TextField(
                                                controller: myController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'Spread love',
                                                ),
                                              
                                                maxLength: 300,
                                                cursorWidth: 2.0,
                                                cursorColor: Colors.red,
                                                cursorRadius: Radius.circular(4),
                                              ),

                                              Container(
                                                height: 54,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                              
                                                  child: Text(
                                                    "Post",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: AvatarView(
                                radius: 30,
                                borderColor: Colors.red,
                                isOnlyText: false,
                                text: Text(
                                  'C',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 50),
                                ),
                                avatarType: AvatarType.CIRCLE,
                                backgroundColor: Colors.red,
                                imagePath:
                                "https://us.123rf.com/450wm/artinspiring/artinspiring1709/artinspiring170900485/86627158-menstrual-pain-illustration-.jpg?ver=6"
                                ,placeHolder: Container(
                                  child: Icon(
                                    Icons.person,
                                    size: 20,
                                  ),
                                ),
                                errorWidget: Container(
                                  child: Icon(
                                    Icons.error,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Paula Burgos",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),





                    Positioned(
                      bottom: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.2 - 20
                          : MediaQuery.of(context).size.height * 0.1 - 20,
                      right: 10,
                      child: Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://us.123rf.com/450wm/artinspiring/artinspiring1709/artinspiring170900485/86627158-menstrual-pain-illustration-.jpg?ver=6",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? MediaQuery.of(context).size.height * 0.2
                            : MediaQuery.of(context).size.height * 0.1,
                        width: 425,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        alignment: Alignment.center,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        backgroundColor: Colors.transparent,
                                        child: Container(
                                          height: 350,
                                          width: 350,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 24),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              //                Image.asset(
                                              //                   'assets/icons/otherIcons/successfullyRegistered.png',
                                              //                 ),
                                              Text(
                                                'I have always been insecure about when talking about menstruation and it has...',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              TextField(
                                                controller: myController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'Spread love',
                                                ),
                                              ),
                                              Container(
                                                height: 54,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Post",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: AvatarView(
                                radius: 30,
                                borderColor: Colors.red,
                                isOnlyText: false,
                                text: Text(
                                  'C',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 50),
                                ),
                                avatarType: AvatarType.CIRCLE,
                                backgroundColor: Colors.red,
                                imagePath:
                                    "https://media.timeout.com/images/105685472/750/562/image.jpg",
                                placeHolder: Container(
                                  child: Icon(
                                    Icons.person,
                                    size: 20,
                                  ),
                                ),
                                errorWidget: Container(
                                  child: Icon(
                                    Icons.error,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Carolina ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.2 - 20
                          : MediaQuery.of(context).size.height * 0.1 - 20,
                      right: 10,
                      child: Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://cms.finnair.com/resource/blob/1397942/c4410bf39d8838d7285bc25be6d4183b/lax-main-data.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? MediaQuery.of(context).size.height * 0.2
                            : MediaQuery.of(context).size.height * 0.1,
                        width: 425,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        alignment: Alignment.center,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        backgroundColor: Colors.transparent,
                                        child: Container(
                                          height: 350,
                                          width: 350,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 24),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              //                Image.asset(
                                              //                   'assets/icons/otherIcons/successfullyRegistered.png',
                                              //                 ),
                                              Text(
                                                'When I got my first period,I was very scared...',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              TextField(
                                                controller: myController,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'Spread love',
                                                ),
                                              ),
                                              Container(
                                                height: 54,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Post",
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: AvatarView(
                                radius: 30,
                                borderColor: Colors.red,
                                isOnlyText: false,
                                text: Text(
                                  'C',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 50),
                                ),
                                avatarType: AvatarType.CIRCLE,
                                backgroundColor: Colors.red,
                                imagePath:
                                    "https://media.timeout.com/images/105685472/750/562/image.jpg",
                                placeHolder: Container(
                                  child: Icon(
                                    Icons.person,
                                    size: 20,
                                  ),
                                ),
                                errorWidget: Container(
                                  child: Icon(
                                    Icons.error,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Gigi",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? MediaQuery.of(context).size.height * 0.2 - 20
                          : MediaQuery.of(context).size.height * 0.1 - 20,
                      right: 10,
                      child: Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
    
  }
}

// void function() async {


//   final exampleCollectible = collectibleSchema.newDocument();
//   exampleCollectible.set<String>("quantity", "0");
//   exampleCollectible.set<String>("name", "bla");
//   exampleCollectible.set<int>("price", 0);
//   exampleCollectible.set<String>("asset",
//       "https://miro.medium.com/max/600/1*cL2YPKj7CRJX8fD3P1yxRg.jpeg"); // Get image using whatever

//   // 4. Send Tokens to the artist
//   MotorFlutter.to.sendTokens(exampleArtist.get<String>("did") ?? "", 40);
// }

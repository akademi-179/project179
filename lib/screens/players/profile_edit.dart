import 'package:flutter/material.dart';
import 'package:project179/models/player/player.dart';
import 'package:project179/widgets/Misc/on_back_pressed.dart';
import 'package:project179/utilities/user_preferences.dart';
import 'package:project179/widgets/appbar_widget.dart';
import 'package:project179/widgets/profile_widget.dart';
import 'package:project179/widgets/textfield_widget.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TestUser player = UserPreferences.myPlayer;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: yeniAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
                imagePath: player.imagePath,
                onClicked: () async {},
                isEdit: true),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Isim',
              text: player.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'E- Posta',
              text: player.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Hakkında',
              text: player.about,
              onChanged: (about) {},
              maxLines: 5,
            ),
            const SizedBox(height: 24),
          ],
        ),
      );

//     return WillPopScope(
//       onWillPop: (() => OnBackPressed.onBackPressed(context, "title", "content", "cancel", "Ok")) as Future<bool> Function(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Profile Edit"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text("Screen for players edit"),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: Text("Cancel")),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ElevatedButton(
//                       onPressed: () {
//                         print("Do some async task and pop");
//                         Navigator.pop(context);
//                       },
//                       child: Text("Save Changes")),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

}

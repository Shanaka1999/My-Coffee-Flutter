import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/menu_screen.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  // Define user information variables with initial values
  String name = "John Doe";
  String phone = "123-456-7890";
  String email = "johndoe@example.com";
  String address = "123 Main St, City, Country";

  // Define TextEditingControllers for each field
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  // Track the editing state for each field
  bool isNameEditing = false;
  bool isPhoneEditing = false;
  bool isEmailEditing = false;
  bool isAddressEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.brown), // Set the text color to brown
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.white, // Set the AppBar background color to white
        elevation: 0, // Set the elevation to 0 to make the shadow invisible
        iconTheme: IconThemeData(color: Colors.brown), // Set the back button color to brown
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            buildUserInfo("Name: ", name, nameController, isNameEditing, () {
              setState(() {
                isNameEditing = true;
              });
            }, () {
              setState(() {
                isNameEditing = false;
                name = nameController.text;
              });
            }),
            SizedBox(height: 10),
            buildUserInfo("Phone: ", phone, phoneController, isPhoneEditing, () {
              setState(() {
                isPhoneEditing = true;
              });
            }, () {
              setState(() {
                isPhoneEditing = false;
                phone = phoneController.text;
              });
            }),
            SizedBox(height: 10),
            buildUserInfo("Email: ", email, emailController, isEmailEditing, () {
              setState(() {
                isEmailEditing = true;
              });
            }, () {
              setState(() {
                isEmailEditing = false;
                email = emailController.text;
              });
            }),
            SizedBox(height: 10),
            buildUserInfo("Address: ", address, addressController, isAddressEditing, () {
              setState(() {
                isAddressEditing = true;
              });
            }, () {
              setState(() {
                isAddressEditing = false;
                address = addressController.text;
              });
            }),

            SizedBox(height:150),

            Padding(
              padding: const EdgeInsets.only(top :10.0, bottom:20, left:25,right:25),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuScreen(),
                          ),
                        );

                        // Add your button's action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Save changes",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget buildUserInfo(String label, String value, TextEditingController controller, bool isEditing, VoidCallback onEditPressed, VoidCallback onSavePressed) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              isEditing
                  ? TextField(
                controller: controller,
              )
                  : Text(
                value,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        IconButton(
          icon: isEditing ? Icon(Icons.check) : Icon(Icons.edit),
          onPressed: isEditing ? onSavePressed : onEditPressed,
        ),
      ],
    );
  }
}

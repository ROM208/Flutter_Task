import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> familyMembers = const [
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jName: 'Ojīsan',
      eName: 'Grand Father',
      sound: 'grandfather.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jName: 'Sobo',
      eName: 'Grand Mother',
      sound: 'grandmother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jName: 'Chichioya',
      eName: 'Father',
      sound: 'father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jName: 'Hahaoya',
      eName: 'Mother',
      sound: 'mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jName: 'Musuko',
      eName: 'Son',
      sound: 'son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jName: 'Musume',
      eName: 'Daughter',
      sound: 'daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jName: 'Nisan',
      eName: 'Older Brother',
      sound: 'olderbrother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jName: 'Ane',
      eName: 'Older Sister',
      sound: 'oldersister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jName: 'Otōto',
      eName: 'Younger Brother',
      sound: 'youngerbrother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jName: 'Imōto',
      eName: 'Younger Sister',
      sound: 'youngersister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Item(
            item: familyMembers[index],
            color: const Color(0xff558B37),
          );
        },
        itemCount: familyMembers.length,
      ),
    );
  }
}
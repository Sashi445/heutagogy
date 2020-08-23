
import 'package:heutagogy/models/item_class.dart';
import 'package:heutagogy/models/test_types.dart';

class Element extends Item{
  final String text;
  final String image;
  final String videoDescription;
  final String video;
  final SingleCorrectTest singleCorrectTest;
  final IdentifyAudioTest identifyAudioTest;
  final IdentifyPictureTest identifyPictureTest;
  final ImageQuestionTest imageQuestionTest;
  final DescribePictureTest describePictureTest;
  final MatchTextTest matchTextTest;

  Element({
    String title,
    String backGroundImage,
    this.text,
    this.image,
      this.videoDescription,
      this.video,
      this.singleCorrectTest,
      this.identifyAudioTest,
      this.identifyPictureTest,
      this.imageQuestionTest,
      this.describePictureTest,
      this.matchTextTest
  }) : super(
    title : title,
    backGroundImage : backGroundImage
  );

  factory Element.fromJson(Map<String, dynamic> json){
    return Element(
      title: json['title'],
      backGroundImage: json['backGroundImage'],
      text: json['text'],
      image: json['image'],
      video: json['video'],
      videoDescription: json['videoDescription'],
      singleCorrectTest: SingleCorrectTest.fromJson(json['singleCorrectTest']),
      identifyAudioTest: IdentifyAudioTest.fromJson(json['identifyAudioTest']),
      identifyPictureTest: IdentifyPictureTest.fromJson(json['identifyPictureTest']),
      describePictureTest: DescribePictureTest.fromJson(json['describePictureTest']),
      imageQuestionTest: ImageQuestionTest.fromJson(json['imageQuestionTest']),
      matchTextTest: MatchTextTest.fromJson(json['matchTextTest'])
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'title' : title,
      'backGroundImage' : backGroundImage,
      'text' : text,
      'image' : image,
      'video': video,
      'videoDescription' : videoDescription,
      'singleCorrectTest' : singleCorrectTest.toMap(),
      'identifyAudioTest' : identifyAudioTest.toMap(),
      'identifyPictureTest' : identifyPictureTest.toMap(),
      'describePictureTest' : describePictureTest.toMap(),
      'imageQuestionTest' : imageQuestionTest.toMap(),
      'matchTextTest' : matchTextTest.toMap()
    };
  }

}
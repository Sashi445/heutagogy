
import 'package:heutagogy/models/option_class.dart';
import 'package:heutagogy/models/question_class.dart';
import 'package:heutagogy/models/test_class.dart';

class SingleCorrectTest extends Test{
  final List<QuestionData> questions;
  SingleCorrectTest({String testName,
    String subject,
    String testDescription,
    this.questions}) : super(
    testName: testName,
    subject: subject,
    testDescription: testDescription
  );

  factory SingleCorrectTest.fromJson(Map<String, dynamic> json){
    List questionMaps = json['questions'];
    return SingleCorrectTest(
      testName: json['testName'],
      testDescription: json['testDescription'],
      subject: json['subject'],
      questions: questionMaps.map((e) => QuestionData.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName' : testName,
      'testDescription' :testDescription,
      'subject' : subject,
      'questions' : questions.map((e) => e.toMap()).toList()
    };
  }
}

class IdentifyAudioTest extends Test{
  final List<AudioPair> audios;
  IdentifyAudioTest({String testName, String subject, String testDescription, this.audios}) : super(
    testName : testName,
    subject: subject,
    testDescription : testDescription,
  );

  factory IdentifyAudioTest.fromJson(Map<String, dynamic> json){
    List audioMaps = json['audios'];
    return IdentifyAudioTest(
      testName: json['testName'],
      testDescription: json['testDescription'],
      subject: json['subject'],
      audios: audioMaps.map((e) => AudioPair.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName' : testName,
      'testDescription' : testDescription,
      'subject' : subject,
      'audios' : audios.map((e) => e.toMap()).toList()
    };
  }
}

class IdentifyPictureTest extends Test{
  final List<PicturePair> pictures;
  IdentifyPictureTest({String testName, String testDescription, String subject, this.pictures}) : super(
    testName : testName,
    testDescription : testDescription,
    subject: subject
  );

  factory IdentifyPictureTest.fromJson(Map<String, dynamic> json){
    List pictureMaps = json['pictures'];
    return IdentifyPictureTest(
      testDescription: json['testDescription'],
      testName: json['testName'],
      subject: json['subject'],
      pictures: pictureMaps.map((e) => PicturePair.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName' : testName,
      'testDescription' : testDescription,
      'subject' : subject,
      'pictures' : pictures.map((e) => e.toMap()).toList()
    };
  }

}

class ImageQuestionTest extends Test{
  final List<ImageQuestionData> questions;
  ImageQuestionTest({String testName, String testDescription, String subject, this.questions}) : super(
    testName : testName,
    testDescription : testDescription,
    subject: subject
  );

  factory ImageQuestionTest.fromJson(Map<String, dynamic> json){
    List imageQuestionMaps = json['questions'];
    return ImageQuestionTest(
      testName: json['testName'],
      testDescription: json['testDescription'],
      subject: json['subject'],
      questions: imageQuestionMaps.map((e) => ImageQuestionData.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName' : testName,
      'testDescription' : testDescription,
      'subject' : subject,
      'questions' : questions.map((e) => e.toMap()).toList()
    };
  }
}

class DescribePictureTest extends Test{
  final List<PictureTextInput> questions;
  DescribePictureTest({String testName, String testDescription, String subject, this.questions}) : super(
    testName : testName,
    testDescription : testDescription,
    subject : subject
  );

  factory DescribePictureTest.fromJson(Map<String, dynamic> json){
    List pictureTextMaps = json['questions'];
    return DescribePictureTest(
      testName: json['testName'],
      testDescription: json['testDescription'],
      subject: json['subject'],
      questions: pictureTextMaps.map((e) => PictureTextInput.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName': testName,
      'testDescription' :testDescription,
      'subject' : subject,
      'questions' : questions.map((e) => e.toMap()).toList()
    };
  }
}

class MatchTextTest extends Test{
  final List<TextPair> questions;
  MatchTextTest({String testName, String testDescription, String subject, this.questions}) : super(
    testName: testName,
    testDescription : testDescription,
    subject : subject
  );

  factory MatchTextTest.fromJson(Map<String, dynamic> json){
    List textPairMaps = json['questions'];
    return MatchTextTest(
      testName: json['testName'],
      testDescription: json['testDescription'],
      subject: json['subject'],
      questions: textPairMaps.map((e) => TextPair.fromJson(e))
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'testName' : testName,
      'testDescription' : testDescription,
      'subject' : subject,
      'questions' : questions.map((e) => e.toMap()).toList()
    };
  }
}
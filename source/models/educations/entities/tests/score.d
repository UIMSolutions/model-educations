module models.educations.entities.tests.score;

@safe:
import models.educations;

// Test scores for a Student Contact
class DTestScoreEntity : DOOPEntity {
  mixin(EntityThis!("TestScoreEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/TestScore
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/TestScore
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/TestScore
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/TestScore
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/TestScore
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/TestScore
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/TestScore
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/TestScore
        "ownerId": StringAttribute, //	Owner Id	higherEducation/TestScore
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/TestScore
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/TestScore
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/TestScore
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/TestScore
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/TestScore
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/TestScore
        "versionNumber": StringAttribute, //	Version Number	higherEducation/TestScore
        "testScoreId": StringAttribute, //	Unique identifier for entity instances	higherEducation/TestScore
        "stateCode": StringAttribute, //	Status of the Test Score	higherEducation/TestScore
        "stateCode_display": StringAttribute, //		higherEducation/TestScore
        "statusCode": StringAttribute, //	Reason for the status of the Test Score	higherEducation/TestScore
        "statusCode_display": StringAttribute, //		higherEducation/TestScore
        "name": StringAttribute, //	The name of the Test Score.	higherEducation/TestScore
        "actComposite": StringAttribute, //	ACT - Composite Score	higherEducation/TestScore
        "actELA": StringAttribute, //	ACT - ELA Score	higherEducation/TestScore
        "actEnglish": StringAttribute, //	ACT - English Score	higherEducation/TestScore
        "actEquivalentScore": StringAttribute, //	ACT equivalent score for a given SAT Score	higherEducation/TestScore
        "actMath": StringAttribute, //	ACT - Math Score	higherEducation/TestScore
        "actReading": StringAttribute, //	ACT - Reading Score	higherEducation/TestScore
        "actScience": StringAttribute, //	ACT - Science Score	higherEducation/TestScore
        "actSTEM": StringAttribute, //	ACT - STEM Score	higherEducation/TestScore
        "actWriting": StringAttribute, //	ACT - Writing Score	higherEducation/TestScore
        "alevelArt": StringAttribute, //	A-level Art	higherEducation/TestScore
        "GMATAnalyticalWriting": StringAttribute, //	GMAT - Analytical Writing Score	higherEducation/TestScore
        "GMATIntegratedReasoning": StringAttribute, //	GMAT - Integrated Reasoning Score	higherEducation/TestScore
        "GMATQuantitativeReasoning": StringAttribute, //	GMAT - Quantitative Reasoning Score	higherEducation/TestScore
        "GMATTotal": StringAttribute, //	GMAT - Total Score	higherEducation/TestScore
        "GMATVerbalReasoning": StringAttribute, //	GMAT - Verbal Reasoning Score	higherEducation/TestScore
        "GREAnalyticalReasoning": StringAttribute, //	GRE - Analytical Reasoning Score	higherEducation/TestScore
        "GREQuantitativeReasoning": StringAttribute, //	GRE - Quantitative Reasoning Score	higherEducation/TestScore
        "GRETotalScore": StringAttribute, //	GRE - Total Score	higherEducation/TestScore
        "GREVerbalReasoning": StringAttribute, //	GRE - Verbal Reasoning Score	higherEducation/TestScore
        "IELTSCEFR": StringAttribute, //	IELTS - CEFR	higherEducation/TestScore
        "IELTSCEFR_display": StringAttribute, //		higherEducation/TestScore
        "IELTSListening": StringAttribute, //	IELTS - Listening score	higherEducation/TestScore
        "IELTSOverallBandScore": StringAttribute, //	IELTS - Overall Band Score	higherEducation/TestScore
        "IELTSReading": StringAttribute, //	IELTS - Reading Score	higherEducation/TestScore
        "IELTSSpeakingScore": StringAttribute, //	IELTS - Speaking Score	higherEducation/TestScore
        "IELTSWriting": StringAttribute, //	IELTS - Writing Score	higherEducation/TestScore
        "SATEssayAnalysis": StringAttribute, //	SAT - SAT Essay - Analysis Score	higherEducation/TestScore
        "SATEssayReading": StringAttribute, //	SAT - SAT Essay - Reading Score	higherEducation/TestScore
        "SATEssayWriting": StringAttribute, //	SAT - SAT Essay - Writing Score	higherEducation/TestScore
        "SATEvidenceBasedReadingandWritingSection": StringAttribute, //	SAT - Evidence-Based Reading and Writing Section Score	higherEducation/TestScore
        "SATMathSection": StringAttribute, //	SAT - Math Section Score	higherEducation/TestScore
        "SATTotalScore": StringAttribute, //	SAT - Total Score	higherEducation/TestScore
        "studentID": StringAttribute, //	Lookup to the Student (Contact Id)	higherEducation/TestScore
        "testDate": StringAttribute, //	Date when test was taken	higherEducation/TestScore
        "testLocation": StringAttribute, //	Location where the test was taken	higherEducation/TestScore
        "testScoreValue": StringAttribute, //	Test Score Value	higherEducation/TestScore
        "testSource": StringAttribute, //	Source of Test score	higherEducation/TestScore
        "testSource_display": StringAttribute, //		higherEducation/TestScore
        "testTypeId": StringAttribute, //	List of test types	higherEducation/TestScore
        "toeflListeningSection": StringAttribute, //	TOEFL - Listening Section Score	higherEducation/TestScore
        "toeflReadingSection": StringAttribute, //	TOEFL - Reading Section Score	higherEducation/TestScore
        "toeflSpeakingSection": StringAttribute, //	TOEFL - Speaking Section Score	higherEducation/TestScore
        "toeflTotalScore": StringAttribute, //	TOEFL - Total Score	higherEducation/TestScore
        "toeflWritingSection": StringAttribute, //	TOEFL - Writing Section Score	higherEducation/TestScore      
      ])
      .registerPath("education_test.scores");
  }
}
mixin(EntityCalls!("TestScoreEntity"));


version(test_model_education) {
  unittest {
    assert(TestScoreEntity);

    auto entity = TestScoreEntity;
  }
}
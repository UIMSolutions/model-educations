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
        "createdOn": StringAttribute, //	Date and time when the record was created.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerId": StringAttribute, //	Owner Id	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "versionNumber": StringAttribute, //	Version Number	
        "testScoreId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Test Score	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Test Score	
        "statusCode_display": StringAttribute, //		
        "name": StringAttribute, //	The name of the Test Score.	
        "actComposite": StringAttribute, //	ACT - Composite Score	
        "actELA": StringAttribute, //	ACT - ELA Score	
        "actEnglish": StringAttribute, //	ACT - English Score	
        "actEquivalentScore": StringAttribute, //	ACT equivalent score for a given SAT Score	
        "actMath": StringAttribute, //	ACT - Math Score	
        "actReading": StringAttribute, //	ACT - Reading Score	
        "actScience": StringAttribute, //	ACT - Science Score	
        "actSTEM": StringAttribute, //	ACT - STEM Score	
        "actWriting": StringAttribute, //	ACT - Writing Score	
        "alevelArt": StringAttribute, //	A-level Art	
        "GMATAnalyticalWriting": StringAttribute, //	GMAT - Analytical Writing Score	
        "GMATIntegratedReasoning": StringAttribute, //	GMAT - Integrated Reasoning Score	
        "GMATQuantitativeReasoning": StringAttribute, //	GMAT - Quantitative Reasoning Score	
        "GMATTotal": StringAttribute, //	GMAT - Total Score	
        "GMATVerbalReasoning": StringAttribute, //	GMAT - Verbal Reasoning Score	
        "GREAnalyticalReasoning": StringAttribute, //	GRE - Analytical Reasoning Score	
        "GREQuantitativeReasoning": StringAttribute, //	GRE - Quantitative Reasoning Score	
        "GRETotalScore": StringAttribute, //	GRE - Total Score	
        "GREVerbalReasoning": StringAttribute, //	GRE - Verbal Reasoning Score	
        "IELTSCEFR": StringAttribute, //	IELTS - CEFR	
        "IELTSCEFR_display": StringAttribute, //		
        "IELTSListening": StringAttribute, //	IELTS - Listening score	
        "IELTSOverallBandScore": StringAttribute, //	IELTS - Overall Band Score	
        "IELTSReading": StringAttribute, //	IELTS - Reading Score	
        "IELTSSpeakingScore": StringAttribute, //	IELTS - Speaking Score	
        "IELTSWriting": StringAttribute, //	IELTS - Writing Score	
        "SATEssayAnalysis": StringAttribute, //	SAT - SAT Essay - Analysis Score	
        "SATEssayReading": StringAttribute, //	SAT - SAT Essay - Reading Score	
        "SATEssayWriting": StringAttribute, //	SAT - SAT Essay - Writing Score	
        "SATEvidenceBasedReadingandWritingSection": StringAttribute, //	SAT - Evidence-Based Reading and Writing Section Score	
        "SATMathSection": StringAttribute, //	SAT - Math Section Score	
        "SATTotalScore": StringAttribute, //	SAT - Total Score	
        "studentID": StringAttribute, //	Lookup to the Student (Contact Id)	
        "testDate": StringAttribute, //	Date when test was taken	
        "testLocation": StringAttribute, //	Location where the test was taken	
        "testScoreValue": StringAttribute, //	Test Score Value	
        "testSource": StringAttribute, //	Source of Test score	
        "testSource_display": StringAttribute, //		
        "testTypeId": StringAttribute, //	List of test types	
        "toeflListeningSection": StringAttribute, //	TOEFL - Listening Section Score	
        "toeflReadingSection": StringAttribute, //	TOEFL - Reading Section Score	
        "toeflSpeakingSection": StringAttribute, //	TOEFL - Speaking Section Score	
        "toeflTotalScore": StringAttribute, //	TOEFL - Total Score	
        "toeflWritingSection": StringAttribute, //	TOEFL - Writing Section Score	      
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
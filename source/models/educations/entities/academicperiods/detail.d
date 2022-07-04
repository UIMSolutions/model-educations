module models.educations.entities.academicperiods.detail;

@safe:
import models.educations;

// Status between student and their academic periods.
// name = name of the custom entity.	        ": StringAttribute, //
class DAcademicPeriodDetailEntity : DOOPEntity {
  mixin(EntityThis!("AcademicPeriodDetailEntity"));
  
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
        "academicPeriodDetailsId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Academic Period Detail	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Academic Period Detail	
        "statusCode_display": StringAttribute, //		
        "academicPeriodID": StringAttribute, //		
        "attendanceType": StringAttribute, //	The enrollment attendance type for the student.	
        "attendanceType_display": StringAttribute, //		
        "creditLoad": StringAttribute, //	Assigned credit load for academic period	
        "educationLevelId": StringAttribute, //	The education level for the student.	
        "employedHoursPerWeek": StringAttribute, //	Employed for how many hours/week?	
        "isAthlete": StringAttribute, //	Athlete	
        "isEmployed": StringAttribute, //	Employed	
        "isInternationalStudent": StringAttribute, //	International Student	
        "ISIRonFIle": StringAttribute, //	ISIR received and on file?	
        "isTransferStudent": StringAttribute, //	Transfer Student	
        "majorCreditEarned": StringAttribute, //	Major Credit Earned	
        "majorGPA": StringAttribute, //	Major GPA	
        "midTermDeficiency": StringAttribute, //	Mid-Term Deficiency	
        "programId": StringAttribute, //	The program for the student.	
        "studentId": StringAttribute, //	Lookup to Student (Contact).	
        "termCreditsEarned": StringAttribute, //	Term Credits Earned	
        "termGPA": StringAttribute, //	Term GPA	

      ])
      .registerPath("education_academicperiods.details");
  }
}
mixin(EntityCalls!("AcademicPeriodDetailEntity"));


version(test_model_education) {
  unittest {
    assert(AcademicPeriodDetailEntity);

    auto entity = AcademicPeriodDetailEntity;
  }
}
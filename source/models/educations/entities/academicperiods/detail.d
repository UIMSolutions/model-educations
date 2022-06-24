module models.educations.entities.academicperiods.detail;

@safe:
import models.educations;

// Status between student and their academic periods.
class DAcademicPeriodDetailEntity : DOOPEntity {
  mixin(EntityThis!("AcademicPeriodDetailEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/AcademicPeriodDetail
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/AcademicPeriodDetail
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/AcademicPeriodDetail
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/AcademicPeriodDetail
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/AcademicPeriodDetail
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/AcademicPeriodDetail
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/AcademicPeriodDetail
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/AcademicPeriodDetail
        "ownerId": StringAttribute, //	Owner Id	higherEducation/AcademicPeriodDetail
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/AcademicPeriodDetail
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/AcademicPeriodDetail
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/AcademicPeriodDetail
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/AcademicPeriodDetail
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/AcademicPeriodDetail
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/AcademicPeriodDetail
        "versionNumber": StringAttribute, //	Version Number	higherEducation/AcademicPeriodDetail
        "academicPeriodDetailsId": StringAttribute, //	Unique identifier for entity instances	higherEducation/AcademicPeriodDetail
        "stateCode": StringAttribute, //	Status of the Academic Period Detail	higherEducation/AcademicPeriodDetail
        "stateCode_display": StringAttribute, //		higherEducation/AcademicPeriodDetail
        "statusCode": StringAttribute, //	Reason for the status of the Academic Period Detail	higherEducation/AcademicPeriodDetail
        "statusCode_display": StringAttribute, //		higherEducation/AcademicPeriodDetail
        "name": StringAttribute, //	The name of the custom entity.	        higherEducation/AcademicPeriodDetail": StringAttribute, //
        "academicPeriodID": StringAttribute, //		higherEducation/AcademicPeriodDetail
        "attendanceType": StringAttribute, //	The enrollment attendance type for the student.	higherEducation/AcademicPeriodDetail
        "attendanceType_display": StringAttribute, //		higherEducation/AcademicPeriodDetail
        "creditLoad": StringAttribute, //	Assigned credit load for academic period	higherEducation/AcademicPeriodDetail
        "educationLevelId": StringAttribute, //	The education level for the student.	higherEducation/AcademicPeriodDetail
        "employedHoursPerWeek": StringAttribute, //	Employed for how many hours/week?	higherEducation/AcademicPeriodDetail
        "isAthlete": StringAttribute, //	Athlete	higherEducation/AcademicPeriodDetail
        "isEmployed": StringAttribute, //	Employed	higherEducation/AcademicPeriodDetail
        "isInternationalStudent": StringAttribute, //	International Student	higherEducation/AcademicPeriodDetail
        "ISIRonFIle": StringAttribute, //	ISIR received and on file?	higherEducation/AcademicPeriodDetail
        "isTransferStudent": StringAttribute, //	Transfer Student	higherEducation/AcademicPeriodDetail
        "majorCreditEarned": StringAttribute, //	Major Credit Earned	higherEducation/AcademicPeriodDetail
        "majorGPA": StringAttribute, //	Major GPA	higherEducation/AcademicPeriodDetail
        "midTermDeficiency": StringAttribute, //	Mid-Term Deficiency	higherEducation/AcademicPeriodDetail
        "programId": StringAttribute, //	The program for the student.	higherEducation/AcademicPeriodDetail
        "studentId": StringAttribute, //	Lookup to Student (Contact).	higherEducation/AcademicPeriodDetail
        "termCreditsEarned": StringAttribute, //	Term Credits Earned	higherEducation/AcademicPeriodDetail
        "termGPA": StringAttribute, //	Term GPA	higherEducation/AcademicPeriodDetail

      ])
      .registerPath("education_academicperioddetails");
  }
}
mixin(EntityCalls!("AcademicPeriodDetailEntity"));


version(test_model_education) {
  unittest {
    assert(AcademicPeriodDetailEntity);

    auto entity = AcademicPeriodDetailEntity;
  }
}
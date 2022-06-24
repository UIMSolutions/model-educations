module models.educations.entities.academicperiods.academicperiod;

@safe:
import models.educations;

// The periods of time in which courses are offered by the institution, such as a term or semester.
class DAcademicPeriodEntity : DOOPEntity {
  mixin(EntityThis!("AcademicPeriodEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/AcademicPeriod
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/AcademicPeriod
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/AcademicPeriod
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/AcademicPeriod
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/AcademicPeriod
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/AcademicPeriod
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/AcademicPeriod
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/AcademicPeriod
        "ownerId": StringAttribute, //	Owner Id	higherEducation/AcademicPeriod
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/AcademicPeriod
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/AcademicPeriod
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/AcademicPeriod
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/AcademicPeriod
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/AcademicPeriod
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/AcademicPeriod
        "versionNumber": StringAttribute, //	Version Number	higherEducation/AcademicPeriod
        "academicPeriodId": StringAttribute, //	Unique identifier for entity instances	higherEducation/AcademicPeriod
        "stateCode": StringAttribute, //	Status of the Academic Period	higherEducation/AcademicPeriod
        "stateCode_display": StringAttribute, //		higherEducation/AcademicPeriod
        "statusCode": StringAttribute, //	Reason for the status of the Academic Period	higherEducation/AcademicPeriod
        "statusCode_display": StringAttribute, //		higherEducation/AcademicPeriod
        "name": StringAttribute, //	The name of the academic period.	higherEducation/AcademicPeriod
        "code": StringAttribute, //	Abbreviated code for the academic period.	higherEducation/AcademicPeriod
        "endDate": StringAttribute, //		higherEducation/AcademicPeriod
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/AcademicPeriod
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/AcademicPeriod
        "externalSourceSystem_display": StringAttribute, //		higherEducation/AcademicPeriod
        "startDate": StringAttribute //		higherEducation/AcademicPeriod
      ])
      .registerPath("education_academicperiods");
  }
}
mixin(EntityCalls!("AcademicPeriodEntity"));


version(test_model_education) {
  unittest {
    assert(AcademicPeriodEntity);

    auto entity = AcademicPeriodEntity;
  }
}
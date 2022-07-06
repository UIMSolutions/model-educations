module models.educations.entities.academicperiods.academicperiod;

@safe:
import models.educations;

// The periods of time in which courses are offered by the institution, such as a term or semester.
// name = name of the academic period.	
class DAcademicPeriodEntity : DOOPEntity {
  mixin(EntityThis!("AcademicPeriodEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
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
        "academicPeriodId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Academic Period	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Academic Period	
        "statusCode_display": StringAttribute, //		
        "code": StringAttribute, //	Abbreviated code for the academic period.	
        "endDate": StringAttribute, //		
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "startDate": StringAttribute //		
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
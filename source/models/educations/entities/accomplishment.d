module models.educations.entities.accomplishment;

@safe:
import models.educations;

// 	This entity is used to store the accomplishments of a particular student
class DAccomplishmentEntity : DOOPEntity {
  mixin(EntityThis!("AccomplishmentEntity"));
  
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
        "accomplishmentsId": StringAttribute, //	Unique identifier for entity instances	
        "accomplishmentType": StringAttribute, //		
        "accomplishmentType_display": StringAttribute, //		
        "description": StringAttribute, //	Description of the Accomplishment	
        // "name": StringAttribute, //	Required name field	
        "studentId": StringAttribute, //	Field which identifies the student who completed the project	
        "stateCode": StringAttribute, //	Status of the Accomplishments	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Accomplishments	
        "statusCode_display": StringAttribute, //		
      ])
      .registerPath("education_previous.educations");
  }
}
mixin(EntityCalls!("AccomplishmentEntity"));

version(test_model_education) {
  unittest {
    assert(AccomplishmentEntity);

    auto entity = AccomplishmentEntity;
  }
}
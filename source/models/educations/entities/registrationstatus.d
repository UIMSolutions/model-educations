module models.educations.entities.registrationstatus;

@safe:
import models.educations;

// The master list of registration statuses tracked by the institution. The registration status is associated to the student course history.
// name = name of the custom entity.
class DRegistrationStatusEntity : DOOPEntity {
  mixin(EntityThis!("RegistrationStatusEntity"));
  
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
        "registrationStatusId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Registration Status	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Registration Status	
        "statusCode_display": StringAttribute, //		        	
        "code": StringAttribute, //		
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
      ])
      .registerPath("education_registration.statuses");
  }
}
mixin(EntityCalls!("RegistrationStatusEntity"));

version(test_model_education) {
  unittest {
    assert(RegistrationStatusEntity);

    auto entity = RegistrationStatusEntity;
  }
}
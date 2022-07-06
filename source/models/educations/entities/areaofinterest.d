module models.educations.entities.areaofinterest;

@safe:
import models.educations;

// The master list of all area of studies offered by an institution. Areas of studies are more specific program offerings, such as Master's of Public Administration - Emergency Management.
// name = Area of Interest instance name	
class DAreaOfInterestEntity : DOOPEntity {
  mixin(EntityThis!("AreaOfInterestEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        OwnerIdAttribute, //	Owner Id	
      ])
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "areaOfInterestId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Area of Interest	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Area of Interest	
        "statusCode_display": StringAttribute, //		
        "code": StringAttribute, //	Abbreviated code for the area of interest.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
      ])
      .registerPath("education_areaofinterests");
  }
}
mixin(EntityCalls!("AreaOfInterestEntity"));

version(test_model_education) {
  unittest {
    assert(AreaOfInterestEntity);

    auto entity = AreaOfInterestEntity;
  }
}

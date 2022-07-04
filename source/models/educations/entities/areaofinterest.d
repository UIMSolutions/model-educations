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
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/AreaOfInterest
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/AreaOfInterest
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/AreaOfInterest
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/AreaOfInterest
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/AreaOfInterest
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/AreaOfInterest
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/AreaOfInterest
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/AreaOfInterest
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/AreaOfInterest
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/AreaOfInterest
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/AreaOfInterest
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/AreaOfInterest
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/AreaOfInterest
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/AreaOfInterest
        "areaOfInterestId": StringAttribute, //	Unique identifier for entity instances	higherEducation/AreaOfInterest
        "stateCode": StringAttribute, //	Status of the Area of Interest	higherEducation/AreaOfInterest
        "stateCode_display": StringAttribute, //		higherEducation/AreaOfInterest
        "statusCode": StringAttribute, //	Reason for the status of the Area of Interest	higherEducation/AreaOfInterest
        "statusCode_display": StringAttribute, //		higherEducation/AreaOfInterest
        "code": StringAttribute, //	Abbreviated code for the area of interest.	higherEducation/AreaOfInterest
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/AreaOfInterest
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/AreaOfInterest
        "externalSourceSystem_display": StringAttribute, //		higherEducation/AreaOfInterest
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

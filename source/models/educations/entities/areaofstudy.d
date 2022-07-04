module models.educations.entities.areaofstudy;

@safe:
import models.educations;

// The master list of all area of studies offered by an institution. Areas of studies are more specific program offerings, such as Master's of Public Administration - Emergency Management.
// name = name of the custom entity.	
class DAreaOfStudyEntity : DOOPEntity {
  mixin(EntityThis!("AreaOfStudyEntity"));
  
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
        "areaOfStudyId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Area of Study	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Area of Study	
        "statusCode_display": StringAttribute, //		
        "code": StringAttribute, //	Abbreviated code for the area of study.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "minimumRequiredGPA": StringAttribute, //	Minimum Required GPA	
        "programTypeId": StringAttribute, //	The program type for the area of study, such as major or concentration.	
        "requiredCredits": StringAttribute, //	The number of credits required to be completed by a student pursuing the area of study.	
      ])
      .registerPath("education_areaofstudies");
  }
}
mixin(EntityCalls!("AreaOfStudyEntity"));


version(test_model_education) {
  unittest {
    assert(AreaOfStudyEntity);

    auto entity = AreaOfStudyEntity;
  }
}
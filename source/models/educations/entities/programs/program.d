module models.educations.entities.programs.program;

@safe:
import models.educations;

// The master list of all program levels offered by the institution.
// name = Program Name	
class DProgramEntity : DOOPEntity {
  mixin(EntityThis!("ProgramEntity"));
  
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
        "programId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Program	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Program	
        "statusCode_display": StringAttribute, //		
        "code": StringAttribute, //	Program Code	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
      ])
      .registerPath("education_programs");
  }
}
mixin(EntityCalls!("ProgramEntity"));

version(test_model_education) {
  unittest {
    assert(ProgramEntity);

    auto entity = ProgramEntity;
  }
}

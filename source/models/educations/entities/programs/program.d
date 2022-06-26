module models.educations.entities.programs.program;

@safe:
import models.educations;

// The master list of all program levels offered by the institution.
class DProgramEntity : DOOPEntity {
  mixin(EntityThis!("ProgramEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Program
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Program
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Program
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Program
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Program
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Program
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Program
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Program
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Program
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Program
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Program
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Program
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Program
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Program
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Program
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Program
        "programId": StringAttribute, //	Unique identifier for entity instances	higherEducation/Program
        "stateCode": StringAttribute, //	Status of the Program	higherEducation/Program
        "stateCode_display": StringAttribute, //		higherEducation/Program
        "statusCode": StringAttribute, //	Reason for the status of the Program	higherEducation/Program
        "statusCode_display": StringAttribute, //		higherEducation/Program
        "name": StringAttribute, //	Program Name	higherEducation/Program
        "code": StringAttribute, //	Program Code	higherEducation/Program
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/Program
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/Program
        "externalSourceSystem_display": StringAttribute, //		higherEducation/Program
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
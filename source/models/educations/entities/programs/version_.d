module models.educations.entities.programs.version_;

@safe:
import models.educations;

// The master list of all program versions defined by the institution.
class DProgramVersionEntity : DOOPEntity {
  mixin(EntityThis!("ProgramVersionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/ProgramVersion
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/ProgramVersion
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/ProgramVersion
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/ProgramVersion
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/ProgramVersion
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ProgramVersion
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ProgramVersion
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ProgramVersion
        "ownerId": StringAttribute, //	Owner Id	higherEducation/ProgramVersion
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/ProgramVersion
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/ProgramVersion
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/ProgramVersion
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/ProgramVersion
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ProgramVersion
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ProgramVersion
        "versionNumber": StringAttribute, //	Version Number	higherEducation/ProgramVersion
        "programVersionId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ProgramVersion
        "stateCode": StringAttribute, //	Status of the Program Version	higherEducation/ProgramVersion
        "stateCode_display": StringAttribute, //		higherEducation/ProgramVersion
        "statusCode": StringAttribute, //	Reason for the status of the Program Version	higherEducation/ProgramVersion
        "statusCode_display": StringAttribute, //		higherEducation/ProgramVersion
        "name": StringAttribute, //	Program Version Name	higherEducation/ProgramVersion
        "code": StringAttribute, //	Abbreviated code for the program version.	higherEducation/ProgramVersion
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/ProgramVersion
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/ProgramVersion
        "externalSourceSystem_display": StringAttribute, //		higherEducation/ProgramVersion
        "programId": StringAttribute, //	Lookup to the program.	higherEducation/ProgramVersion
        "programLevelId": StringAttribute, //	Link to Program Level entity	higherEducation/ProgramVersion

      ])
      .registerPath("education_program.versions");
  }
}
mixin(EntityCalls!("ProgramVersionEntity"));


version(test_model_education) {
  unittest {
    assert(ProgramVersionEntity);

    auto entity = ProgramVersionEntity;
  }
}
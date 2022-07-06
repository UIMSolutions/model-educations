module models.educations.entities.programs.level;

@safe:
import models.educations;

// Collection of all Program Levels offered by the institution
class DProgramLevelEntity : DOOPEntity {
  mixin(EntityThis!("ProgramLevelEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/ProgramLevel
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ProgramLevel
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ProgramLevel
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ProgramLevel
        "ownerId": StringAttribute, //	Owner Id	higherEducation/ProgramLevel
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/ProgramLevel
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/ProgramLevel
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/ProgramLevel
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/ProgramLevel
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ProgramLevel
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ProgramLevel
        "versionNumber": StringAttribute, //	Version Number	higherEducation/ProgramLevel
        "programLevelId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ProgramLevel
        "stateCode": StringAttribute, //	Status of the Program Level	higherEducation/ProgramLevel
        "stateCode_display": StringAttribute, //		higherEducation/ProgramLevel
        "statusCode": StringAttribute, //	Reason for the status of the Program Level	higherEducation/ProgramLevel
        "statusCode_display": StringAttribute, //		higherEducation/ProgramLevel
        "name": StringAttribute, //	Program Level Name	higherEducation/ProgramLevel
        "code": StringAttribute, //	Program Level Code	higherEducation/ProgramLevel
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/ProgramLevel
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/ProgramLevel
        "externalSourceSystem_display": StringAttribute, //		higherEducation/ProgramLevel      
      ])
      .registerPath("education_program.levels");
  }
}
mixin(EntityCalls!("ProgramLevelEntity"));


version(test_model_education) {
  unittest {
    assert(ProgramLevelEntity);

    auto entity = ProgramLevelEntity;
  }
}
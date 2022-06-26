module models.educations.entities.programs.versiondetail;

@safe:
import models.educations;

// The master list of program versions start dates defined by the institution.
class DProgramVersionDetailEntity : DOOPEntity {
  mixin(EntityThis!("ProgramVersionDetailEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAtribute, //	Date and time when the record was created.	higherEducation/ProgramVersionDetail
        "createdBy": StringAtribute, //	Shows who created the record.	higherEducation/ProgramVersionDetail
        "modifiedOn": StringAtribute, //	Date and time when the record was modified.	higherEducation/ProgramVersionDetail
        "modifiedBy": StringAtribute, //	Shows who last updated the record.	higherEducation/ProgramVersionDetail
        "createdOnBehalfBy": StringAtribute, //	Shows who created the record on behalf of another user.	higherEducation/ProgramVersionDetail
        "modifiedOnBehalfBy": StringAtribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ProgramVersionDetail
        "overriddenCreatedOn": StringAtribute, //	Date and time that the record was migrated.	higherEducation/ProgramVersionDetail
        "importSequenceNumber": StringAtribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ProgramVersionDetail
        "ownerId": StringAtribute, //	Owner Id	higherEducation/ProgramVersionDetail
        "ownerIdType": StringAtribute, //	The type of owner, either User or Team.	higherEducation/ProgramVersionDetail
        "owningBusinessUnit": StringAtribute, //	Unique identifier for the business unit that owns the record	higherEducation/ProgramVersionDetail
        "owningUser": StringAtribute, //	Unique identifier of the user that owns the activity.	higherEducation/ProgramVersionDetail
        "owningTeam": StringAtribute, //	Unique identifier for the team that owns the record.	higherEducation/ProgramVersionDetail
        "timeZoneRuleVersionNumber": StringAtribute, //	For internal use only.	higherEducation/ProgramVersionDetail
        "UTCConversionTimeZoneCode": StringAtribute, //	Time zone code that was in use when the record was created.	higherEducation/ProgramVersionDetail
        "versionNumber": StringAtribute, //	Version Number	higherEducation/ProgramVersionDetail
        "programVersionDetailId": StringAtribute, //	Unique identifier for entity instances	higherEducation/ProgramVersionDetail
        "stateCode": StringAtribute, //	Status of the Program Version Detail	higherEducation/ProgramVersionDetail
        "stateCode_display": StringAtribute, //		higherEducation/ProgramVersionDetail
        "statusCode": StringAtribute, //	Reason for the status of the Program Version Detail	higherEducation/ProgramVersionDetail
        "statusCode_display": StringAtribute, //		higherEducation/ProgramVersionDetail
        "name": StringAtribute, //	Program Version Start Date Code	higherEducation/ProgramVersionDetail
        "code": StringAtribute, //	Registration code.	higherEducation/ProgramVersionDetail
        "expectedGraduationDate": StringAtribute, //	The expected graduation date for the program version start date instance.	higherEducation/ProgramVersionDetail
        "externalIdentifier": StringAtribute, //	External Identifier	higherEducation/ProgramVersionDetail
        "externalSourceSystem": StringAtribute, //	External Source System	higherEducation/ProgramVersionDetail
        "externalSourceSystem_display": StringAtribute, //		higherEducation/ProgramVersionDetail
        "midpointDate": StringAtribute, //	Midpoint Date	higherEducation/ProgramVersionDetail
        "mustGraduateBefore": StringAtribute, //	Must Graduate Before	higherEducation/ProgramVersionDetail
        "programVersionId": StringAtribute, //	Lookup to the program version.	higherEducation/ProgramVersionDetail
        "startDate": StringAtribute, //	Start Date	higherEducation/ProgramVersionDetail
      ])
      .registerPath("education_program.version.details");
  }
}
mixin(EntityCalls!("ProgramVersionDetailEntity"));


version(test_model_education) {
  unittest {
    assert(ProgramVersionDetailEntity);

    auto entity = ProgramVersionDetailEntity;
  }
}
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
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/ProgramVersionDetail
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ProgramVersionDetail
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ProgramVersionDetail
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ProgramVersionDetail
        "ownerId": StringAttribute, //	Owner Id	higherEducation/ProgramVersionDetail
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/ProgramVersionDetail
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/ProgramVersionDetail
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/ProgramVersionDetail
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/ProgramVersionDetail
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ProgramVersionDetail
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ProgramVersionDetail
        "versionNumber": StringAttribute, //	Version Number	higherEducation/ProgramVersionDetail
        "programVersionDetailId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ProgramVersionDetail
        "stateCode": StringAttribute, //	Status of the Program Version Detail	higherEducation/ProgramVersionDetail
        "stateCode_display": StringAttribute, //		higherEducation/ProgramVersionDetail
        "statusCode": StringAttribute, //	Reason for the status of the Program Version Detail	higherEducation/ProgramVersionDetail
        "statusCode_display": StringAttribute, //		higherEducation/ProgramVersionDetail
        "name": StringAttribute, //	Program Version Start Date Code	higherEducation/ProgramVersionDetail
        "code": StringAttribute, //	Registration code.	higherEducation/ProgramVersionDetail
        "expectedGraduationDate": StringAttribute, //	The expected graduation date for the program version start date instance.	higherEducation/ProgramVersionDetail
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/ProgramVersionDetail
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/ProgramVersionDetail
        "externalSourceSystem_display": StringAttribute, //		higherEducation/ProgramVersionDetail
        "midpointDate": StringAttribute, //	Midpoint Date	higherEducation/ProgramVersionDetail
        "mustGraduateBefore": StringAttribute, //	Must Graduate Before	higherEducation/ProgramVersionDetail
        "programVersionId": StringAttribute, //	Lookup to the program version.	higherEducation/ProgramVersionDetail
        "startDate": StringAttribute, //	Start Date	higherEducation/ProgramVersionDetail
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
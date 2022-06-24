module models.educations.entities.educationlevel;

@safe:
import models.educations;

// The master list of all education levels mapped in the external system, such as Associate of Arts, Bachelor, Certificate.
class DEducationLevelEntity : DOOPEntity {
  mixin(EntityThis!("EducationLevelEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/EducationLevel
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/EducationLevel
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/EducationLevel
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/EducationLevel
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/EducationLevel
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/EducationLevel
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/EducationLevel
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/EducationLevel
        "ownerId": StringAttribute, //	Owner Id	higherEducation/EducationLevel
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/EducationLevel
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/EducationLevel
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/EducationLevel
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/EducationLevel
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/EducationLevel
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/EducationLevel
        "versionNumber": StringAttribute, //	Version Number	higherEducation/EducationLevel
        "educationLevelId": StringAttribute, //	Unique identifier for entity instances	higherEducation/EducationLevel
        "stateCode": StringAttribute, //	Status of the Education Level	higherEducation/EducationLevel
        "stateCode_display": StringAttribute, //		higherEducation/EducationLevel
        "statusCode": StringAttribute, //	Reason for the status of the Education Level	higherEducation/EducationLevel
        "statusCode_display": StringAttribute, //		higherEducation/EducationLevel
        "name": StringAttribute, //	Education Level instance name	higherEducation/EducationLevel
        "code": StringAttribute, //	Education Level Code	higherEducation/EducationLevel
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/EducationLevel
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/EducationLevel
        "externalSourceSystem_display": StringAttribute, //		higherEducation/EducationLevel
      ])
      .registerPath("education_educationlevels");
  }
}
mixin(EntityCalls!("EducationLevelEntity"));

version(test_model_education) {
  unittest {
    assert(EducationLevelEntity);

    auto entity = EducationLevelEntity;
  }
}
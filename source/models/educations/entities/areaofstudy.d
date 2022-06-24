module models.educations.entities.areaofstudy;

@safe:
import models.educations;

// The master list of all area of studies offered by an institution. Areas of studies are more specific program offerings, such as Master's of Public Administration - Emergency Management.
class DAreaOfStudyEntity : DOOPEntity {
  mixin(EntityThis!("AreaOfStudyEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/AreaOfStudy
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/AreaOfStudy
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/AreaOfStudy
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/AreaOfStudy
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/AreaOfStudy
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/AreaOfStudy
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/AreaOfStudy
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/AreaOfStudy
        "ownerId": StringAttribute, //	Owner Id	higherEducation/AreaOfStudy
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/AreaOfStudy
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/AreaOfStudy
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/AreaOfStudy
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/AreaOfStudy
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/AreaOfStudy
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/AreaOfStudy
        "versionNumber": StringAttribute, //	Version Number	higherEducation/AreaOfStudy
        "areaOfStudyId": StringAttribute, //	Unique identifier for entity instances	higherEducation/AreaOfStudy
        "stateCode": StringAttribute, //	Status of the Area of Study	higherEducation/AreaOfStudy
        "stateCode_display": StringAttribute, //		higherEducation/AreaOfStudy
        "statusCode": StringAttribute, //	Reason for the status of the Area of Study	higherEducation/AreaOfStudy
        "statusCode_display": StringAttribute, //		higherEducation/AreaOfStudy
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/AreaOfStudy
        "code": StringAttribute, //	Abbreviated code for the area of study.	higherEducation/AreaOfStudy
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/AreaOfStudy
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/AreaOfStudy
        "externalSourceSystem_display": StringAttribute, //		higherEducation/AreaOfStudy
        "minimumRequiredGPA": StringAttribute, //	Minimum Required GPA	higherEducation/AreaOfStudy
        "programTypeId": StringAttribute, //	The program type for the area of study, such as major or concentration.	higherEducation/AreaOfStudy
        "requiredCredits": StringAttribute, //	The number of credits required to be completed by a student pursuing the area of study.	higherEducation/AreaOfStudy
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
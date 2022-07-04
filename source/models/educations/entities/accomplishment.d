module models.educations.entities.accomplishment;

@safe:
import models.educations;

// 	This entity is used to store the accomplishments of a particular student
class DAccomplishmentEntity : DOOPEntity {
  mixin(EntityThis!("AccomplishmentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Accomplishments
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Accomplishments
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Accomplishments
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Accomplishments
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Accomplishments
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Accomplishments
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Accomplishments
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Accomplishments
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Accomplishments
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Accomplishments
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Accomplishments
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Accomplishments
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Accomplishments
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Accomplishments
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Accomplishments
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Accomplishments
        "accomplishmentsId": StringAttribute, //	Unique identifier for entity instances	higherEducation/Accomplishments
        "accomplishmentType": StringAttribute, //		higherEducation/Accomplishments
        "accomplishmentType_display": StringAttribute, //		higherEducation/Accomplishments
        "description": StringAttribute, //	Description of the Accomplishment	higherEducation/Accomplishments
        // "name": StringAttribute, //	Required name field	higherEducation/Accomplishments
        "studentId": StringAttribute, //	Field which identifies the student who completed the project	higherEducation/Accomplishments
        "stateCode": StringAttribute, //	Status of the Accomplishments	higherEducation/Accomplishments
        "stateCode_display": StringAttribute, //		higherEducation/Accomplishments
        "statusCode": StringAttribute, //	Reason for the status of the Accomplishments	higherEducation/Accomplishments
        "statusCode_display": StringAttribute, //		higherEducation/Accomplishments
      ])
      .registerPath("education_previous.educations");
  }
}
mixin(EntityCalls!("AccomplishmentEntity"));

version(test_model_education) {
  unittest {
    assert(AccomplishmentEntity);

    auto entity = AccomplishmentEntity;
  }
}
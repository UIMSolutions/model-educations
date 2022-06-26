module models.educations.entities.students.status;

@safe:
import models.educations;

// The master list of student statuses defined by the institution.
class DStudentStatusEntity : DOOPEntity {
  mixin(EntityThis!("StudentStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/StudentStatus
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/StudentStatus
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/StudentStatus
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/StudentStatus
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/StudentStatus
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/StudentStatus
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/StudentStatus
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/StudentStatus
        "ownerId": StringAttribute, //	Owner Id	higherEducation/StudentStatus
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/StudentStatus
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/StudentStatus
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/StudentStatus
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/StudentStatus
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/StudentStatus
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/StudentStatus
        "versionNumber": StringAttribute, //	Version Number	higherEducation/StudentStatus
        "studentStatusId": StringAttribute, //	Unique identifier for entity instances	higherEducation/StudentStatus
        "stateCode": StringAttribute, //	Status of the Student Status	higherEducation/StudentStatus
        "stateCode_display": StringAttribute, //		higherEducation/StudentStatus
        "statusCode": StringAttribute, //	Reason for the status of the Student Status	higherEducation/StudentStatus
        "statusCode_display": StringAttribute, //		higherEducation/StudentStatus
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/StudentStatus
        "code": StringAttribute, //	Student Status Code	higherEducation/StudentStatus
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/StudentStatus
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/StudentStatus
        "externalSourceSystem_display": StringAttribute, //		higherEducation/StudentStatus
      ])
      .registerPath("education_students.statuses");
  }
}
mixin(EntityCalls!("StudentStatusEntity"));


version(test_model_education) {
  unittest {
    assert(StudentStatusEntity);

    auto entity = StudentStatusEntity;
  }
}
module models.educations.entities.students.status;

@safe:
import models.educations;

// The master list of student statuses defined by the institution.
// name = name of the custom entity.
class DStudentStatusEntity : DOOPEntity {
  mixin(EntityThis!("StudentStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.
        "ownerId": StringAttribute, //	Owner Id
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.
        "studentStatusId": StringAttribute, //	Unique identifier for entity instances
        "stateCode": StringAttribute, //	Status of the Student Status
        "stateCode_display": StringAttribute, //	
        "statusCode": StringAttribute, //	Reason for the status of the Student Status
        "statusCode_display": StringAttribute, //	
        "code": StringAttribute, //	Student Status Code
        "externalIdentifier": StringAttribute, //	External Identifier
        "externalSourceSystem": StringAttribute, //	External Source System
        "externalSourceSystem_display": StringAttribute, //	
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

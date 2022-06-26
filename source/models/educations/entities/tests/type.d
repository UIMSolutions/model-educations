module models.educations.entities.tests.type;

@safe:
import models.educations;

// Type of test taken by a Student Contact
class DTestTypeEntity : DOOPEntity {
  mixin(EntityThis!("TestTypeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/TestType
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/TestType
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/TestType
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/TestType
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/TestType
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/TestType
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/TestType
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/TestType
        "ownerId": StringAttribute, //	Owner Id	higherEducation/TestType
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/TestType
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/TestType
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/TestType
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/TestType
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/TestType
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/TestType
        "versionNumber": StringAttribute, //	Version Number	higherEducation/TestType
        "testTypeId": StringAttribute, //	Unique identifier for entity instances	higherEducation/TestType
        "stateCode": StringAttribute, //	Status of the Test Type	higherEducation/TestType
        "stateCode_display": StringAttribute, //		higherEducation/TestType
        "statusCode": StringAttribute, //	Reason for the status of the Test Type	higherEducation/TestType
        "statusCode_display": StringAttribute, //		higherEducation/TestType
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/TestType      
      ])
      .registerPath("education_test.types");
  }
}
mixin(EntityCalls!("TestTypeEntity"));


version(test_model_education) {
  unittest {
    assert(TestTypeEntity);

    auto entity = TestTypeEntity;
  }
}
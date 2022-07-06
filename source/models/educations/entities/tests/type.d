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
        "versionNumber": StringAttribute, //	Version Number
        "testTypeId": StringAttribute, //	Unique identifier for entity instances
        "stateCode": StringAttribute, //	Status of the Test Type
        "stateCode_display": StringAttribute, //	
        "statusCode": StringAttribute, //	Reason for the status of the Test Type
        "statusCode_display": StringAttribute, //	
        "name": StringAttribute, //	The name of the custom entity.      
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
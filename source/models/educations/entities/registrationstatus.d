module models.educations.entities.registrationstatus;

@safe:
import models.educations;

// The master list of registration statuses tracked by the institution. The registration status is associated to the student course history.
class DRegistrationStatusEntity : DOOPEntity {
  mixin(EntityThis!("RegistrationStatusEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/RegistrationStatus
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/RegistrationStatus
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/RegistrationStatus
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/RegistrationStatus
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/RegistrationStatus
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/RegistrationStatus
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/RegistrationStatus
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/RegistrationStatus
        "ownerId": StringAttribute, //	Owner Id	higherEducation/RegistrationStatus
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/RegistrationStatus
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/RegistrationStatus
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/RegistrationStatus
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/RegistrationStatus
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/RegistrationStatus
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/RegistrationStatus
        "versionNumber": StringAttribute, //	Version Number	higherEducation/RegistrationStatus
        "registrationStatusId": StringAttribute, //	Unique identifier for entity instances	higherEducation/RegistrationStatus
        "stateCode": StringAttribute, //	Status of the Registration Status	higherEducation/RegistrationStatus
        "stateCode_display": StringAttribute, //		higherEducation/RegistrationStatus
        "statusCode": StringAttribute, //	Reason for the status of the Registration Status	higherEducation/RegistrationStatus
        "statusCode_display": StringAttribute, //		higherEducation/RegistrationStatus
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/RegistrationStatus
        "code": StringAttribute, //		higherEducation/RegistrationStatus
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/RegistrationStatus
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/RegistrationStatus
        "externalSourceSystem_display": StringAttribute, //		higherEducation/RegistrationStatus
      ])
      .registerPath("education_registration.statuses");
  }
}
mixin(EntityCalls!("RegistrationStatusEntity"));

version(test_model_education) {
  unittest {
    assert(RegistrationStatusEntity);

    auto entity = RegistrationStatusEntity;
  }
}
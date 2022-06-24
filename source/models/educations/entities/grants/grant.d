module models.educations.entities.grants.grant;

@safe:
import models.educations;

// This entity stores the list of grants offered to a school by all business partners.
class DGrantEntity : DOOPEntity {
  mixin(EntityThis!("GrantEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Grant
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Grant
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Grant
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Grant
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Grant
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Grant
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Grant
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Grant
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Grant
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Grant
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Grant
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Grant
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Grant
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Grant
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Grant
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Grant
        "grantId": StringAttribute, //	Unique identifier for entity instances	higherEducation/Grant
        "exchangeRate": StringAttribute, //	Exchange rate for the currency associated with the entity with respect to the base currency.	higherEducation/Grant
        "amount": StringAttribute, //	Amount offered to perform required research	higherEducation/Grant
        "amount_Base": StringAttribute, //	Value of the Amount in base currency.	higherEducation/Grant
        "applicationDeadlineDate": StringAttribute, //	Last date to apply	higherEducation/Grant
        "areaOfStudyId": StringAttribute, //	Field in which grant of offered	higherEducation/Grant
        "businessPartnerId": StringAttribute, //	Business Partner unique identification number	higherEducation/Grant
        "businessPartnerContactId": StringAttribute, //	Grant point of contact	higherEducation/Grant
        "description": StringAttribute, //	Description about the Grant	higherEducation/Grant
        "name": StringAttribute, //	Required name field	higherEducation/Grant
        "qualifications": StringAttribute, //	Qualifications required to be eligible for Grant	higherEducation/Grant
        "responsibleFacultyContactId": StringAttribute, //	Name of the professor guiding research	higherEducation/Grant
        "validFrom": StringAttribute, //	Start Date of Grant	higherEducation/Grant
        "validTo": StringAttribute, //	End Date of Grant	higherEducation/Grant
        "websiteURL": StringAttribute, //	Grant URL	higherEducation/Grant
        "workDescription": StringAttribute, //	Description of work to be performed	higherEducation/Grant
        "stateCode": StringAttribute, //	Status of the Grant	higherEducation/Grant
        "stateCode_display": StringAttribute, //		higherEducation/Grant
        "statusCode": StringAttribute, //	Reason for the status of the Grant	higherEducation/Grant
        "statusCode_display": StringAttribute, //		higherEducation/Grant
        "transactionCurrencyId": StringAttribute, //	Unique identifier of the currency associated with the entity.	higherEducation/Grant
      ])
      .registerPath("education_areaofstudies");
  }
}
mixin(EntityCalls!("GrantEntity"));


version(test_model_education) {
  unittest {
    assert(GrantEntity);

    auto entity = GrantEntity;
  }
}
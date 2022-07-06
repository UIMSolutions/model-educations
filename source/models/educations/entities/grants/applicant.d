module models.educations.entities.grants.applicant;

@safe:
import models.educations;

// This entity is used as an internship application form and to store the list of students who have applied to a particular internship.
class DGrantApplicantEntity : DOOPEntity {
  mixin(EntityThis!("GrantApplicantEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/GrantApplicant
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/GrantApplicant
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/GrantApplicant
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/GrantApplicant
        "ownerId": StringAttribute, //	Owner Id	higherEducation/GrantApplicant
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/GrantApplicant
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/GrantApplicant
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/GrantApplicant
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/GrantApplicant
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/GrantApplicant
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/GrantApplicant
        "versionNumber": StringAttribute, //	Version Number	higherEducation/GrantApplicant
        "grantApplicantId": StringAttribute, //	Unique identifier for entity instances	higherEducation/GrantApplicant
        "applicantId": StringAttribute, //	Grant applicant id	higherEducation/GrantApplicant
        "applicationStateCode": StringAttribute, //	Status of application	higherEducation/GrantApplicant
        "applicationStateCode_display": StringAttribute, //		higherEducation/GrantApplicant
        "businessPartnerId": StringAttribute, //	Partner offering grant	higherEducation/GrantApplicant
        "grantId": StringAttribute, //	Grant being applied for	higherEducation/GrantApplicant
        "name": StringAttribute, //	Required name field	higherEducation/GrantApplicant
        "offerAcceptedDate": StringAttribute, //	Date the offer was accepted	higherEducation/GrantApplicant
        "offerDeadlineDate": StringAttribute, //	Deadline to accept the offer	higherEducation/GrantApplicant
        "offerMadeDate": StringAttribute, //	Date the offer was made	higherEducation/GrantApplicant
        "qualificationDescription": StringAttribute, //	Description about why an applicant should be selected for the grant	higherEducation/GrantApplicant
        "submissionDate": StringAttribute, //	Date submitted	higherEducation/GrantApplicant
        "processId": StringAttribute, //	Contains the id of the process associated with the entity.	higherEducation/GrantApplicant
        "deprecatedStageId": StringAttribute, //	Contains the id of the stage where the entity is located.	higherEducation/GrantApplicant
        "stateCode": StringAttribute, //	Status of the Grant Applicant	higherEducation/GrantApplicant
        "stateCode_display": StringAttribute, //		higherEducation/GrantApplicant
        "statusCode": StringAttribute, //	Reason for the status of the Grant Applicant	higherEducation/GrantApplicant
        "statusCode_display": StringAttribute, //		higherEducation/GrantApplicant
        "deprecatedTraversedPath": StringAttribute, //	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	higherEducation/GrantApplicant

      ])
      .registerPath("education_areaofstudies");
  }
}
mixin(EntityCalls!("GrantApplicantEntity"));


version(test_model_education) {
  unittest {
    assert(GrantApplicantEntity);

    auto entity = GrantApplicantEntity;
  }
}
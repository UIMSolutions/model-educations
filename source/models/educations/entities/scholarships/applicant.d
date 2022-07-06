module models.educations.entities.scholarships.applicant;

@safe:
import models.educations;

// This entity is used as an scholarship application form and to store the list of students who have applied to a particular scholarship.
// name = Required name field
class DScholarshipApplicantEntity : DOOPEntity {
  mixin(EntityThis!("ScholarshipApplicantEntity"));
  
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
        "scholarshipApplicantId": StringAttribute, //	Unique identifier for entity instances
        "applicantId": StringAttribute, //	Scholarship applicant
        "applicationStateCode": StringAttribute, //	
        "applicationStateCode_display": StringAttribute, //	
        "businessPartnerId": StringAttribute, //	Partner offering scholarship
        "offerAcceptedDate": StringAttribute, //	Date the offer was accepted
        "offerDeadlineDate": StringAttribute, //	Deadline to accept the offer
        "offerMadeDate": StringAttribute, //	Date the offer was made
        "qualificationDescription": StringAttribute, //	Description about why an applicant should be selected for the scholarship
        "scholarshipId": StringAttribute, //	Scholarship Applied for
        "submissionDate": StringAttribute, //	Date the application was submitted
        "processId": StringAttribute, //	Contains the id of the process associated with the entity.
        "deprecatedStageId": StringAttribute, //	Contains the id of the stage where the entity is located.
        "stateCode": StringAttribute, //	Status of the Scholarship Applicant
        "stateCode_display": StringAttribute, //	
        "statusCode": StringAttribute, //	Reason for the status of the Scholarship Applicant
        "statusCode_display": StringAttribute, //	
        "deprecatedTraversedPath": StringAttribute, //	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.
      ])
      .registerPath("education_scholarships.applicants");
  }
}
mixin(EntityCalls!("ScholarshipApplicantEntity"));


version(test_model_education) {
  unittest {
    assert(ScholarshipApplicantEntity);

    auto entity = ScholarshipApplicantEntity;
  }
}
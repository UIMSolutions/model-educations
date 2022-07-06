module models.educations.entities.scholarships.applicant;

@safe:
import models.educations;

// This entity is used as an scholarship application form and to store the list of students who have applied to a particular scholarship.
class DScholarshipApplicantEntity : DOOPEntity {
  mixin(EntityThis!("ScholarshipApplicantEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/ScholarshipApplicant
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ScholarshipApplicant
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ScholarshipApplicant
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ScholarshipApplicant
        "ownerId": StringAttribute, //	Owner Id	higherEducation/ScholarshipApplicant
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/ScholarshipApplicant
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/ScholarshipApplicant
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/ScholarshipApplicant
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/ScholarshipApplicant
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ScholarshipApplicant
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ScholarshipApplicant
        "versionNumber": StringAttribute, //	Version Number	higherEducation/ScholarshipApplicant
        "scholarshipApplicantId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ScholarshipApplicant
        "applicantId": StringAttribute, //	Scholarship applicant	higherEducation/ScholarshipApplicant
        "applicationStateCode": StringAttribute, //		higherEducation/ScholarshipApplicant
        "applicationStateCode_display": StringAttribute, //		higherEducation/ScholarshipApplicant
        "businessPartnerId": StringAttribute, //	Partner offering scholarship	higherEducation/ScholarshipApplicant
        "name": StringAttribute, //	Required name field	higherEducation/ScholarshipApplicant
        "offerAcceptedDate": StringAttribute, //	Date the offer was accepted	higherEducation/ScholarshipApplicant
        "offerDeadlineDate": StringAttribute, //	Deadline to accept the offer	higherEducation/ScholarshipApplicant
        "offerMadeDate": StringAttribute, //	Date the offer was made	higherEducation/ScholarshipApplicant
        "qualificationDescription": StringAttribute, //	Description about why an applicant should be selected for the scholarship	higherEducation/ScholarshipApplicant
        "scholarshipId": StringAttribute, //	Scholarship Applied for	higherEducation/ScholarshipApplicant
        "submissionDate": StringAttribute, //	Date the application was submitted	higherEducation/ScholarshipApplicant
        "processId": StringAttribute, //	Contains the id of the process associated with the entity.	higherEducation/ScholarshipApplicant
        "deprecatedStageId": StringAttribute, //	Contains the id of the stage where the entity is located.	higherEducation/ScholarshipApplicant
        "stateCode": StringAttribute, //	Status of the Scholarship Applicant	higherEducation/ScholarshipApplicant
        "stateCode_display": StringAttribute, //		higherEducation/ScholarshipApplicant
        "statusCode": StringAttribute, //	Reason for the status of the Scholarship Applicant	higherEducation/ScholarshipApplicant
        "statusCode_display": StringAttribute, //		higherEducation/ScholarshipApplicant
        "deprecatedTraversedPath": StringAttribute, //	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	higherEducation/ScholarshipApplicant
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
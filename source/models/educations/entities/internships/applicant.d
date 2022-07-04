module models.educations.entities.internships.applicant;

@safe:
import models.educations;

// 	This entity is used as an internship application form and to store the list of students who have applied to a particular internship.
class DInternshipApplicantEntity : DOOPEntity {
  mixin(EntityThis!("InternshipApplicantEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, // Date and time when the record was created.	higherEducation/InternshipApplicant
        "createdBy": StringAttribute, // Shows who created the record.	higherEducation/InternshipApplicant
        "modifiedOn": StringAttribute, // Date and time when the record was modified.	higherEducation/InternshipApplicant
        "modifiedBy": StringAttribute, // Shows who last updated the record.	higherEducation/InternshipApplicant
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user.	higherEducation/InternshipApplicant
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user.	higherEducation/InternshipApplicant
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated.	higherEducation/InternshipApplicant
        "importSequenceNumber": StringAttribute, // Unique identifier of the data import or data migration that created this record.	higherEducation/InternshipApplicant
        "ownerId": StringAttribute, // Owner Id	higherEducation/InternshipApplicant
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.	higherEducation/InternshipApplicant
        "owningBusinessUnit": StringAttribute, // Unique identifier for the business unit that owns the record	higherEducation/InternshipApplicant
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity.	higherEducation/InternshipApplicant
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record.	higherEducation/InternshipApplicant
        "timeZoneRuleVersionNumber": StringAttribute, // For internal use only.	higherEducation/InternshipApplicant
        "UTCConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.	higherEducation/InternshipApplicant
        "versionNumber": StringAttribute, // Version Number	higherEducation/InternshipApplicant
        "internshipApplicantId": StringAttribute, // Unique identifier for entity instances	higherEducation/InternshipApplicant
        "applicantId": StringAttribute, // Internship applicant	higherEducation/InternshipApplicant
        "applicationStateCode": StringAttribute, // Status of application	higherEducation/InternshipApplicant
        "applicationStateCode_display": StringAttribute, // 	higherEducation/InternshipApplicant
        "businessPartnerId": StringAttribute, // Partner offering internship	higherEducation/InternshipApplicant
        "internshipId": StringAttribute, // Internship being applied for	higherEducation/InternshipApplicant
        "isWillingToRelocate": StringAttribute, // Is the applicant willing to relocate	higherEducation/InternshipApplicant
        "name": StringAttribute, // Required name field	higherEducation/InternshipApplicant
        "offerAcceptedDate": StringAttribute, // Date the offer was accepted	higherEducation/InternshipApplicant
        "offerDeadlineDate": StringAttribute, // Deadline to accept the offer	higherEducation/InternshipApplicant
        "offerMadeDate": StringAttribute, // Date the offer was made	higherEducation/InternshipApplicant
        "qualificationDescription": StringAttribute, // Description about why an applicant should be selected for the internship	higherEducation/InternshipApplicant
        "submissionDate": StringAttribute, // Date the application was submitted	higherEducation/InternshipApplicant
        "processId": StringAttribute, // Contains the id of the process associated with the entity.	higherEducation/InternshipApplicant
        "deprecatedStageId": StringAttribute, // Contains the id of the stage where the entity is located.	higherEducation/InternshipApplicant
        "stateCode": StringAttribute, // Status of the Internship Applicant	higherEducation/InternshipApplicant
        "stateCode_display": StringAttribute, // 	higherEducation/InternshipApplicant
        "statusCode": StringAttribute, // Reason for the status of the Internship Applicant	higherEducation/InternshipApplicant
        "statusCode_display": StringAttribute, // 	higherEducation/InternshipApplicant
        "deprecatedTraversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	higherEducation/InternshipApplicant
      ])
      .registerPath("education_internships.applicants");
  }
}
mixin(EntityCalls!("InternshipApplicantEntity"));


version(test_model_education) {
  unittest {
    assert(InternshipApplicantEntity);

    auto entity = InternshipApplicantEntity;
  }
}
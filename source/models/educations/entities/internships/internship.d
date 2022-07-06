module models.educations.entities.internships.internship;

@safe:
import models.educations;

// 	This entity stores the list of internships offered to a school by all business partners.
class DInternshipEntity : DOOPEntity {
  mixin(EntityThis!("InternshipEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Internship
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Internship
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Internship
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Internship
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Internship
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Internship
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Internship
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Internship
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Internship
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Internship
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Internship
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Internship
        "internshipId": StringAttribute, //	Unique identifier for entity instances	higherEducation/Internship
        "applicationDeadlineDate": StringAttribute, //	Last date to apply for internship	higherEducation/Internship
        "businessPartnerId": StringAttribute, //	Business Partner	higherEducation/Internship
        "businessPartnerContactId": StringAttribute, //	Internship point of contact	higherEducation/Internship
        "description": StringAttribute, //	Description about the internship	higherEducation/Internship
        "isPaid": StringAttribute, //	Is the internship paid/unpaid	higherEducation/Internship
        "locationDescription": StringAttribute, //	Location where work is performed	higherEducation/Internship
        "postedDate": StringAttribute, //	Date the internship was posted	higherEducation/Internship
        "qualifications": StringAttribute, //	Qualifications required to be eligible for Internship	higherEducation/Internship
        "title": StringAttribute, //	Required name field	higherEducation/Internship
        "validFrom": StringAttribute, //	Start date of the internship	higherEducation/Internship
        "validTo": StringAttribute, //	End date of the internship	higherEducation/Internship
        "websiteURL": StringAttribute, //	Internship URL	higherEducation/Internship
        "stateCode": StringAttribute, //	Status of the Internship	higherEducation/Internship
        "stateCode_display": StringAttribute, //		higherEducation/Internship
        "statusCode": StringAttribute, //	Reason for the status of the Internship	higherEducation/Internship
        "statusCode_display": StringAttribute, //		higherEducation/Internship
      ])
      .registerPath("education_internships");
  }
}
mixin(EntityCalls!("InternshipEntity"));


version(test_model_education) {
  unittest {
    assert(InternshipEntity);

    auto entity = InternshipEntity;
  }
}

module models.educations.entities.internships.previouseducation;

@safe:
import models.educations;

// The previous education history for a student.
class DPreviousEducationEntity : DOOPEntity {
  mixin(EntityThis!("PreviousEducationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/PreviousEducation
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/PreviousEducation
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/PreviousEducation
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/PreviousEducation
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/PreviousEducation
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/PreviousEducation
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/PreviousEducation
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/PreviousEducation
        "ownerId": StringAttribute, //	Owner Id	higherEducation/PreviousEducation
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/PreviousEducation
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/PreviousEducation
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/PreviousEducation
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/PreviousEducation
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/PreviousEducation
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/PreviousEducation
        "versionNumber": StringAttribute, //	Version Number	higherEducation/PreviousEducation
        "previousEducationId": StringAttribute, //	Unique identifier for entity instances	higherEducation/PreviousEducation
        "stateCode": StringAttribute, //	Status of the Previous Education	higherEducation/PreviousEducation
        "stateCode_display": StringAttribute, //		higherEducation/PreviousEducation
        "statusCode": StringAttribute, //	Reason for the status of the Previous Education	higherEducation/PreviousEducation
        "statusCode_display": StringAttribute, //		higherEducation/PreviousEducation
        "name": StringAttribute, //	Previous Education Name	higherEducation/PreviousEducation
        "classSize": StringAttribute, //	Class Size	higherEducation/PreviousEducation
        "dateofEnrollment": StringAttribute, //	Date of Enrollment	higherEducation/PreviousEducation
        "degreeId": StringAttribute, //	Lookup to Program Level	higherEducation/PreviousEducation
        "educationLevelId": StringAttribute, //	The education level for the student.	higherEducation/PreviousEducation
        "GPA": StringAttribute, //	GPA	higherEducation/PreviousEducation
        "graduated": StringAttribute, //	Did the contact graduate?	higherEducation/PreviousEducation
        "graduationDate": StringAttribute, //	The graduation date for the student.	higherEducation/PreviousEducation
        "lastDateofAttendance": StringAttribute, //	Last Date of Attendance	higherEducation/PreviousEducation
        "major": StringAttribute, //	Major	higherEducation/PreviousEducation
        "rank": StringAttribute, //	Rank within the graduating class	higherEducation/PreviousEducation
        "schoolNameId": StringAttribute, //	The school previously attended	higherEducation/PreviousEducation
        "studentId": StringAttribute, //		higherEducation/PreviousEducation
      ])
      .registerPath("education_previous.educations");
  }
}
mixin(EntityCalls!("PreviousEducationEntity"));

version(test_model_education) {
  unittest {
    assert(PreviousEducationEntity);

    auto entity = PreviousEducationEntity;
  }
}
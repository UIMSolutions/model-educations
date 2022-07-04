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
        "createdOn": StringAttribute, //	Date and time when the record was created.	
        "createdBy": StringAttribute, //	Shows who created the record.	
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	
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
        "previousEducationId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Previous Education	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Previous Education	
        "statusCode_display": StringAttribute, //		
        "name": StringAttribute, //	Previous Education Name	
        "classSize": StringAttribute, //	Class Size	
        "dateofEnrollment": StringAttribute, //	Date of Enrollment	
        "degreeId": StringAttribute, //	Lookup to Program Level	
        "educationLevelId": StringAttribute, //	The education level for the student.	
        "GPA": StringAttribute, //	GPA	
        "graduated": StringAttribute, //	Did the contact graduate?	
        "graduationDate": StringAttribute, //	The graduation date for the student.	
        "lastDateofAttendance": StringAttribute, //	Last Date of Attendance	
        "major": StringAttribute, //	Major	
        "rank": StringAttribute, //	Rank within the graduating class	
        "schoolNameId": StringAttribute, //	The school previously attended	
        "studentId": StringAttribute, //		
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
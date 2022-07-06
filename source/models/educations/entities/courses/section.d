module models.educations.entities.courses.section;

@safe:
import models.educations;

// The relationship between an instructor and a specific course.
// name = name of the custom entity.	
class DCourseSectionEntity : DOOPEntity {
  mixin(EntityThis!("CourseSectionEntity"));
  
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
        "courseSectionId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Course Section	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Course Section	
        "statusCode_display": StringAttribute, //		
        "academicPeriodId": StringAttribute, //	Lookup to Academic Period.	
        "campusId": StringAttribute, //	Campus Location of the course.	
        "courseDayTime": StringAttribute, //	Text field to store the date and time of the course.	
        "courseId": StringAttribute, //	Lookup to Course	
        "instructorId": StringAttribute, //	Instructor	
        "location": StringAttribute, //	Specific Meeting Location	
        "prerequisites": StringAttribute, //	Prerequisites	
      ])
      .registerPath("education_courses.sections");
  }
}
mixin(EntityCalls!("CourseSectionEntity"));


version(test_model_education) {
  unittest {
    assert(CourseSectionEntity);

    auto entity = CourseSectionEntity;
  }
}
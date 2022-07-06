module models.educations.entities.courses.course;

@safe:
import models.educations;

// The master list of all courses offered by an institution.
// name = name or title of the course.	
class DCourseEntity : DOOPEntity {
  mixin(EntityThis!("CourseEntity"));
  
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
        "courseId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Course	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Course	
        "statusCode_display": StringAttribute, //		
        "academicLevel": StringAttribute, //	Academic Level	
        "academicLevel_display": StringAttribute, //		
        "courseNumber": StringAttribute, //	The number of the course.	
        "endDate": StringAttribute, //	The end date of the course.	
        "externalIdentifier": StringAttribute, //	External Identifier	
        "externalSourceSystem": StringAttribute, //	External Source System	
        "externalSourceSystem_display": StringAttribute, //		
        "prerequisites": StringAttribute, //		
        "section": StringAttribute, //	The specific section of the course.	
        "startDate": StringAttribute, //	The start date of the course.	
        "subject": StringAttribute, //	The subject the course is related to.	
      ])
      .registerPath("education_courses");
  }
}
mixin(EntityCalls!("CourseEntity"));


version(test_model_education) {
  unittest {
    assert(CourseEntity);

    auto entity = CourseEntity;
  }
}
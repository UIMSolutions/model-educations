module models.educations.entities.courses.course;

@safe:
import models.educations;

// The master list of all courses offered by an institution.
class DCourseEntity : DOOPEntity {
  mixin(EntityThis!("CourseEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Course
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Course
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Course
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Course
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Course
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Course
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Course
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Course
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Course
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Course
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Course
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Course
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Course
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Course
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Course
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Course
        "courseId": StringAttribute, //	Unique identifier for entity instances	higherEducation/Course
        "stateCode": StringAttribute, //	Status of the Course	higherEducation/Course
        "stateCode_display": StringAttribute, //		higherEducation/Course
        "statusCode": StringAttribute, //	Reason for the status of the Course	higherEducation/Course
        "statusCode_display": StringAttribute, //		higherEducation/Course
        "name": StringAttribute, //	The name or title of the course.	higherEducation/Course
        "academicLevel": StringAttribute, //	Academic Level	higherEducation/Course
        "academicLevel_display": StringAttribute, //		higherEducation/Course
        "courseNumber": StringAttribute, //	The number of the course.	higherEducation/Course
        "endDate": StringAttribute, //	The end date of the course.	higherEducation/Course
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/Course
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/Course
        "externalSourceSystem_display": StringAttribute, //		higherEducation/Course
        "prerequisites": StringAttribute, //		higherEducation/Course
        "section": StringAttribute, //	The specific section of the course.	higherEducation/Course
        "startDate": StringAttribute, //	The start date of the course.	higherEducation/Course
        "subject": StringAttribute, //	The subject the course is related to.	higherEducation/Course
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
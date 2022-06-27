module models.educations.entities.courses.section;

@safe:
import models.educations;

// 	The relationship between an instructor and a specific course.
class DCourseSectionEntity : DOOPEntity {
  mixin(EntityThis!("CourseSectionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/CourseSection
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/CourseSection
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/CourseSection
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/CourseSection
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/CourseSection
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/CourseSection
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/CourseSection
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/CourseSection
        "ownerId": StringAttribute, //	Owner Id	higherEducation/CourseSection
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/CourseSection
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/CourseSection
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/CourseSection
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/CourseSection
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/CourseSection
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/CourseSection
        "versionNumber": StringAttribute, //	Version Number	higherEducation/CourseSection
        "courseSectionId": StringAttribute, //	Unique identifier for entity instances	higherEducation/CourseSection
        "stateCode": StringAttribute, //	Status of the Course Section	higherEducation/CourseSection
        "stateCode_display": StringAttribute, //		higherEducation/CourseSection
        "statusCode": StringAttribute, //	Reason for the status of the Course Section	higherEducation/CourseSection
        "statusCode_display": StringAttribute, //		higherEducation/CourseSection
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/CourseSection
        "academicPeriodId": StringAttribute, //	Lookup to Academic Period.	higherEducation/CourseSection
        "campusId": StringAttribute, //	Campus Location of the course.	higherEducation/CourseSection
        "courseDayTime": StringAttribute, //	Text field to store the date and time of the course.	higherEducation/CourseSection
        "courseId": StringAttribute, //	Lookup to Course	higherEducation/CourseSection
        "instructorId": StringAttribute, //	Instructor	higherEducation/CourseSection
        "location": StringAttribute, //	Specific Meeting Location	higherEducation/CourseSection
        "prerequisites": StringAttribute, //	Prerequisites	higherEducation/CourseSection
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
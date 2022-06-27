module models.educations.entities.courses.history;

@safe:
import models.educations;

// The course history for a student.
class DCourseHistoryEntity : DOOPEntity {
  mixin(EntityThis!("CourseHistoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/CourseHistory
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/CourseHistory
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/CourseHistory
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/CourseHistory
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/CourseHistory
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/CourseHistory
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/CourseHistory
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/CourseHistory
        "ownerId": StringAttribute, //	Owner Id	higherEducation/CourseHistory
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/CourseHistory
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/CourseHistory
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/CourseHistory
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/CourseHistory
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/CourseHistory
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/CourseHistory
        "versionNumber": StringAttribute, //	Version Number	higherEducation/CourseHistory
        "courseHistoryId": StringAttribute, //	Unique identifier for entity instances	higherEducation/CourseHistory
        "stateCode": StringAttribute, //	Status of the Course History	higherEducation/CourseHistory
        "stateCode_display": StringAttribute, //		higherEducation/CourseHistory
        "statusCode": StringAttribute, //	Reason for the status of the Course History	higherEducation/CourseHistory
        "statusCode_display": StringAttribute, //		higherEducation/CourseHistory
        "name": StringAttribute, //	Course History Entity	higherEducation/CourseHistory
        "academicPeriodDetailsId": StringAttribute, //	The academic period details record for the student	higherEducation/CourseHistory
        "continuingEducation": StringAttribute, //	Continuing Education	higherEducation/CourseHistory
        "continuingEducation_display": StringAttribute, //		higherEducation/CourseHistory
        "courseId": StringAttribute, //	The course record for the student.	higherEducation/CourseHistory
        "courseSectionId": StringAttribute, //	Unique identifier for Course Section associated with Course History.	higherEducation/CourseHistory
        "creditsAttempted": StringAttribute, //	The credits attempted received.	higherEducation/CourseHistory
        "creditsEarrned": StringAttribute, //	The credits earned received.	higherEducation/CourseHistory
        "gradePoints": StringAttribute, //	The grade points received.	higherEducation/CourseHistory
        "lastDateofAttendance": StringAttribute, //	The last date of attendance received.	higherEducation/CourseHistory
        "letterGrade": StringAttribute, //	The letter grade received for the course.	higherEducation/CourseHistory
        "midTermLetterGrade": StringAttribute, //	The mid term letter grade received.	higherEducation/CourseHistory
        "midTermNumericGrade": StringAttribute, //	The mid term numeric grade received.	higherEducation/CourseHistory
        "registrationStatusId": StringAttribute, //	The registration status received.	higherEducation/CourseHistory
        "studentId": StringAttribute, //	Lookup to student (Contact)	higherEducation/CourseHistory
      ])
      .registerPath("education_courses.histories");
  }
}
mixin(EntityCalls!("CourseHistoryEntity"));


version(test_model_education) {
  unittest {
    assert(CourseHistoryEntity);

    auto entity = CourseHistoryEntity;
  }
}
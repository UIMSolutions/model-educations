module models.educations.entities.students.programtype;

@safe:
import models.educations;

// The master list of program types defined by the institution, such as major, minor, or concentration.
class DStudentProgramTypeEntity : DOOPEntity {
  mixin(EntityThis!("StudentProgramTypeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/StudentProgramType
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/StudentProgramType
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/StudentProgramType
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/StudentProgramType
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/StudentProgramType
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/StudentProgramType
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/StudentProgramType
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/StudentProgramType
        "ownerId": StringAttribute, //	Owner Id	higherEducation/StudentProgramType
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/StudentProgramType
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/StudentProgramType
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/StudentProgramType
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/StudentProgramType
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/StudentProgramType
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/StudentProgramType
        "versionNumber": StringAttribute, //	Version Number	higherEducation/StudentProgramType
        "studentProgramTypeId": StringAttribute, //	Unique identifier for entity instances	higherEducation/StudentProgramType
        "stateCode": StringAttribute, //	Status of the Student Program Type	higherEducation/StudentProgramType
        "stateCode_display": StringAttribute, //		higherEducation/StudentProgramType
        "statusCode": StringAttribute, //	Reason for the status of the Student Program Type	higherEducation/StudentProgramType
        "statusCode_display": StringAttribute, //		higherEducation/StudentProgramType
        "name": StringAttribute, //	The name of the program type.	higherEducation/StudentProgramType      
      ])
      .registerPath("education_students.statuses");
  }
}
mixin(EntityCalls!("StudentProgramTypeEntity"));


version(test_model_education) {
  unittest {
    assert(StudentProgramTypeEntity);

    auto entity = StudentProgramTypeEntity;
  }
}
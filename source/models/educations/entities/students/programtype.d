module models.educations.entities.students.programtype;

@safe:
import models.educations;

// The master list of program types defined by the institution, such as major, minor, or concentration.
// name = name of the program type.	      
class DStudentProgramTypeEntity : DOOPEntity {
  mixin(EntityThis!("StudentProgramTypeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        OwnerIdAttribute, //	Owner Id	
       ])
      .addValues([
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	
        "studentProgramTypeId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Student Program Type	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Student Program Type	
        "statusCode_display": StringAttribute, //		
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

module models.educations.entities.extracurriculars.participant;

@safe:
import models.educations;

// The relationship between a Contact and a specific Extra Curricular Activity.
// name = name of the custom entity.	
class DExtraCurricularParticipantEntity : DOOPEntity {
  mixin(EntityThis!("ExtraCurricularParticipantEntity"));
  
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
        "extracurricularParticipantId": StringAttribute, //	Unique identifier for entity instances	
        "stateCode": StringAttribute, //	Status of the Extra Curricular Participant	
        "stateCode_display": StringAttribute, //		
        "statusCode": StringAttribute, //	Reason for the status of the Extra Curricular Participant	
        "statusCode_display": StringAttribute, //		
        "awardsReceived": StringAttribute, //	Awards received at the Extra Curricular Activity or Club.	
        "contactId": StringAttribute, //	Lookup to Student (Contact).	
        "endDate": StringAttribute, //	End Date	
        "extraCurricularActivityId": StringAttribute, //	Lookup to Extra Curricular	
        "positionsHeld": StringAttribute, //	Positions held at the Extra Curricular Activity or Club	
        "source": StringAttribute, //	Source of the student's extra curricular activity record.	
        "source_display": StringAttribute, //		
        "startDate": StringAttribute, //	Start Date	
        "state": StringAttribute, //		
        "state_display": StringAttribute, //		
      ])
      .registerPath("education_extracurriculars.participants");
  }
}
mixin(EntityCalls!("ExtraCurricularParticipantEntity"));


version(test_model_education) {
  unittest {
    assert(ExtraCurricularParticipantEntity);

    auto entity = ExtraCurricularParticipantEntity;
  }
}
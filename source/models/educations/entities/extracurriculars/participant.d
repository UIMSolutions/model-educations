module models.educations.entities.extracurriculars.participant;

@safe:
import models.educations;

// The relationship between a Contact and a specific Extra Curricular Activity.
class DExtraCurricularParticipantEntity : DOOPEntity {
  mixin(EntityThis!("ExtraCurricularParticipantEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/ExtraCurricularParticipant
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/ExtraCurricularParticipant
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/ExtraCurricularParticipant
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/ExtraCurricularParticipant
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/ExtraCurricularParticipant
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/ExtraCurricularParticipant
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ExtraCurricularParticipant
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/ExtraCurricularParticipant
        "ownerId": StringAttribute, //	Owner Id	higherEducation/ExtraCurricularParticipant
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/ExtraCurricularParticipant
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/ExtraCurricularParticipant
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/ExtraCurricularParticipant
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/ExtraCurricularParticipant
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ExtraCurricularParticipant
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ExtraCurricularParticipant
        "versionNumber": StringAttribute, //	Version Number	higherEducation/ExtraCurricularParticipant
        "extracurricularParticipantId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ExtraCurricularParticipant
        "stateCode": StringAttribute, //	Status of the Extra Curricular Participant	higherEducation/ExtraCurricularParticipant
        "stateCode_display": StringAttribute, //		higherEducation/ExtraCurricularParticipant
        "statusCode": StringAttribute, //	Reason for the status of the Extra Curricular Participant	higherEducation/ExtraCurricularParticipant
        "statusCode_display": StringAttribute, //		higherEducation/ExtraCurricularParticipant
        "name": StringAttribute, //	The name of the custom entity.	higherEducation/ExtraCurricularParticipant
        "awardsReceived": StringAttribute, //	Awards received at the Extra Curricular Activity or Club.	higherEducation/ExtraCurricularParticipant
        "contactId": StringAttribute, //	Lookup to Student (Contact).	higherEducation/ExtraCurricularParticipant
        "endDate": StringAttribute, //	End Date	higherEducation/ExtraCurricularParticipant
        "extraCurricularActivityId": StringAttribute, //	Lookup to Extra Curricular	higherEducation/ExtraCurricularParticipant
        "positionsHeld": StringAttribute, //	Positions held at the Extra Curricular Activity or Club	higherEducation/ExtraCurricularParticipant
        "source": StringAttribute, //	Source of the student's extra curricular activity record.	higherEducation/ExtraCurricularParticipant
        "source_display": StringAttribute, //		higherEducation/ExtraCurricularParticipant
        "startDate": StringAttribute, //	Start Date	higherEducation/ExtraCurricularParticipant
        "state": StringAttribute, //		higherEducation/ExtraCurricularParticipant
        "state_display": StringAttribute, //		higherEducation/ExtraCurricularParticipant
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
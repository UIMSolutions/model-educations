module models.educations.entities.scholarships.applicationbusinessprocessflow;

@safe:
import models.educations;

// Base entity for process Scholarship Application Business Process Flow
class DScholarshipApplicationBusinessProcessFlowEntity : DOOPEntity {
  mixin(EntityThis!("ScholarshipApplicationBusinessProcessFlowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "businessProcessFlowInstanceId": StringAttribute, //	Unique identifier for entity instances	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "activeStageStartedOn": StringAttribute, //	Date and time when current active stage is started	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "bpf_Duration": StringAttribute, //	Duration of Business Process Flow	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "mshied_ScholarshipapplicantId": StringAttribute, //		higherEducation/ScholarshipApplicationBusinessProcessFlow
        "name": StringAttribute, //	Description	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "completedOn": StringAttribute, //	Date and time when Business Process Flow instance is completed.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "createdBy": StringAttribute, //	Unique identifier of the user who created the record.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the record.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "modifiedBy": StringAttribute, //	Unique identifier of the user who modified the record.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who modified the record.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "organizationId": StringAttribute, //	Unique identifier for the organization	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "stateCode": StringAttribute, //	Status of the Scholarship Application Business Process Flow	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "stateCode_display": StringAttribute, //		higherEducation/ScholarshipApplicationBusinessProcessFlow
        "statusCode": StringAttribute, //	Reason for the status of the Scholarship Application Business Process Flow	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "statusCode_display": StringAttribute, //		higherEducation/ScholarshipApplicationBusinessProcessFlow
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "traversedPath": StringAttribute, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.	higherEducation/ScholarshipApplicationBusinessProcessFlow
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/ScholarshipApplicationBusinessProcessFlow      
      ])
      .registerPath("education_scholarships.applicationbusinessprocessflows");
  }
}
mixin(EntityCalls!("ScholarshipApplicationBusinessProcessFlowEntity"));


version(test_model_education) {
  unittest {
    assert(ScholarshipApplicationBusinessProcessFlowEntity);

    auto entity = ScholarshipApplicationBusinessProcessFlowEntity;
  }
}
module models.educations.entities.grants.applicationbusinessprocessflow;

@safe:
import models.educations;

// Base entity for process Grant Application Business Process Flow
class DGrantApplicationBusinessProcessFlowEntity : DOOPEntity {
  mixin(EntityThis!("GrantApplicationBusinessProcessFlowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "businessProcessFlowInstanceId": StringAttribute, //	Unique identifier for entity instances	higherEducation/GrantApplicationBusinessProcessFlow
        "activeStageStartedOn": StringAttribute, //	Date and time when current active stage is started	higherEducation/GrantApplicationBusinessProcessFlow
        "bpf_Duration": StringAttribute, //	Duration of Business Process Flow	higherEducation/GrantApplicationBusinessProcessFlow
        "mshied_GrantapplicantId": StringAttribute, //		higherEducation/GrantApplicationBusinessProcessFlow
        "name": StringAttribute, //	Description	higherEducation/GrantApplicationBusinessProcessFlow
        "completedOn": StringAttribute, //	Date and time when Business Process Flow instance is completed.	higherEducation/GrantApplicationBusinessProcessFlow
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the record.	higherEducation/GrantApplicationBusinessProcessFlow
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.	higherEducation/GrantApplicationBusinessProcessFlow
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who modified the record.	higherEducation/GrantApplicationBusinessProcessFlow
        "organizationId": StringAttribute, //	Unique identifier for the organization	higherEducation/GrantApplicationBusinessProcessFlow
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/GrantApplicationBusinessProcessFlow
        "stateCode": StringAttribute, //	Status of the Grant Application Business Process Flow	higherEducation/GrantApplicationBusinessProcessFlow
        "stateCode_display": StringAttribute, //		higherEducation/GrantApplicationBusinessProcessFlow
        "statusCode": StringAttribute, //	Reason for the status of the Grant Application Business Process Flow	higherEducation/GrantApplicationBusinessProcessFlow
        "statusCode_display": StringAttribute, //		higherEducation/GrantApplicationBusinessProcessFlow
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/GrantApplicationBusinessProcessFlow
        "traversedPath": StringAttribute, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.	higherEducation/GrantApplicationBusinessProcessFlow
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/GrantApplicationBusinessProcessFlow
      ])
      .registerPath("education_grants.application.businessprocessflows");
  }
}
mixin(EntityCalls!("GrantApplicationBusinessProcessFlowEntity"));


version(test_model_education) {
  unittest {
    assert(GrantApplicationBusinessProcessFlowEntity);

    auto entity = GrantApplicationBusinessProcessFlowEntity;
  }
}
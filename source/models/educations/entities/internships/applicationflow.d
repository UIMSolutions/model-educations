module models.educations.entities.internships.applicationflow;

@safe:
import models.educations;

// 	Base entity for process Internship Application Flow
//  name = Description
class DInternshipApplicationFlowEntity : DOOPEntity {
  mixin(EntityThis!("InternshipApplicationFlowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "businessProcessFlowInstanceId": StringAttribute, //	Unique identifier for entity instances
        "activeStageStartedOn": StringAttribute, //	Date and time when current active stage is started
        "bpf_Duration": StringAttribute, //	Duration of Business Process Flow
        "mshied_InternshipapplicantId": StringAttribute, //	
        "completedOn": StringAttribute, //	Date and time when Business Process Flow instance is completed.
        "createdOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who created the record.
        "importSequenceNumber": StringAttribute, //	Sequence number of the import that created this record.
        "modifiedOnBehalfBy": StringAttribute, //	Unique identifier of the delegate user who modified the record.
        "organizationId": StringAttribute, //	Unique identifier for the organization
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.
        "stateCode": StringAttribute, //	Status of the Internship Application Flow
        "stateCode_display": StringAttribute, //	
        "statusCode": StringAttribute, //	Reason for the status of the Internship Application Flow
        "statusCode_display": StringAttribute, //	
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.
        "traversedPath": StringAttribute, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.
      ])
      .registerPath("education_internships.applicationflows");
  }
}
mixin(EntityCalls!("InternshipApplicationFlowEntity"));


version(test_model_education) {
  unittest {
    assert(InternshipApplicationFlowEntity);

    auto entity = InternshipApplicationFlowEntity;
  }
}

module models.educations.entities.internships.applicationflow;

@safe:
import models.educations;

// 	Base entity for process Internship Application Flow
class DInternshipApplicationFlowEntity : DOOPEntity {
  mixin(EntityThis!("InternshipApplicationFlowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "businessProcessFlowInstanceId": sTRINGaTTRIBUTE, //	Unique identifier for entity instances
        "activeStageStartedOn": sTRINGaTTRIBUTE, //	Date and time when current active stage is started
        "bpf_Duration": sTRINGaTTRIBUTE, //	Duration of Business Process Flow
        "mshied_InternshipapplicantId": sTRINGaTTRIBUTE, //	
        "name": sTRINGaTTRIBUTE, //	Description
        "completedOn": sTRINGaTTRIBUTE, //	Date and time when Business Process Flow instance is completed.
        "createdBy": sTRINGaTTRIBUTE, //	Unique identifier of the user who created the record.
        "createdOn": sTRINGaTTRIBUTE, //	Date and time when the record was created.
        "createdOnBehalfBy": sTRINGaTTRIBUTE, //	Unique identifier of the delegate user who created the record.
        "importSequenceNumber": sTRINGaTTRIBUTE, //	Sequence number of the import that created this record.
        "modifiedBy": sTRINGaTTRIBUTE, //	Unique identifier of the user who modified the record.
        "modifiedOn": sTRINGaTTRIBUTE, //	Date and time when the record was modified.
        "modifiedOnBehalfBy": sTRINGaTTRIBUTE, //	Unique identifier of the delegate user who modified the record.
        "organizationId": sTRINGaTTRIBUTE, //	Unique identifier for the organization
        "overriddenCreatedOn": sTRINGaTTRIBUTE, //	Date and time that the record was migrated.
        "stateCode": sTRINGaTTRIBUTE, //	Status of the Internship Application Flow
        "stateCode_display": sTRINGaTTRIBUTE, //	
        "statusCode": sTRINGaTTRIBUTE, //	Reason for the status of the Internship Application Flow
        "statusCode_display": sTRINGaTTRIBUTE, //	
        "timeZoneRuleVersionNumber": sTRINGaTTRIBUTE, //	For internal use only.
        "traversedPath": sTRINGaTTRIBUTE, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.
        "UTCConversionTimeZoneCode": sTRINGaTTRIBUTE, //	Time zone code that was in use when the record was created.
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

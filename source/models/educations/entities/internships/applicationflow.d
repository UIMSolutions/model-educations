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
        "businessProcessFlowInstanceId": sTRINGaTTRIBUTE, //	Unique identifier for entity instances	higherEducation/InternshipApplicationFlow
        "activeStageStartedOn": sTRINGaTTRIBUTE, //	Date and time when current active stage is started	higherEducation/InternshipApplicationFlow
        "bpf_Duration": sTRINGaTTRIBUTE, //	Duration of Business Process Flow	higherEducation/InternshipApplicationFlow
        "mshied_InternshipapplicantId": sTRINGaTTRIBUTE, //		higherEducation/InternshipApplicationFlow
        "name": sTRINGaTTRIBUTE, //	Description	higherEducation/InternshipApplicationFlow
        "completedOn": sTRINGaTTRIBUTE, //	Date and time when Business Process Flow instance is completed.	higherEducation/InternshipApplicationFlow
        "createdBy": sTRINGaTTRIBUTE, //	Unique identifier of the user who created the record.	higherEducation/InternshipApplicationFlow
        "createdOn": sTRINGaTTRIBUTE, //	Date and time when the record was created.	higherEducation/InternshipApplicationFlow
        "createdOnBehalfBy": sTRINGaTTRIBUTE, //	Unique identifier of the delegate user who created the record.	higherEducation/InternshipApplicationFlow
        "importSequenceNumber": sTRINGaTTRIBUTE, //	Sequence number of the import that created this record.	higherEducation/InternshipApplicationFlow
        "modifiedBy": sTRINGaTTRIBUTE, //	Unique identifier of the user who modified the record.	higherEducation/InternshipApplicationFlow
        "modifiedOn": sTRINGaTTRIBUTE, //	Date and time when the record was modified.	higherEducation/InternshipApplicationFlow
        "modifiedOnBehalfBy": sTRINGaTTRIBUTE, //	Unique identifier of the delegate user who modified the record.	higherEducation/InternshipApplicationFlow
        "organizationId": sTRINGaTTRIBUTE, //	Unique identifier for the organization	higherEducation/InternshipApplicationFlow
        "overriddenCreatedOn": sTRINGaTTRIBUTE, //	Date and time that the record was migrated.	higherEducation/InternshipApplicationFlow
        "stateCode": sTRINGaTTRIBUTE, //	Status of the Internship Application Flow	higherEducation/InternshipApplicationFlow
        "stateCode_display": sTRINGaTTRIBUTE, //		higherEducation/InternshipApplicationFlow
        "statusCode": sTRINGaTTRIBUTE, //	Reason for the status of the Internship Application Flow	higherEducation/InternshipApplicationFlow
        "statusCode_display": sTRINGaTTRIBUTE, //		higherEducation/InternshipApplicationFlow
        "timeZoneRuleVersionNumber": sTRINGaTTRIBUTE, //	For internal use only.	higherEducation/InternshipApplicationFlow
        "traversedPath": sTRINGaTTRIBUTE, //	Comma delimited string of process stage ids that represent visited stages of the Business Process Flow instance.	higherEducation/InternshipApplicationFlow
        "UTCConversionTimeZoneCode": sTRINGaTTRIBUTE, //	Time zone code that was in use when the record was created.	higherEducation/InternshipApplicationFlow
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

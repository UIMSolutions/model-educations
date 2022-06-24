module models.educations.entities.contact;

@safe:
import models.educations;

// Person with whom a business unit has a relationship, such as customer, supplier, and colleague.
class DContactEntity : DOOPEntity {
  mixin(EntityThis!("ContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Contact
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Contact
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Contact
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Contact
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Contact
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Contact
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Contact
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Contact
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Contact
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Contact
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Contact
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Contact
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Contact
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Contact
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Contact
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Contact
        "contactId": StringAttribute, //	Unique identifier of the contact.	higherEducation/Contact
        "customerSizeCode": StringAttribute, //	Select the size of the contact's company for segmentation and reporting purposes.	higherEducation/Contact
        "customerSizeCode_display": StringAttribute, //		higherEducation/Contact
        "customerTypeCode": StringAttribute, //	Select the category that best describes the relationship between the contact and your organization.	higherEducation/Contact
        "customerTypeCode_display": StringAttribute, //		higherEducation/Contact
        "preferredContactMethodCode": StringAttribute, //	Select the preferred method of contact.	higherEducation/Contact
        "preferredContactMethodCode_display": StringAttribute, //		higherEducation/Contact
        "leadSourceCode": StringAttribute, //	Select the primary marketing source that directed the contact to your organization.	higherEducation/Contact
        "leadSourceCode_display": StringAttribute, //		higherEducation/Contact
        "paymentTermsCode": StringAttribute, //	Select the payment terms to indicate when the customer needs to pay the total amount.	higherEducation/Contact
        "paymentTermsCode_display": StringAttribute, //		higherEducation/Contact
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Contact
        "shippingMethodCode_display": StringAttribute, //		higherEducation/Contact
        "accountId": StringAttribute, //	Unique identifier of the account with which the contact is associated.	higherEducation/Contact
        "participatesInWorkflow": StringAttribute, //	Shows whether the contact participates in workflow rules.	higherEducation/Contact
        "isBackofficeCustomer": StringAttribute, //	Select whether the contact exists in a separate accounting or other system, such as Microsoft Dynamics GP or another ERP database, for use in integration processes.	higherEducation/Contact
        "salutation": StringAttribute, //	Type the salutation of the contact to make sure the contact is addressed correctly in sales calls, email messages, and marketing campaigns.	higherEducation/Contact
        "jobTitle": StringAttribute, //	Type the job title of the contact to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	higherEducation/Contact
        "firstName": StringAttribute, //	Type the contact's first name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	higherEducation/Contact
        "department": StringAttribute, //	Type the department or business unit where the contact works in the parent company or business.	higherEducation/Contact
        "nickName": StringAttribute, //	Type the contact's nickname.	higherEducation/Contact
        "middleName": StringAttribute, //	Type the contact's middle name or initial to make sure the contact is addressed correctly.	higherEducation/Contact
        "lastName": StringAttribute, //	Type the contact's last name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	higherEducation/Contact
        "suffix": StringAttribute, //	Type the suffix used in the contact's name, such as Jr. or Sr. to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	higherEducation/Contact
        "yomiFirstName": StringAttribute, //	Type the phonetic spelling of the contact's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	higherEducation/Contact
        "fullName": StringAttribute, //	Combines and shows the contact's first and last names so that the full name can be displayed in views and reports.	higherEducation/Contact
        "yomiMiddleName": StringAttribute, //	Type the phonetic spelling of the contact's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	higherEducation/Contact
        "yomiLastName": StringAttribute, //	Type the phonetic spelling of the contact's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	higherEducation/Contact
        "anniversary": StringAttribute, //	Enter the date of the contact's wedding or service anniversary for use in customer gift programs or other communications.	higherEducation/Contact
        "birthDate": StringAttribute, //	Enter the contact's birthday for use in customer gift programs or other communications.	higherEducation/Contact
        "governmentId": StringAttribute, //	Type the passport number or other government ID for the contact for use in documents or reports.	higherEducation/Contact
        "yomiFullName": StringAttribute, //	Shows the combined Yomi first and last names of the contact so that the full phonetic name can be displayed in views and reports.	higherEducation/Contact
        "description": StringAttribute, //	Type additional information to describe the contact, such as an excerpt from the company's website.	higherEducation/Contact
        "employeeId": StringAttribute, //	Type the employee ID or number for the contact for reference in orders, service cases, or other communications with the contact's organization.	higherEducation/Contact
        "genderCode": StringAttribute, //	Select the contact's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	higherEducation/Contact
        "genderCode_display": StringAttribute, //		higherEducation/Contact
        "annualIncome": StringAttribute, //	Type the contact's annual income for use in profiling and financial analysis.	higherEducation/Contact
        "hasChildrenCode": StringAttribute, //	Select whether the contact has any children for reference in follow-up phone calls and other communications.	higherEducation/Contact
        "hasChildrenCode_display": StringAttribute, //		higherEducation/Contact
        "educationCode": StringAttribute, //	Select the contact's highest level of education for use in segmentation and analysis.	higherEducation/Contact
        "educationCode_display": StringAttribute, //		higherEducation/Contact
        "webSiteUrl": StringAttribute, //	Type the contact's professional or personal website or blog URL.	higherEducation/Contact
        "familyStatusCode": StringAttribute, //	Select the marital status of the contact for reference in follow-up phone calls and other communications.	higherEducation/Contact
        "familyStatusCode_display": StringAttribute, //		higherEducation/Contact
        "ftpSiteUrl": StringAttribute, //	Type the URL for the contact's FTP site to enable users to access data and share documents.	higherEducation/Contact
        "EMailAddress1": StringAttribute, //	Type the primary email address for the contact.	higherEducation/Contact
        "spousesName": StringAttribute, //	Type the name of the contact's spouse or partner for reference during calls, events, or other communications with the contact.	higherEducation/Contact
        "assistantName": StringAttribute, //	Type the name of the contact's assistant.	higherEducation/Contact
        "EMailAddress2": StringAttribute, //	Type the secondary email address for the contact.	higherEducation/Contact
        "assistantPhone": StringAttribute, //	Type the phone number for the contact's assistant.	higherEducation/Contact
        "EMailAddress3": StringAttribute, //	Type an alternate email address for the contact.	higherEducation/Contact
        "doNotPhone": StringAttribute, //	Select whether the contact accepts phone calls. If Do Not Allow is selected, the contact will be excluded from any phone call activities distributed in marketing campaigns.	higherEducation/Contact
        "managerName": StringAttribute, //	Type the name of the contact's manager for use in escalating issues or other follow-up communications with the contact.	higherEducation/Contact
        "managerPhone": StringAttribute, //	Type the phone number for the contact's manager.	higherEducation/Contact
        "doNotFax": StringAttribute, //	Select whether the contact allows faxes. If Do Not Allow is selected, the contact will be excluded from any fax activities distributed in marketing campaigns.	higherEducation/Contact
        "doNotEMail": StringAttribute, //	Select whether the contact allows direct email sent from Microsoft Dynamics 365. If Do Not Allow is selected, Microsoft Dynamics 365 will not send the email.	higherEducation/Contact
        "doNotPostalMail": StringAttribute, //	Select whether the contact allows direct mail. If Do Not Allow is selected, the contact will be excluded from letter activities distributed in marketing campaigns.	higherEducation/Contact
        "doNotBulkEMail": StringAttribute, //	Select whether the contact accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the email.	higherEducation/Contact
        "doNotBulkPostalMail": StringAttribute, //	Select whether the contact accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the letters.	higherEducation/Contact
        "accountRoleCode": StringAttribute, //	Select the contact's role within the company or sales process, such as decision maker, employee, or influencer.	higherEducation/Contact
        "accountRoleCode_display": StringAttribute, //		higherEducation/Contact
        "territoryCode": StringAttribute, //	Select a region or territory for the contact for use in segmentation and analysis.	higherEducation/Contact
        "territoryCode_display": StringAttribute, //		higherEducation/Contact
        "creditLimit": StringAttribute, //	Type the credit limit of the contact for reference when you address invoice and accounting issues with the customer.	higherEducation/Contact
        "creditOnHold": StringAttribute, //	Select whether the contact is on a credit hold, for reference when addressing invoice and accounting issues.	higherEducation/Contact
        "numberOfChildren": StringAttribute, //	Type the number of children the contact has for reference in follow-up phone calls and other communications.	higherEducation/Contact
        "childrensNames": StringAttribute, //	Type the names of the contact's children for reference in communications and client programs.	higherEducation/Contact
        "mobilePhone": StringAttribute, //	Type the mobile phone number for the contact.	higherEducation/Contact
        "pager": StringAttribute, //	Type the pager number for the contact.	higherEducation/Contact
        "telephone1": StringAttribute, //	Type the main phone number for this contact.	higherEducation/Contact
        "telephone2": StringAttribute, //	Type a second phone number for this contact.	higherEducation/Contact
        "telephone3": StringAttribute, //	Type a third phone number for this contact.	higherEducation/Contact
        "fax": StringAttribute, //	Type the fax number for the contact.	higherEducation/Contact
        "aging30": StringAttribute, //	For system use only.	higherEducation/Contact
        "stateCode": StringAttribute, //	Shows whether the contact is active or inactive. Inactive contacts are read-only and can't be edited unless they are reactivated.	higherEducation/Contact
        "stateCode_display": StringAttribute, //		higherEducation/Contact
        "aging60": StringAttribute, //	For system use only.	higherEducation/Contact
        "statusCode": StringAttribute, //	Select the contact's status.	higherEducation/Contact
        "statusCode_display": StringAttribute, //		higherEducation/Contact
        "aging90": StringAttribute, //	For system use only.	higherEducation/Contact
        "parentContactId": StringAttribute, //	Unique identifier of the parent contact.	higherEducation/Contact
        "address1AddressId": StringAttribute, //	Unique identifier for address n.	higherEducation/Contact
        "address1AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Contact
        "address1AddressTypeCode_display": StringAttribute, //		higherEducation/Contact
        "address1Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Contact
        "address1PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Contact
        "address1Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Contact
        "address1Line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Contact
        "address1Line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Contact
        "address1City": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Contact
        "address1StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Contact
        "address1County": StringAttribute, //	Type the county for the customer's address.	higherEducation/Contact
        "address1Country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Contact
        "address1PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Contact
        "address1PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Contact
        "address1UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Contact
        "address1FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Contact
        "address1FreightTermsCode_display": StringAttribute, //		higherEducation/Contact
        "address1UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Contact
        "address1Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address1Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Contact
        "address1Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address1ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Contact
        "address1ShippingMethodCode_display": StringAttribute, //		higherEducation/Contact
        "address1Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Contact
        "address1Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Contact
        "address1Fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Contact
        "address1Composite": StringAttribute, //	Shows the complete address.	higherEducation/Contact
        "address2AddressId": StringAttribute, //	Unique identifier for address n.	higherEducation/Contact
        "address2AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Contact
        "address2AddressTypeCode_display": StringAttribute, //		higherEducation/Contact
        "address2Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Contact
        "address2PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Contact
        "address2Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Contact
        "address2Line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Contact
        "address2Line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Contact
        "address2City": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Contact
        "address2StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Contact
        "address2County": StringAttribute, //	Type the county for the customer's address.	higherEducation/Contact
        "address2Country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Contact
        "address2PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Contact
        "address2PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Contact
        "address2UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Contact
        "address2FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Contact
        "address2FreightTermsCode_display": StringAttribute, //		higherEducation/Contact
        "address2UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Contact
        "address2Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address2Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Contact
        "address2Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address2ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Contact
        "address2ShippingMethodCode_display": StringAttribute, //		higherEducation/Contact
        "address2Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Contact
        "address2Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Contact
        "address2Fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Contact
        "address2Composite": StringAttribute, //	Shows the complete address.	higherEducation/Contact
        "address3AddressId": StringAttribute, //	Unique identifier for address n.	higherEducation/Contact
        "address3AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Contact
        "address3AddressTypeCode_display": StringAttribute, //		higherEducation/Contact
        "address3Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Contact
        "address3PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Contact
        "address3Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Contact
        "address3Line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Contact
        "address3Line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Contact
        "address3City": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Contact
        "address3StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Contact
        "address3County": StringAttribute, //	Type the county for the customer's address.	higherEducation/Contact
        "address3Country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Contact
        "address3PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Contact
        "address3PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Contact
        "address3UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Contact
        "address3FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Contact
        "address3FreightTermsCode_display": StringAttribute, //		higherEducation/Contact
        "address3UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Contact
        "address3Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address3Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Contact
        "address3Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Contact
        "address3ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Contact
        "address3ShippingMethodCode_display": StringAttribute, //		higherEducation/Contact
        "address3Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Contact
        "address3Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Contact
        "address3Fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Contact
        "address3Composite": StringAttribute, //	Shows the complete address.	higherEducation/Contact
        "preferredSystemUserId": StringAttribute, //	Choose the regular or preferred customer service representative for reference when scheduling service activities for the contact.	higherEducation/Contact
        "masterId": StringAttribute, //	Unique identifier of the master contact for merge.	higherEducation/Contact
        "preferredAppointmentDayCode": StringAttribute, //	Select the preferred day of the week for service appointments.	higherEducation/Contact
        "preferredAppointmentDayCode_display": StringAttribute, //		higherEducation/Contact
        "preferredAppointmentTimeCode": StringAttribute, //	Select the preferred time of day for service appointments.	higherEducation/Contact
        "preferredAppointmentTimeCode_display": StringAttribute, //		higherEducation/Contact
        "doNotSendMM": StringAttribute, //	Select whether the contact accepts marketing materials, such as brochures or catalogs. Contacts that opt out can be excluded from marketing initiatives.	higherEducation/Contact
        "parentCustomerId": StringAttribute, //	Select the parent account or parent contact for the contact to provide a quick link to additional details, such as financial information, activities, and opportunities.	higherEducation/Contact
        "parentCustomerIdType": StringAttribute, //	The type of parent customer, either Account or Contact.	higherEducation/Contact
        "merged": StringAttribute, //	Shows whether the account has been merged with a master contact.	higherEducation/Contact
        "externalUserIdentifier": StringAttribute, //	Identifier for an external user.	higherEducation/Contact
        "lastUsedInCampaign": StringAttribute, //	Shows the date when the contact was last included in a marketing campaign or quick campaign.	higherEducation/Contact
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	higherEducation/Contact
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	higherEducation/Contact
        "annualIncomeBase": StringAttribute, //	Shows the Annual Income field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Contact
        "creditLimitBase": StringAttribute, //	Shows the Credit Limit field converted to the system's default base currency for reporting purposes. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Contact
        "aging60Base": StringAttribute, //	Shows the Aging 60 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Contact
        "aging90Base": StringAttribute, //	Shows the Aging 90 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Contact
        "aging30Base": StringAttribute, //	Shows the Aging 30 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Contact
        "stageId": StringAttribute, //	Shows the ID of the stage.	higherEducation/Contact
        "processId": StringAttribute, //	Shows the ID of the process.	higherEducation/Contact
        "entityImageId": StringAttribute, //	For internal use only.	higherEducation/Contact
        "traversedPath": StringAttribute, //	For internal use only.	higherEducation/Contact
        "SLAId": StringAttribute, //	Choose the service level agreement (SLA) that you want to apply to the Contact record.	higherEducation/Contact
        "SLAInvokedId": StringAttribute, //	Last SLA that was applied to this case. This field is for internal use only.	higherEducation/Contact
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	higherEducation/Contact
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	higherEducation/Contact
        "followEmail": StringAttribute, //	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the contact.	higherEducation/Contact
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, //	Total time spent for emails (read and write) and meetings by me in relation to the contact record.	higherEducation/Contact
        "business2": StringAttribute, //	Type a second business phone number for this contact.	higherEducation/Contact
        "callback": StringAttribute, //	Type a callback phone number for this contact.	higherEducation/Contact
        "company": StringAttribute, //	Type the company phone of the contact.	higherEducation/Contact
        "home2": StringAttribute, //	Type a second home phone number for this contact.	higherEducation/Contact
        "createdByExternalParty": StringAttribute, //	Shows the external party who created the record.	higherEducation/Contact
        "modifiedByExternalParty": StringAttribute, //	Shows the external party who modified the record.	higherEducation/Contact
        "marketingOnly": StringAttribute, //	Whether is only for marketing	higherEducation/Contact
        "contactType": StringAttribute, //	Type of contact	higherEducation/Contact
        "contactType_display": StringAttribute, //		higherEducation/Contact
        "countryofBirth": StringAttribute, //	Country of birth for the contact.	higherEducation/Contact
        "countryofBirth_display": StringAttribute, //		higherEducation/Contact
        "currentAcademicPeriodId": StringAttribute, //	Current academic period enrolled, if any, for the contact.	higherEducation/Contact
        "currentProgramId": StringAttribute, //	Current program for the contact.	higherEducation/Contact
        "currentProgramLevelId": StringAttribute, //	Current program level associated to the program for the contact.	higherEducation/Contact
        "ethnicGroup": StringAttribute, //	Ethnic group for the contact.	higherEducation/Contact
        "ethnicGroup_display": StringAttribute, //		higherEducation/Contact
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/Contact
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/Contact
        "externalSourceSystem_display": StringAttribute, //		higherEducation/Contact
        "FERPAPrivacy": StringAttribute, //	Indicates if the Contact has elected to withhold directory information pursuant to FERPA (USA Federal Education Rights and Privacy Act).	higherEducation/Contact
        "firstGeneration": StringAttribute, //	Indicates if contact is a first generation student.	higherEducation/Contact
        "HIPAAIndicator": StringAttribute, //	Indicates if the Contact record includes information such as disability services requests that are protected by HIPAA (USA Health Insurance Portability and Accountability Act standards).	higherEducation/Contact
        "isDeceased": StringAttribute, //	If updated to YES, will deactivate Contact as deceased and change all marketing preferences to "Do Not Allow"	higherEducation/Contact
        "lastPermanentResidenceCountry": StringAttribute, //	Last country of permanent residence for the contact.	higherEducation/Contact
        "lastPermanentResidenceCountry_display": StringAttribute, //		higherEducation/Contact
        "legacy": StringAttribute, //	Identifies a Contact that is part of a legacy of contacts	higherEducation/Contact
        "maidenName": StringAttribute, //	Maiden Name	higherEducation/Contact
        "manualRiskScore": StringAttribute, //	Manual Risk Score	higherEducation/Contact
        "miltaryStatus": StringAttribute, //	Indicates the military service record for the contact.	higherEducation/Contact
        "miltaryStatus_display": StringAttribute, //		higherEducation/Contact
        "nationalIdentifier": StringAttribute, //	Unique Identifier or Student SSN	higherEducation/Contact
        "nationality": StringAttribute, //	Country of nationality for the contact.	higherEducation/Contact
        "nationality_display": StringAttribute, //		higherEducation/Contact
        "race": StringAttribute, //	Race of the contact	higherEducation/Contact
        "race_display": StringAttribute, //		higherEducation/Contact
        "studentStatusId": StringAttribute, //		higherEducation/Contact
      ])
      .registerPath("education_contacts");
  }
}
mixin(EntityCalls!("ContactEntity"));


version(test_model_education) {
  unittest {
    assert(ContactEntity);

    auto entity = ContactEntity;
  }
}
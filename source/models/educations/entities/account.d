module models.educations.entities.account;

@safe:
import models.educations;

// Business that represents a customer or potential customer. The company that is billed in business transactions.
class DAccountEntity : DOOPEntity {
  mixin(EntityThis!("AccountEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOn": StringAttribute, //	Date and time when the record was created.	higherEducation/Account
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Account
        "modifiedOn": StringAttribute, //	Date and time when the record was modified.	higherEducation/Account
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Account
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Account
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Account
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Account
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Account
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Account
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Account
        "owningBusinessUnit": StringAttribute, //	Unique identifier for the business unit that owns the record	higherEducation/Account
        "owningUser": StringAttribute, //	Unique identifier of the user that owns the activity.	higherEducation/Account
        "owningTeam": StringAttribute, //	Unique identifier for the team that owns the record.	higherEducation/Account
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Account
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Account
        "versionNumber": StringAttribute, //	Version Number	higherEducation/Account
        "accountId": StringAttribute, //	Unique identifier of the account.	higherEducation/Account
        "accountCategoryCode": StringAttribute, //	Select a category to indicate whether the customer account is standard or preferred.	higherEducation/Account
        "accountCategoryCode_display": StringAttribute, //		higherEducation/Account
        "customerSizeCode": StringAttribute, //	Select the size category or range of the account for segmentation and reporting purposes.	higherEducation/Account
        "customerSizeCode_display": StringAttribute, //		higherEducation/Account
        "preferredContactMethodCode": StringAttribute, //	Select the preferred method of contact.	higherEducation/Account
        "preferredContactMethodCode_display": StringAttribute, //		higherEducation/Account
        "customerTypeCode": StringAttribute, //	Select the category that best describes the relationship between the account and your organization.	higherEducation/Account
        "customerTypeCode_display": StringAttribute, //		higherEducation/Account
        "accountRatingCode": StringAttribute, //	Select a rating to indicate the value of the customer account.	higherEducation/Account
        "accountRatingCode_display": StringAttribute, //		higherEducation/Account
        "industryCode": StringAttribute, //	Select the account's primary industry for use in marketing segmentation and demographic analysis.	higherEducation/Account
        "industryCode_display": StringAttribute, //		higherEducation/Account
        "territoryCode": StringAttribute, //	Select a region or territory for the account for use in segmentation and analysis.	higherEducation/Account
        "territoryCode_display": StringAttribute, //		higherEducation/Account
        "accountClassificationCode": StringAttribute, //	Select a classification code to indicate the potential value of the customer account based on the projected return on investment, cooperation level, sales cycle length or other criteria.	higherEducation/Account
        "accountClassificationCode_display": StringAttribute, //		higherEducation/Account
        "businessTypeCode": StringAttribute, //	Select the legal designation or other business type of the account for contracts or reporting purposes.	higherEducation/Account
        "businessTypeCode_display": StringAttribute, //		higherEducation/Account
        "traversedPath": StringAttribute, //	For internal use only.	higherEducation/Account
        "paymentTermsCode": StringAttribute, //	Select the payment terms to indicate when the customer needs to pay the total amount.	higherEducation/Account
        "paymentTermsCode_display": StringAttribute, //		higherEducation/Account
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to the account's address to designate the preferred carrier or other delivery option.	higherEducation/Account
        "shippingMethodCode_display": StringAttribute, //		higherEducation/Account
        "primaryContactId": StringAttribute, //	Choose the primary contact for the account to provide quick access to contact details.	higherEducation/Account
        "participatesInWorkflow": StringAttribute, //	For system use only. Legacy Microsoft Dynamics CRM 3.0 workflow data.	higherEducation/Account
        "name": StringAttribute, //	Type the company or business name.	higherEducation/Account
        "accountNumber": StringAttribute, //	Type an ID number or code for the account to quickly search and identify the account in system views.	higherEducation/Account
        "revenue": StringAttribute, //	Type the annual revenue for the account, used as an indicator in financial performance analysis.	higherEducation/Account
        "numberOfEmployees": StringAttribute, //	Type the number of employees that work at the account for use in marketing segmentation and demographic analysis.	higherEducation/Account
        "description": StringAttribute, //	Type additional information to describe the account, such as an excerpt from the company's website.	higherEducation/Account
        "SIC": StringAttribute, //	Type the Standard Industrial Classification (SIC) code that indicates the account's primary industry of business, for use in marketing segmentation and demographic analysis.	higherEducation/Account
        "ownershipCode": StringAttribute, //	Select the account's ownership structure, such as public or private.	higherEducation/Account
        "ownershipCode_display": StringAttribute, //		higherEducation/Account
        "marketCap": StringAttribute, //	Type the market capitalization of the account to identify the company's equity, used as an indicator in financial performance analysis.	higherEducation/Account
        "sharesOutstanding": StringAttribute, //	Type the number of shares available to the public for the account. This number is used as an indicator in financial performance analysis.	higherEducation/Account
        "tickerSymbol": StringAttribute, //	Type the stock exchange symbol for the account to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money.	higherEducation/Account
        "stockExchange": StringAttribute, //	Type the stock exchange at which the account is listed to track their stock and financial performance of the company.	higherEducation/Account
        "webSiteUrl": StringAttribute, //	Type the account's website URL to get quick details about the company profile.	higherEducation/Account
        "ftpSiteUrl": StringAttribute, //	Type the URL for the account's FTP site to enable users to access data and share documents.	higherEducation/Account
        "EMailAddress1": StringAttribute, //	Type the primary email address for the account.	higherEducation/Account
        "EMailAddress2": StringAttribute, //	Type the secondary email address for the account.	higherEducation/Account
        "EMailAddress3": StringAttribute, //	Type an alternate email address for the account.	higherEducation/Account
        "doNotPhone": StringAttribute, //	Select whether the account allows phone calls. If Do Not Allow is selected, the account will be excluded from phone call activities distributed in marketing campaigns.	higherEducation/Account
        "doNotFax": StringAttribute, //	Select whether the account allows faxes. If Do Not Allow is selected, the account will be excluded from fax activities distributed in marketing campaigns.	higherEducation/Account
        "telephone1": StringAttribute, //	Type the main phone number for this account.	higherEducation/Account
        "doNotEMail": StringAttribute, //	Select whether the account allows direct email sent from Microsoft Dynamics 365.	higherEducation/Account
        "telephone2": StringAttribute, //	Type a second phone number for this account.	higherEducation/Account
        "fax": StringAttribute, //	Type the fax number for the account.	higherEducation/Account
        "telephone3": StringAttribute, //	Type a third phone number for this account.	higherEducation/Account
        "doNotPostalMail": StringAttribute, //	Select whether the account allows direct mail. If Do Not Allow is selected, the account will be excluded from letter activities distributed in marketing campaigns.	higherEducation/Account
        "doNotBulkEMail": StringAttribute, //	Select whether the account allows bulk email sent through campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but is excluded from email.	higherEducation/Account
        "doNotBulkPostalMail": StringAttribute, //	Select whether the account allows bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but will be excluded from the postal mail.	higherEducation/Account
        "creditLimit": StringAttribute, //	Type the credit limit of the account. This is a useful reference when you address invoice and accounting issues with the customer.	higherEducation/Account
        "creditOnHold": StringAttribute, //	Select whether the credit for the account is on hold. This is a useful reference while addressing the invoice and accounting issues with the customer.	higherEducation/Account
        "parentAccountId": StringAttribute, //	Choose the parent account associated with this account to show parent and child businesses in reporting and analytics.	higherEducation/Account
        "aging30": StringAttribute, //	For system use only.	higherEducation/Account
        "stateCode": StringAttribute, //	Shows whether the account is active or inactive. Inactive accounts are read-only and can't be edited unless they are reactivated.	higherEducation/Account
        "stateCode_display": StringAttribute, //		higherEducation/Account
        "aging60": StringAttribute, //	For system use only.	higherEducation/Account
        "statusCode": StringAttribute, //	Select the account's status.	higherEducation/Account
        "statusCode_display": StringAttribute, //		higherEducation/Account
        "aging90": StringAttribute, //	For system use only.	higherEducation/Account
        "address1AddressId": StringAttribute, //	Unique identifier for address 1.	higherEducation/Account
        "address1AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Account
        "address1AddressTypeCode_display": StringAttribute, //		higherEducation/Account
        "address1Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Account
        "address1PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Account
        "address1Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Account
        "address1Line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Account
        "address1Line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Account
        "address1City": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Account
        "address1StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Account
        "address1County": StringAttribute, //	Type the county for the customer's address.	higherEducation/Account
        "address1Country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Account
        "address1PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Account
        "address1PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Account
        "address1UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Account
        "address1FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Account
        "address1FreightTermsCode_display": StringAttribute, //		higherEducation/Account
        "address1UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Account
        "address1Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Account
        "address1Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Account
        "address1Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Account
        "address1ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Account
        "address1ShippingMethodCode_display": StringAttribute, //		higherEducation/Account
        "address1Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Account
        "address1Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Account
        "address1Fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Account
        "address1Composite": StringAttribute, //	Shows the complete address.	higherEducation/Account
        "address1EndDate": StringAttribute, //	End Date	higherEducation/Account
        "address1ExternalIdentifier": StringAttribute, //	External Identifier	higherEducation/Account
        "address1ExternalSourceSystem": StringAttribute, //	External Source System	higherEducation/Account
        "address1ExternalSourceSystem_display": StringAttribute, //		higherEducation/Account
        "address1MailType": StringAttribute, //	Indicate address as Primary or Seasonal	higherEducation/Account
        "address1MailType_display": StringAttribute, //		higherEducation/Account
        "address1StartDate": StringAttribute, //	Start Date	higherEducation/Account
        "address2AddressId": StringAttribute, //	Unique identifier for address 1.	higherEducation/Account
        "address2AddressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Account
        "address2AddressTypeCode_display": StringAttribute, //		higherEducation/Account
        "address2Name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Account
        "address2PrimaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Account
        "address2Line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Account
        "address2Line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Account
        "address2Line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Account
        "address2City": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Account
        "address2StateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Account
        "address2County": StringAttribute, //	Type the county for the customer's address.	higherEducation/Account
        "address2Country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Account
        "address2PostOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Account
        "address2PostalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Account
        "address2UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Account
        "address2FreightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Account
        "address2FreightTermsCode_display": StringAttribute, //		higherEducation/Account
        "address2UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Account
        "address2Latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Account
        "address2Telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Account
        "address2Longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Account
        "address2ShippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Account
        "address2ShippingMethodCode_display": StringAttribute, //		higherEducation/Account
        "address2Telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Account
        "address2Telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Account
        "address2Fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Account
        "address2Composite": StringAttribute, //	Shows the complete address.	higherEducation/Account
        "address2EndDate": StringAttribute, //	End Date	higherEducation/Account
        "address2ExternalIdentifier": StringAttribute, //	External Identifier	higherEducation/Account
        "address2ExternalSourceSystem": StringAttribute, //	External Source System	higherEducation/Account
        "address2ExternalSourceSystem_display": StringAttribute, //		higherEducation/Account
        "address2MailType": StringAttribute, //	Indicate address as Primary or Seasonal	higherEducation/Account
        "address2MailType_display": StringAttribute, //		higherEducation/Account
        "address2StartDate": StringAttribute, //	Start Date	higherEducation/Account
        "preferredAppointmentDayCode": StringAttribute, //	Select the preferred day of the week for service appointments.	higherEducation/Account
        "preferredAppointmentDayCode_display": StringAttribute, //		higherEducation/Account
        "preferredSystemUserId": StringAttribute, //	Choose the preferred service representative for reference when you schedule service activities for the account.	higherEducation/Account
        "preferredAppointmentTimeCode": StringAttribute, //	Select the preferred time of day for service appointments.	higherEducation/Account
        "preferredAppointmentTimeCode_display": StringAttribute, //		higherEducation/Account
        "merged": StringAttribute, //	Shows whether the account has been merged with another account.	higherEducation/Account
        "doNotSendMM": StringAttribute, //	Select whether the account accepts marketing materials, such as brochures or catalogs.	higherEducation/Account
        "masterId": StringAttribute, //	Shows the master account that the account was merged with.	higherEducation/Account
        "lastUsedInCampaign": StringAttribute, //	Shows the date when the account was last included in a marketing campaign or quick campaign.	higherEducation/Account
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	higherEducation/Account
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	higherEducation/Account
        "creditLimitBase": StringAttribute, //	Shows the credit limit converted to the system's default base currency for reporting purposes.	higherEducation/Account
        "aging30Base": StringAttribute, //	The base currency equivalent of the aging 30 field.	higherEducation/Account
        "revenueBase": StringAttribute, //	Shows the annual revenue converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	higherEducation/Account
        "aging90Base": StringAttribute, //	The base currency equivalent of the aging 90 field.	higherEducation/Account
        "marketCapBase": StringAttribute, //	Shows the market capitalization converted to the system's default base currency.	higherEducation/Account
        "aging60Base": StringAttribute, //	The base currency equivalent of the aging 60 field.	higherEducation/Account
        "yomiName": StringAttribute, //	Type the phonetic spelling of the company name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications.	higherEducation/Account
        "stageId": StringAttribute, //	Shows the ID of the stage.	higherEducation/Account
        "processId": StringAttribute, //	Shows the ID of the process.	higherEducation/Account
        "entityImageId": StringAttribute, //	For internal use only.	higherEducation/Account
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, //	Total time spent for emails (read and write) and meetings by me in relation to account record.	higherEducation/Account
        "createdByExternalParty": StringAttribute, //	Shows the external party who created the record.	higherEducation/Account
        "modifiedByExternalParty": StringAttribute, //	Shows the external party who modified the record.	higherEducation/Account
        "primarySatoriId": StringAttribute, //	Primary Satori ID for Account	higherEducation/Account
        "primaryTwitterId": StringAttribute, //	Primary Twitter ID for Account	higherEducation/Account
        "SLAId": StringAttribute, //	Choose the service level agreement (SLA) that you want to apply to the Account record.	higherEducation/Account
        "SLAInvokedId": StringAttribute, //	Last SLA that was applied to this case. This field is for internal use only.	higherEducation/Account
        "onHoldTime": StringAttribute, //	Shows how long, in minutes, that the record was on hold.	higherEducation/Account
        "lastOnHoldTime": StringAttribute, //	Contains the date and time stamp of the last on hold time.	higherEducation/Account
        "followEmail": StringAttribute, //	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.	higherEducation/Account
        "marketingOnly": StringAttribute, //	Whether is only for marketing	higherEducation/Account
        "accountType": StringAttribute, //	Type of Account	higherEducation/Account
        "accountType_display": StringAttribute, //		higherEducation/Account
        "externalIdentifier": StringAttribute, //		higherEducation/Account
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/Account
        "externalSourceSystem_display": StringAttribute, //		higherEducation/Account
        "numberofContacts": StringAttribute, //	Rollup count of number of associated Contacts where this is their Associated Campus.	higherEducation/Account

      ])
      .registerPath("education_accounts");
  }
}
mixin(EntityCalls!("AccountEntity"));


version(test_model_education) {
  unittest {
    assert(AccountEntity);

    auto entity = AccountEntity;
  }
}
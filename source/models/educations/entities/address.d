module models.educations.entities.address;

@safe:
import models.educations;

// Address and shipping information. Used to store additional addresses for an account or contact.
class DAddressEntity : DOOPEntity {
  mixin(EntityThis!("AddressEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "parentId": StringAttribute, //	Choose the customer's address.	higherEducation/Address
        "parentIdTypeCode": StringAttribute, //	The name of the entity linked by parentId	higherEducation/Address
        "customerAddressId": StringAttribute, //	Unique identifier of the customer address.	higherEducation/Address
        "addressNumber": StringAttribute, //	Shows the number of the address, to indicate whether the address is the primary, secondary, or other address for the customer.	higherEducation/Address
        "objectTypeCode": StringAttribute, //	Shows the type code of the customer record to indicate whether the address belongs to a customer account or contact.	higherEducation/Address
        "objectTypeCode_display": StringAttribute, //		higherEducation/Address
        "addressTypeCode": StringAttribute, //	Select the address type, such as primary or billing.	higherEducation/Address
        "addressTypeCode_display": StringAttribute, //		higherEducation/Address
        "name": StringAttribute, //	Type a descriptive name for the customer's address, such as Corporate Headquarters.	higherEducation/Address
        "primaryContactName": StringAttribute, //	Type the name of the primary contact person for the customer's address.	higherEducation/Address
        "line1": StringAttribute, //	Type the first line of the customer's address to help identify the location.	higherEducation/Address
        "line2": StringAttribute, //	Type the second line of the customer's address.	higherEducation/Address
        "line3": StringAttribute, //	Type the third line of the customer's address.	higherEducation/Address
        "city": StringAttribute, //	Type the city for the customer's address to help identify the location.	higherEducation/Address
        "stateOrProvince": StringAttribute, //	Type the state or province of the customer's address.	higherEducation/Address
        "county": StringAttribute, //	Type the county for the customer's address.	higherEducation/Address
        "country": StringAttribute, //	Type the country or region for the customer's address.	higherEducation/Address
        "postOfficeBox": StringAttribute, //	Type the post office box number of the customer's address.	higherEducation/Address
        "postalCode": StringAttribute, //	Type the ZIP Code or postal code for the address.	higherEducation/Address
        "UTCOffset": StringAttribute, //	Select the time zone for the address.	higherEducation/Address
        "freightTermsCode": StringAttribute, //	Select the freight terms to make sure shipping charges are processed correctly.	higherEducation/Address
        "freightTermsCode_display": StringAttribute, //		higherEducation/Address
        "UPSZone": StringAttribute, //	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	higherEducation/Address
        "latitude": StringAttribute, //	Type the latitude value for the customer's address, for use in mapping and other applications.	higherEducation/Address
        "telephone1": StringAttribute, //	Type the primary phone number for the customer's address.	higherEducation/Address
        "longitude": StringAttribute, //	Type the longitude value for the customer's address, for use in mapping and other applications.	higherEducation/Address
        "shippingMethodCode": StringAttribute, //	Select a shipping method for deliveries sent to this address.	higherEducation/Address
        "shippingMethodCode_display": StringAttribute, //		higherEducation/Address
        "telephone2": StringAttribute, //	Type a second phone number for the customer's address.	higherEducation/Address
        "telephone3": StringAttribute, //	Type a third phone number for the customer's address.	higherEducation/Address
        "fax": StringAttribute, //	Type the fax number associated with the customer's address.	higherEducation/Address
        "versionNumber": StringAttribute, //	Version number of the customer address.	higherEducation/Address
        "createdBy": StringAttribute, //	Shows who created the record.	higherEducation/Address
        "createdOn": StringAttribute, //	Shows the date and time when the record was created. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	higherEducation/Address
        "modifiedBy": StringAttribute, //	Shows who last updated the record.	higherEducation/Address
        "modifiedOn": StringAttribute, //	Shows the date and time when the record was last updated. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.	higherEducation/Address
        "owningBusinessUnit": StringAttribute, //	Shows the business unit that the record owner belongs to.	higherEducation/Address
        "owningUser": StringAttribute, //	Unique identifier of the user who owns the customer address.	higherEducation/Address
        "timeZoneRuleVersionNumber": StringAttribute, //	For internal use only.	higherEducation/Address
        "overriddenCreatedOn": StringAttribute, //	Date and time that the record was migrated.	higherEducation/Address
        "UTCConversionTimeZoneCode": StringAttribute, //	Time zone code that was in use when the record was created.	higherEducation/Address
        "importSequenceNumber": StringAttribute, //	Unique identifier of the data import or data migration that created this record.	higherEducation/Address
        "ownerId": StringAttribute, //	Owner Id	higherEducation/Address
        "ownerIdType": StringAttribute, //	The type of owner, either User or Team.	higherEducation/Address
        "createdOnBehalfBy": StringAttribute, //	Shows who created the record on behalf of another user.	higherEducation/Address
        "modifiedOnBehalfBy": StringAttribute, //	Shows who last updated the record on behalf of another user.	higherEducation/Address
        "transactionCurrencyId": StringAttribute, //	Choose the local currency for the record to make sure budgets are reported in the correct currency.	higherEducation/Address
        "exchangeRate": StringAttribute, //	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	higherEducation/Address
        "composite": StringAttribute, //	Shows the complete address.	higherEducation/Address
        "endDate": StringAttribute, //	End Date	higherEducation/Address
        "externalIdentifier": StringAttribute, //	External Identifier	higherEducation/Address
        "externalSourceSystem": StringAttribute, //	External Source System	higherEducation/Address
        "externalSourceSystem_display": StringAttribute, //		higherEducation/Address
        "mailType": StringAttribute, //	Indicate address as Primary or Seasonal	higherEducation/Address
        "mailType_display": StringAttribute, //		higherEducation/Address
        "startDate": StringAttribute, //	Start Date	higherEducation/Address

      ])
      .registerPath("education_addresses");
  }
}
mixin(EntityCalls!("AddressEntity"));


version(test_model_education) {
  unittest {
    assert(AddressEntity);

    auto entity = AddressEntity;
  }
}
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xi="http://www.w3.org/2001/XInclude"
        xmlns:u="utils"
        schemaVersion="iso"
        queryBinding="xslt2">

  <title>Norwegian rules for EHF Order Agreement</title>

  <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
       prefix="cbc"/>
  <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
       prefix="cac"/>
  <ns uri="urn:oasis:names:specification:ubl:schema:xsd:OrderResponse-2"
       prefix="ubl"/>

  <pattern xmlns:ns2="http://www.schematron-quickfix.com/validator/process">
      <rule context="/ubl:OrderResponse">
         <assert test="cbc:UBLVersionID" flag="warning" id="EHF-T110-B00101">Element 'cbc:UBLVersionID' MUST be provided.</assert>
         <assert test="cbc:CustomizationID" flag="warning" id="EHF-T110-B00102">Element 'cbc:CustomizationID' MUST be provided.</assert>
         <assert test="cbc:ProfileID" flag="warning" id="EHF-T110-B00103">Element 'cbc:ProfileID' MUST be provided.</assert>
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B00104">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cbc:IssueDate" flag="warning" id="EHF-T110-B00105">Element 'cbc:IssueDate' MUST be provided.</assert>
         <assert test="cac:OrderReference" flag="warning" id="EHF-T110-B00106">Element 'cac:OrderReference' MUST be provided.</assert>
         <assert test="cac:SellerSupplierParty" flag="warning" id="EHF-T110-B00107">Element 'cac:SellerSupplierParty' MUST be provided.</assert>
         <assert test="cac:BuyerCustomerParty" flag="warning" id="EHF-T110-B00108">Element 'cac:BuyerCustomerParty' MUST be provided.</assert>
         <assert test="cac:OrderLine" flag="warning" id="EHF-T110-B00109">Element 'cac:OrderLine' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cbc:UBLVersionID">
         <assert test="normalize-space(text()) = '2.1'"
                 flag="warning"
                 id="EHF-T110-B00201">Element 'cbc:UBLVersionID' MUST contain value '2.1'.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cbc:CustomizationID"/>
      <rule context="/ubl:OrderResponse/cbc:ProfileID"/>
      <rule context="/ubl:OrderResponse/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cbc:IssueDate"/>
      <rule context="/ubl:OrderResponse/cbc:IssueTime"/>
      <rule context="/ubl:OrderResponse/cbc:Note"/>
      <rule context="/ubl:OrderResponse/cbc:DocumentCurrencyCode"/>
      <rule context="/ubl:OrderResponse/cbc:CustomerReference"/>
      <rule context="/ubl:OrderResponse/cac:OrderReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B01101">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderReference/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B01301">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cbc:DocumentType"/>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cac:Attachment"/>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cac:Attachment/cbc:EmbeddedDocumentBinaryObject">
         <assert test="@mimeCode" flag="warning" id="EHF-T110-B01701">Attribute 'mimeCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference">
         <assert test="cbc:URI" flag="warning" id="EHF-T110-B01901">Element 'cbc:URI' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:URI"/>
      <rule context="/ubl:OrderResponse/cac:Contact"/>
      <rule context="/ubl:OrderResponse/cac:Contact/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:Contact/cbc:ContractType"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty">
         <assert test="cac:Party" flag="warning" id="EHF-T110-B02401">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party">
         <assert test="cbc:EndpointID" flag="warning" id="EHF-T110-B02501">Element 'cbc:EndpointID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cbc:EndpointID"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B02801">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B03101">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cbc:StreetName"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cbc:AdditionalStreetName"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cbc:CityName"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cbc:PostalZone"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cac:Country">
         <assert test="cbc:IdentificationCode" flag="warning" id="EHF-T110-B03901">Element 'cbc:IdentificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Telephone"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Telefax"/>
      <rule context="/ubl:OrderResponse/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty">
         <assert test="cac:Party" flag="warning" id="EHF-T110-B04801">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party">
         <assert test="cbc:EndpointID" flag="warning" id="EHF-T110-B04901">Element 'cbc:EndpointID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cbc:EndpointID"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B05201">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B05501">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:AdditionalStreetName"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cac:Country">
         <assert test="cbc:IdentificationCode" flag="warning" id="EHF-T110-B06301">Element 'cbc:IdentificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:DeliveryContact"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:DeliveryContact/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:DeliveryContact/cbc:Telephone"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:DeliveryContact/cbc:Telefax"/>
      <rule context="/ubl:OrderResponse/cac:BuyerCustomerParty/cac:Party/cac:DeliveryContact/cbc:ElectronicMail"/>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty"/>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty/cac:Party"/>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B07301">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B07601">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OriginatorCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty"/>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty/cac:Party"/>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B08001">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B08301">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AccountingCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:Delivery"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:PromisedDeliveryPeriod">
         <assert test="cbc:StartDate" flag="warning" id="EHF-T110-B08601">Element 'cbc:StartDate' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:StartDate"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:StartTime"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:EndDate"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:EndTime"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:DeliveryParty"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:DeliveryParty/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B09201">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:DeliveryParty/cac:PartyIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:DeliveryParty/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B09501">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:Delivery/cac:DeliveryParty/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cbc:SpecialTerms"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cbc:StreetName"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cbc:AdditionalStreetName"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cbc:CityName"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cbc:PostalZone"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cbc:CountrySubentity"/>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cac:Country">
         <assert test="cbc:IdentificationCode" flag="warning" id="EHF-T110-B10801">Element 'cbc:IdentificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:DeliveryTerms/cac:DeliveryLocation/cac:Address/cac:Country/cbc:IdentificationCode"/>
      <rule context="/ubl:OrderResponse/cac:AllowanceCharge">
         <assert test="cbc:ChargeIndicator" flag="warning" id="EHF-T110-B11101">Element 'cbc:ChargeIndicator' MUST be provided.</assert>
         <assert test="cbc:Amount" flag="warning" id="EHF-T110-B11102">Element 'cbc:Amount' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:AllowanceCharge/cbc:ChargeIndicator"/>
      <rule context="/ubl:OrderResponse/cac:AllowanceCharge/cbc:AllowanceChargeReason"/>
      <rule context="/ubl:OrderResponse/cac:AllowanceCharge/cbc:Amount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B11401">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal">
         <assert test="cbc:TaxAmount" flag="warning" id="EHF-T110-B11601">Element 'cbc:TaxAmount' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cbc:TaxAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B11701">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal">
         <assert test="cbc:TaxAmount" flag="warning" id="EHF-T110-B11901">Element 'cbc:TaxAmount' MUST be provided.</assert>
         <assert test="cac:TaxCategory" flag="warning" id="EHF-T110-B11902">Element 'cac:TaxCategory' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B12001">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cbc:TaxAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B12201">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory">
         <assert test="cac:TaxScheme" flag="warning" id="EHF-T110-B12401">Element 'cac:TaxScheme' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:Percent"/>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B12901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal">
         <assert test="cbc:LineExtensionAmount" flag="warning" id="EHF-T110-B13101">Element 'cbc:LineExtensionAmount' MUST be provided.</assert>
         <assert test="cbc:TaxExclusiveAmount" flag="warning" id="EHF-T110-B13102">Element 'cbc:TaxExclusiveAmount' MUST be provided.</assert>
         <assert test="cbc:TaxInclusiveAmount" flag="warning" id="EHF-T110-B13103">Element 'cbc:TaxInclusiveAmount' MUST be provided.</assert>
         <assert test="cbc:PayableAmount" flag="warning" id="EHF-T110-B13104">Element 'cbc:PayableAmount' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B13201">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:TaxExclusiveAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B13401">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B13601">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B13801">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:ChargeTotalAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B14001">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:PrepaidAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B14201">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:PayableRoundingAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B14401">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:LegalMonetaryTotal/cbc:PayableAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B14601">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine">
         <assert test="cac:LineItem" flag="warning" id="EHF-T110-B14801">Element 'cac:LineItem' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B14901">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cbc:Quantity" flag="warning" id="EHF-T110-B14902">Element 'cbc:Quantity' MUST be provided.</assert>
         <assert test="cac:Price" flag="warning" id="EHF-T110-B14903">Element 'cac:Price' MUST be provided.</assert>
         <assert test="cac:Item" flag="warning" id="EHF-T110-B14904">Element 'cac:Item' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:Note"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:Quantity"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:LineExtensionAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B15401">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cbc:TotalTaxAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B15601">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cbc:Quantity"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cac:PromisedDeliveryPeriod">
         <assert test="cbc:StartDate" flag="warning" id="EHF-T110-B16101">Element 'cbc:StartDate' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:StartDate"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:StartTime"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:EndDate"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Delivery/cac:PromisedDeliveryPeriod/cbc:EndTime"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Price">
         <assert test="cbc:PriceAmount" flag="warning" id="EHF-T110-B16601">Element 'cbc:PriceAmount' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Price/cbc:PriceAmount">
         <assert test="@currencyID" flag="warning" id="EHF-T110-B16701">Attribute 'currencyID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Price/cbc:BaseQuantity"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cbc:Description"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:SellersItemIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B17401">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:SellersItemIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:StandardItemIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B17601">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:StandardItemIdentification/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B17901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cbc:DocumentType"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cac:Attachment"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cac:Attachment/cbc:EmbeddedDocumentBinaryObject">
         <assert test="@mimeCode" flag="warning" id="EHF-T110-B18301">Attribute 'mimeCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cac:Attachment/cac:ExternalReference"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ItemSpecificationDocumentReference/cac:Attachment/cac:ExternalReference/cbc:URI"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:CommodityClassification">
         <assert test="cbc:ItemClassificationCode"
                 flag="warning"
                 id="EHF-T110-B18701">Element 'cbc:ItemClassificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:TransactionConditions">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B19001">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:TransactionConditions/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ClassifiedTaxCategory">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B19201">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cac:TaxScheme" flag="warning" id="EHF-T110-B19202">Element 'cac:TaxScheme' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ClassifiedTaxCategory/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T110-B19301">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ClassifiedTaxCategory/cbc:Percent"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B19601">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:ClassifiedTaxCategory/cac:TaxScheme/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:AdditionalItemProperty">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B19801">Element 'cbc:Name' MUST be provided.</assert>
         <assert test="cbc:Value" flag="warning" id="EHF-T110-B19802">Element 'cbc:Value' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:AdditionalItemProperty/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:AdditionalItemProperty/cbc:NameCode"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:AdditionalItemProperty/cbc:Value"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:AdditionalItemProperty/cbc:ValueQuantity"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B20401">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cbc:CertificateTypeCode" flag="warning" id="EHF-T110-B20402">Element 'cbc:CertificateTypeCode' MUST be provided.</assert>
         <assert test="cbc:CertificateType" flag="warning" id="EHF-T110-B20403">Element 'cbc:CertificateType' MUST be provided.</assert>
         <assert test="cac:IssuerParty" flag="warning" id="EHF-T110-B20404">Element 'cac:IssuerParty' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cbc:ID"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cbc:CertificateTypeCode"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cbc:CertificateType"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cbc:Remarks"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cac:IssuerParty">
         <assert test="cac:PartyName" flag="warning" id="EHF-T110-B20901">Element 'cac:PartyName' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cac:IssuerParty/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T110-B21001">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cac:IssuerParty/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cac:DocumentReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T110-B21201">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:OrderResponse/cac:OrderLine/cac:LineItem/cac:Item/cac:Certificate/cac:DocumentReference/cbc:ID"/>
   </pattern>
  <pattern>
  
      <rule context="ubl:OrderResponse">
         <assert id="EHF-T110-R001" test="cbc:ProfileID" flag="fatal">Order agreement MUST have a profile identification.</assert>

         <assert id="EHF-T110-R100" test="cac:OrderLine" flag="fatal">At least one order line MUST exist.</assert>
      </rule>

      <rule context="cac:PromisedDeliveryPeriod">
         <assert id="EHF-T110-R030" test="cbc:StartDate" flag="fatal">Delivery period MUST have a start date.</assert>
      </rule>

      <rule context="cac:LegalMonetaryTotal">
         <assert id="EHF-T110-R050" test="cbc:TaxExclusiveAmount" flag="fatal">Monetary total MUST have total amount without VAT.</assert>
      </rule>

      <rule context="cac:LineItem">
         <assert id="EHF-T110-R200" test="cbc:Quantity" flag="fatal">An Order agreement line MUST contain a quantity.</assert>
         <assert id="EHF-T110-R201" test="cac:Price" flag="fatal">An Order agreement line MUST contain price.</assert>
      </rule>

      <rule context="cac:AdditionalItemProperty">
         <assert id="EHF-T110-R210" test="cbc:Value" flag="fatal">Additional item property MUST have a value.</assert>
      </rule>
   </pattern>

</schema>

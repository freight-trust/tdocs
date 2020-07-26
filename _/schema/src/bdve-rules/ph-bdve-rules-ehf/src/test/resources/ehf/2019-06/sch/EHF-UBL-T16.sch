<schema xmlns="http://purl.oclc.org/dsdl/schematron"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xi="http://www.w3.org/2001/XInclude"
        xmlns:u="utils"
        schemaVersion="iso"
        queryBinding="xslt2">

   <title>Norwegian rules for EHF Despatch Advice</title>

   <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"
       prefix="cbc"/>
   <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"
       prefix="cac"/>
   <ns uri="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2"
       prefix="ubl"/>

   <pattern xmlns:ns2="http://www.schematron-quickfix.com/validator/process">
      <rule context="/ubl:DespatchAdvice">
         <assert test="cbc:UBLVersionID" flag="warning" id="EHF-T16-B00101">Element 'cbc:UBLVersionID' MUST be provided.</assert>
         <assert test="cbc:CustomizationID" flag="warning" id="EHF-T16-B00102">Element 'cbc:CustomizationID' MUST be provided.</assert>
         <assert test="cbc:ProfileID" flag="warning" id="EHF-T16-B00103">Element 'cbc:ProfileID' MUST be provided.</assert>
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B00104">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cbc:IssueDate" flag="warning" id="EHF-T16-B00105">Element 'cbc:IssueDate' MUST be provided.</assert>
         <assert test="cac:DespatchSupplierParty" flag="warning" id="EHF-T16-B00106">Element 'cac:DespatchSupplierParty' MUST be provided.</assert>
         <assert test="cac:DeliveryCustomerParty" flag="warning" id="EHF-T16-B00107">Element 'cac:DeliveryCustomerParty' MUST be provided.</assert>
         <assert test="cac:DespatchLine" flag="warning" id="EHF-T16-B00108">Element 'cac:DespatchLine' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cbc:UBLVersionID">
         <assert test="normalize-space(text()) = '2.1'"
                 flag="warning"
                 id="EHF-T16-B00201">Element 'cbc:UBLVersionID' MUST contain value '2.1'.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cbc:CustomizationID"/>
      <rule context="/ubl:DespatchAdvice/cbc:ProfileID"/>
      <rule context="/ubl:DespatchAdvice/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cbc:IssueDate"/>
      <rule context="/ubl:DespatchAdvice/cbc:IssueTime"/>
      <rule context="/ubl:DespatchAdvice/cbc:Note"/>
      <rule context="/ubl:DespatchAdvice/cac:OrderReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B00901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:OrderReference/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty">
         <assert test="cac:Party" flag="warning" id="EHF-T16-B01101">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cbc:EndpointID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B01301">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B01501">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B01601">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B01801">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telephone"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telefax"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty">
         <assert test="cac:Party" flag="warning" id="EHF-T16-B02501">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cbc:EndpointID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B02701">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B02901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B03001">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B03201">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:StreetName"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:AdditionalStreetName"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:CityName"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:PostalZone"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cbc:CountrySubentity"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cac:Country">
         <assert test="cbc:IdentificationCode" flag="warning" id="EHF-T16-B04401">Element 'cbc:IdentificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:DeliveryContact"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:DeliveryContact/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:DeliveryContact/cbc:Telephone"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:DeliveryContact/cbc:Telefax"/>
      <rule context="/ubl:DespatchAdvice/cac:DeliveryCustomerParty/cac:DeliveryContact/cbc:ElectronicMail"/>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty">
         <assert test="cac:Party" flag="warning" id="EHF-T16-B05201">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty/cac:Party"/>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B05401">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B05501">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B05701">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty">
         <assert test="cac:Party" flag="warning" id="EHF-T16-B05901">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B06101">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B06201">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B06401">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:Contact"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Telephone"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:Telefax"/>
      <rule context="/ubl:DespatchAdvice/cac:SellerSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail"/>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty">
         <assert test="cac:Party" flag="warning" id="EHF-T16-B07101">Element 'cac:Party' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty/cac:Party"/>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B07301">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID">
         <assert test="@schemeID" flag="warning" id="EHF-T16-B07401">Attribute 'schemeID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty/cac:Party/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B07601">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:OriginatorCustomerParty/cac:Party/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B07801">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cbc:Information"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cbc:GrossWeightMeasure">
         <assert test="@unitCode" flag="warning" id="EHF-T16-B08401">Attribute 'unitCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cbc:GrossVolumeMeasure">
         <assert test="@unitCode" flag="warning" id="EHF-T16-B08601">Attribute 'unitCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cbc:TotalTransportHandlingUnitQuantity"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B08901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cbc:Information"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:CarrierParty"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:CarrierParty/cac:PartyName">
         <assert test="cbc:Name" flag="warning" id="EHF-T16-B09601">Element 'cbc:Name' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:CarrierParty/cac:PartyName/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:Person">
         <assert test="cac:IdentityDocumentReference"
                 flag="warning"
                 id="EHF-T16-B09801">Element 'cac:IdentityDocumentReference' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:Person/cac:IdentityDocumentReference">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B09901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:Person/cac:IdentityDocumentReference/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Consignment/cac:Person/cac:IdentityDocumentReference/cbc:DocumentType"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cbc:TrackingID"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:EstimatedDeliveryPeriod"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:EstimatedDeliveryPeriod/cbc:StartDate"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:EstimatedDeliveryPeriod/cbc:StartTime"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:EstimatedDeliveryPeriod/cbc:EndDate"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:EstimatedDeliveryPeriod/cbc:EndTime"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:StreetName"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:AdditionalStreetName"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:CityName"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:PostalZone"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:CountrySubentity"/>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:Country">
         <assert test="cbc:IdentificationCode" flag="warning" id="EHF-T16-B11901">Element 'cbc:IdentificationCode' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:Shipment/cac:Delivery/cac:DespatchAddress/cbc:Country/cbc:IdentificationCode"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B12201">Element 'cbc:ID' MUST be provided.</assert>
         <assert test="cbc:DeliveredQuantity" flag="warning" id="EHF-T16-B12202">Element 'cbc:DeliveredQuantity' MUST be provided.</assert>
         <assert test="cac:OrderLineReference" flag="warning" id="EHF-T16-B12203">Element 'cac:OrderLineReference' MUST be provided.</assert>
         <assert test="cac:Item" flag="warning" id="EHF-T16-B12204">Element 'cac:Item' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cbc:Note"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cbc:DeliveredQuantity">
         <assert test="@unitCode" flag="warning" id="EHF-T16-B12501">Attribute 'unitCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cbc:OutstandingQuantity">
         <assert test="@unitCode" flag="warning" id="EHF-T16-B12801">Attribute 'unitCode' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cbc:OutstandingReason"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:OrderLineReference">
         <assert test="cbc:LineID" flag="warning" id="EHF-T16-B13201">Element 'cbc:LineID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:OrderLineReference/cbc:LineID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cbc:Name"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:SellersItemIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B13601">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:SellersItemIdentification/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:SellersItemIdentification/cbc:ExtendedID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:StandardItemIdentification">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B13901">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:StandardItemIdentification/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:StandardItemIdentification/cbc:ExtendedID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:HazardousItem"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:HazardousItem/cbc:UNDGCode">
         <assert test="@listID" flag="warning" id="EHF-T16-B14601">Attribute 'listID' MUST be present.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:HazardousItem/cbc:HazardClassID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cbc:ManufactureDate"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cbc:BestBeforeDate"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cbc:SerialID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cac:LotIdentification"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cac:LotIdentification/cbc:LotNumberID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Item/cac:ItemInstance/cac:LotIdentification/cbc:ExpiryDate"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment">
         <assert test="cbc:ID" flag="warning" id="EHF-T16-B16501">Element 'cbc:ID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cbc:ID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cbc:TransportHandlingUnitTypeCode"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cbc:HazardousRiskIndicator"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cbc:ShippingMarks"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cac:MeasurementDimension">
         <assert test="cbc:AttributeID" flag="warning" id="EHF-T16-B17601">Element 'cbc:AttributeID' MUST be provided.</assert>
      </rule>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cac:MeasurementDimension/cbc:AttributeID"/>
      <rule context="/ubl:DespatchAdvice/cac:DespatchLine/cac:Shipment/cac:TransportHandlingUnit/cac:MeasurementDimension/cbc:Measure">
         <assert test="@unitCode" flag="warning" id="EHF-T16-B17901">Attribute 'unitCode' MUST be present.</assert>
      </rule>
   </pattern>
   <pattern>
      <rule context="cac:Country">
         <assert id="NOGOV-T16-R002" test="cbc:IdentificationCode" flag="fatal">[NOGOV-T16-R002]-Identification code MUST be specified when describing a country.</assert>
      </rule>
      <rule context="cac:DespatchSupplierParty">
         <assert id="NOGOV-T16-R003" test="cac:Party" flag="fatal">[NOGOV-T16-R003]-If despatch supplier element is present, party must be specified</assert>
      </rule>
      <rule context="cac:DeliverCustomerParty">
         <assert id="NOGOV-T16-R004" test="cac:Party" flag="fatal">[NOGOV-T16-R004]-If deliver customer element is present, party must be specified</assert>
      </rule>
      <rule context="cac:BuyerCustomerParty">
         <assert id="NOGOV-T16-R005" test="cac:Party" flag="fatal">[NOGOV-T16-R005]-If buyer customer element is present, party must be specified</assert>
      </rule>
      <rule context="cac:OriginatorCustomerParty">
         <assert id="NOGOV-T16-R006" test="cac:Party" flag="fatal">[NOGOV-T16-R006]-If originator customer element is present, party must be specified</assert>
      </rule>
      <rule context="cac:CarrierParty/cac:Person">
         <assert id="NOGOV-T16-R007"
                 test="cac:IdentityDocumentReference"
                 flag="fatal">[NOGOV-T16-R007]-If carrier person element is present, identity must be specified</assert>
      </rule>
      <rule context="cbc:ProfileID">
         <assert id="EHFPROFILE-T16-R001"
                 test=". = 'urn:www.cenbii.eu:profile:bii30:ver2.0'"
                 flag="fatal">[EHFPROFILE-T16-R001]-A despatch advice must only be used in profile 30</assert>
      </rule>
   </pattern>

</schema>

/*
 * Bitly API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 4.0.0
 * 
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASSubscriptionDiscount
 */
public class OASSubscriptionDiscount implements OAS.MappedProperties {
    /**
     * Get billingPeriod
     * @return billingPeriod
     */
    public String billingPeriod { get; set; }

    /**
     * Get effectiveEndDate
     * @return effectiveEndDate
     */
    public String effectiveEndDate { get; set; }

    /**
     * Get effectiveStartDate
     * @return effectiveStartDate
     */
    public String effectiveStartDate { get; set; }

    /**
     * Get upToPeriodsType
     * @return upToPeriodsType
     */
    public String upToPeriodsType { get; set; }

    /**
     * Get productRatePlanChargeId
     * @return productRatePlanChargeId
     */
    public String productRatePlanChargeId { get; set; }

    /**
     * Get model
     * @return model
     */
    public String model { get; set; }

    /**
     * Get endDateCondition
     * @return endDateCondition
     */
    public String endDateCondition { get; set; }

    /**
     * Get upToPeriods
     * @return upToPeriods
     */
    public Double upToPeriods { get; set; }

    /**
     * Get discountAmount
     * @return discountAmount
     */
    public Double discountAmount { get; set; }

    /**
     * Get discountPercentage
     * @return discountPercentage
     */
    public Double discountPercentage { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'billing_period' => 'billingPeriod',
        'effective_end_date' => 'effectiveEndDate',
        'effective_start_date' => 'effectiveStartDate',
        'up_to_periods_type' => 'upToPeriodsType',
        'product_rate_plan_charge_id' => 'productRatePlanChargeId',
        'end_date_condition' => 'endDateCondition',
        'up_to_periods' => 'upToPeriods',
        'discount_amount' => 'discountAmount',
        'discount_percentage' => 'discountPercentage'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
   }



    public static OASSubscriptionDiscount getExample() {
        OASSubscriptionDiscount subscriptionDiscount = new OASSubscriptionDiscount();
          subscriptionDiscount.billingPeriod = '';
          subscriptionDiscount.effectiveEndDate = '';
          subscriptionDiscount.effectiveStartDate = '';
          subscriptionDiscount.upToPeriodsType = '';
          subscriptionDiscount.productRatePlanChargeId = '';
          subscriptionDiscount.model = '';
          subscriptionDiscount.endDateCondition = '';
          subscriptionDiscount.upToPeriods = 1.3579;
          subscriptionDiscount.discountAmount = 1.3579;
          subscriptionDiscount.discountPercentage = 1.3579;
        return subscriptionDiscount;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASSubscriptionDiscount) {           
            OASSubscriptionDiscount subscriptionDiscount = (OASSubscriptionDiscount) obj;
            return this.billingPeriod == subscriptionDiscount.billingPeriod
                && this.effectiveEndDate == subscriptionDiscount.effectiveEndDate
                && this.effectiveStartDate == subscriptionDiscount.effectiveStartDate
                && this.upToPeriodsType == subscriptionDiscount.upToPeriodsType
                && this.productRatePlanChargeId == subscriptionDiscount.productRatePlanChargeId
                && this.model == subscriptionDiscount.model
                && this.endDateCondition == subscriptionDiscount.endDateCondition
                && this.upToPeriods == subscriptionDiscount.upToPeriods
                && this.discountAmount == subscriptionDiscount.discountAmount
                && this.discountPercentage == subscriptionDiscount.discountPercentage;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (billingPeriod == null ? 0 : System.hashCode(billingPeriod));
        hashCode = (17 * hashCode) + (effectiveEndDate == null ? 0 : System.hashCode(effectiveEndDate));
        hashCode = (17 * hashCode) + (effectiveStartDate == null ? 0 : System.hashCode(effectiveStartDate));
        hashCode = (17 * hashCode) + (upToPeriodsType == null ? 0 : System.hashCode(upToPeriodsType));
        hashCode = (17 * hashCode) + (productRatePlanChargeId == null ? 0 : System.hashCode(productRatePlanChargeId));
        hashCode = (17 * hashCode) + (model == null ? 0 : System.hashCode(model));
        hashCode = (17 * hashCode) + (endDateCondition == null ? 0 : System.hashCode(endDateCondition));
        hashCode = (17 * hashCode) + (upToPeriods == null ? 0 : System.hashCode(upToPeriods));
        hashCode = (17 * hashCode) + (discountAmount == null ? 0 : System.hashCode(discountAmount));
        hashCode = (17 * hashCode) + (discountPercentage == null ? 0 : System.hashCode(discountPercentage));
        return hashCode;
    }
}
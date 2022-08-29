Feature: Flex Plan End to End Journey with discount

  Scenario Outline: To verify Sales rep is able to perform an E2E with FlexPlan product and provide discount
    Given User login as Sales representative
    When Sales representative creates an opportunity with the following details "<Account_Name>" "<Deal_Type>" "<Type_of_support>"
    Then Sales rep adds the Enterprise product details for FlexPlans products
      |Product_Category  |Product                         |Product_Detail                             |Quans  |LOC |Billed_Upfront|Revenue_per_month |Business_Type   |
      |Mobile            |Flex Plan                       |Flex 2                                     |2500   |1   |10000         |150000            |New / Additional|
      |Mobile            |Flex Plan                       |Flex                                       |2500   |1   |10000         |150000            |New / Additional|
      |Mobile            |Flex Plan                       |Flex 5                                     |2500   |1   |10000         |150000            |New / Additional|

    Then Sales rep creates a product basket to add FlexPlans products
    Then Sales rep configures FlexPlans products in the basket with the following details "<Standard_or_Bespoke_1>" "<Standard_or_Bespoke_2>" "<x>" "<Term>" "<Voice_and_Aggregated_Data_SIMs>" "<Aggregated_Data_Only_SIMs>" "<Transformation_Fund>" "<tariff>" "<discount>" "<Private_APN>"
    Then Sales representative configures the required Call mix details
    Then Sales rep provides discount under discount section
    Then Sales rep opens Clauses section to update the required details
    Then Sales rep views the Profit and Loss section for the configured FP products
    Then Sales rep submits basket for approval and Finance approves basket and basket is synced with the opportunity

    Examples:
      |DDP_Scenario_Identifier|Account_Name  |Deal_Type   |Type_of_support             |Standard_or_Bespoke_1|Standard_or_Bespoke_2      |x|Term|Voice_and_Aggregated_Data_SIMs|Aggregated_Data_Only_SIMs|Transformation_Fund|tariff                  |discount|Private_APN|
      |013 034                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 3GB       |0.5     |No         |
      |014 035 085 095        |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 5GB       |1       |No         |
      |015 036 084            |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 7GB       |1.5     |No         |
      |016 037 083 090 097 099|Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 10GB      |2       |No         |
      |017 038                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan Two 20GB      |2.5     |No         |
      |018 039                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan Two Unlimited |3       |No         |
      |019 042                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 0.5GB         |3.5     |No         |
      |020 043                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 1GB           |4       |No         |
      |021 044                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 2GB           |4.5     |No         |
      |022 045                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|36  |2000                          |0                        |No                 |Flex Plan 3GB           |5       |No         |
      |115                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|36  |2000                          |0                        |No                 |Flex Plan Two 5GB       |5       |No         |
      |143                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 3GB       |0.5     |No         |
      |144                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 5GB       |1       |No         |
      |145                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 7GB       |1.5     |No         |
      |146                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 10GB      |2       |No         |
      |147                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan Two 20GB      |2.5     |No         |
      |148                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan Two Unlimited |3       |No         |
      |149                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 0.5GB         |3.5     |No         |
      |150                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 1GB           |4       |No         |
      |151                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |2000                          |0                        |No                 |Flex Plan 2GB           |4.5     |No         |
      |152                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|36  |2000                          |0                        |No                 |Flex Plan 3GB           |5       |No         |
      |132                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 3GB       |0.5     |No         |
      |133                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 5GB       |1       |No         |
      |134                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 7GB       |1.5     |No         |
      |135                    |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 10GB      |2       |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan Two 20GB      |2.5     |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan Two Unlimited |3       |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 0.5GB         |3.5     |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 1GB           |4       |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 2GB           |4.5     |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|36  |2000                          |0                        |No                 |Flex Plan Two 3GB       |5       |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|36  |2000                          |0                        |No                 |Flex Plan Two 5GB       |5       |No         |
      |                       |1000+ Sites   | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|36  |2000                          |0                        |No                 |Flex Plan Two 5GB       |5.5     |No         |
      |053                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 3GB       |0.5     |No         |
      |086                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 5GB       |1       |No         |
      |123                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 7GB       |1.5     |No         |
      |087                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 10GB      |2       |No         |
      |108                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan Two 20GB      |2.5     |No         |
      |109                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan Two Unlimited |3       |No         |
      |110                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 0.5GB         |3.5     |No         |
      |112                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 1GB           |4       |No         |
      |113                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |2000                          |0                        |No                 |Flex Plan 2GB           |4.5     |No         |
      |114                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|36  |2000                          |0                        |No                 |Flex Plan Two 3GB       |5       |No         |
      |046 088 093 094        |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|36  |2000                          |0                        |No                 |Flex Plan 5GB           |5.5     |No         |







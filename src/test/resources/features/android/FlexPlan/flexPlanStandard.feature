Feature: Flex Plan End to End Journey

  Scenario Outline: To verify Sales rep is able to perform an E2E with Standard FlexPlan product
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
      |001 002 003 004 005 006|Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |1000                          |0                        |No                 |Flex Plan Two 5GB       |        |No         |
      |010 054 055 056 057    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |20                       |No                 |Flex Plan Two 5GB       |0       |No         |
      |011                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |Yes                |Flex Plan Two 5GB       |0       |No         |
      |012 033                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Two 2GB       |0       |No         |
      |058                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |024                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan 7GB           |0       |No         |
      |025                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan 10GB          |0       |No         |
      |026                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan 20GB          |0       |No         |
      |027                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Unlimited     |0       |No         |
      |028                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Five 5GB      |0       |No         |
      |029 091 096            |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Five 7GB      |0       |No         |
      |030 098                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Five 10GB     |0       |No         |
      |031                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Five 20GB     |0       |No         |
      |032                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan Five Unlimited|0       |No         |
      |059                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|30  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |060 082                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|45  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |061                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|60  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |071                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |50                            |0                        |No                 |Flex Plan 10GB          |        |No         |
      |072 073 075 077 081    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|0|24  |100                           |0                        |No                 |Flex Plan 10GB          |        |No         |








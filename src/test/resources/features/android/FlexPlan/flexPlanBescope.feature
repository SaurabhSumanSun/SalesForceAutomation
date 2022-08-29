Feature: Flex Plan Bespoke End to End Journey

  Scenario Outline: To verify Sales rep is able to perform an E2E with Bespoke FlexPlan product
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
      |007 009 050 051        |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 5GB       |        |No         |
      |063                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|12  |100                           |0                        |No                 |Flex Plan 5GB           |        |No         |
      |064                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|20  |100                           |0                        |No                 |Flex Plan 5GB           |        |No         |
      |065 023 089            |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|23  |100                           |0                        |No                 |Flex Plan 5GB           |        |No         |
      |066 080                |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|40  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |067                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|60  |100                           |0                        |No                 |Flex Plan 5GB           |0       |No         |
      |068                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |45                            |0                        |No                 |Flex Plan 10GB          |        |No         |
      |069                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |50                            |0                        |No                 |Flex Plan 10GB          |        |No         |
      |070 076 078 079        |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan 10GB          |        |No         |
      |052                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Two 2GB       |0       |No         |
      |100                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan 7GB           |0       |No         |
      |106                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan 10GB          |0       |No         |
      |107                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan 20GB          |0       |No         |
      |116                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Unlimited     |0       |No         |
      |117                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Five 5GB      |0       |No         |
      |092                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Five 7GB      |0       |No         |
      |118                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Five 10GB     |0       |No         |
      |119                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Five 20GB     |0       |No         |
      |122                    |Test Private  | Acquisition| Self-serve pricing tools   |Standard (Fast-Track)|Bespoke (Approval Required)|1|24  |100                           |0                        |No                 |Flex Plan Five Unlimited|0       |No         |

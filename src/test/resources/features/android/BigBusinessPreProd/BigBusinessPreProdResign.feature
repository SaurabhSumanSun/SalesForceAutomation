Feature: feature002

  Scenario Outline: To verify Sales rep is able to add Big Business product and validate the Resign basket in Pre Prod
    Given User logins as Enterprise Sales representative for DPT
    Then Sales rep for DPT creates an opportunity with the following details "<Deal_Type>" "<Type_of_support>"
    Then Sales rep for DPT adds the Enterprise product details for all DDP products
      |Product_Category  |Product                         |Product_Detail |Mobile_Tariffs |Mobile_Services|Quans  |LOC |Billed_Upfront|Revenue_per_month |Business_Type   |
      |Mobile            |Voice & Data                    |Voice & Data   |Standard       |Standard       |200    |1   |500           |15000             |New / Additional|
    Then Sales rep for DPT creates a product basket to add DDP products
    Then Sales rep for DPT configures all DPT products in the basket with the following details"<NoOfConnections>" "<ProvisionalTarrif>" "<BillSpendCap>" "<PrivateAPN>" "<MobexRequired>" "<MobexService>" "<Type>" "<VoiceType>" "<Term>" "<DataType>" "<DataAllowance>" "<CappedOrUncapped>" "<AggregatedData>"
    Then Sales representative configures Resign details"<Connections_Resign>" "<Revenue_Resign>"
    Then Sales representative configures Call mix details
    Then Sales rep for DPT visits Clauses section to update the required details"<TF>"
    Then Sales rep for DPT verifies the discount section
    Then Sales rep for DPT views the Profit and Loss section for the configured DPT products
    Then Sales rep for DPT validates the basket page
    Then Sales rep for DPT submits basket for approval and Financial approvers for DPT approve the basket and the basket is synced with the opportunity

    Examples:
      |Scenario_Identifier |Account_Name  | Deal_Type  | Type_of_support         | NoOfConnections   | ProvisionalTarrif  | BillSpendCap |PrivateAPN|MobexRequired|MobexService|Type         |VoiceType|Term|DataType  |DataAllowance  |CappedOrUncapped|AggregatedData|Connections_Resign|Revenue_Resign|TF |
      |ID_486 ID_487 ID_488|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |300               |100000        |100|
      |ID_489 ID_490 ID_491|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |800               |100000        |100|
      |ID_492 ID_493 ID_494|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |1300              |100000        |100|
      |ID_495 ID_496 ID_497|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |1800              |100000        |100|
      |ID_498 ID_499 ID_500|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |2300              |100000        |100|
      |ID_501 ID_502 ID_503|Test Private  | Resign     | Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |2800              |100000        |100|
      |ID_504 ID_505 ID_506|Test Private  | Resign     | Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |3300              |100000        |100|
      |ID_507 ID_508 ID_509|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |700               |100000        |100|
      |ID_510 ID_511 ID_512|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |1200              |100000        |100|
      |ID_513 ID_514 ID_515|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |1700              |100000        |100|
      |ID_516 ID_517 ID_518|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |2200              |100000        |100|
      |ID_519 ID_520 ID_521|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |2700              |100000        |100|
      |ID_522 ID_523 ID_524|Test Private  | Resign     | Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |3200              |100000        |100|
      |ID_525 ID_526 ID_527|Test Private  | Resign     | Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |3700              |100000        |100|
      |ID_528 ID_529 ID_530|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |300               |100000        |100|
      |ID_531 ID_532 ID_533|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |800               |100000        |100|
      |ID_534 ID_535 ID_536|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |1300              |100000        |100|
      |ID_537 ID_538 ID_539|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |1800              |100000        |100|
      |ID_540 ID_541 ID_542|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |2300              |100000        |100|
      |ID_543 ID_544 ID_545|Test Private  | Resign     | Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |2800              |100000        |100|
      |ID_546 ID_547 ID_548|Test Private  | Resign     | Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |3300              |100000        |100|
      |ID_549 ID_550 ID_551|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |700               |100000        |100|
      |ID_552 ID_553 ID_554|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |1200              |100000        |100|
      |ID_555 ID_556 ID_557|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |1700              |100000        |100|
      |ID_558 ID_559 ID_560|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |2200              |100000        |100|
      |ID_561 ID_562 ID_563|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |2700              |100000        |100|
      |ID_564 ID_565 ID_566|Test Private  | Resign     | Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |3200              |100000        |100|
      |ID_567 ID_568 ID_569|Test Private  | Resign     | Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |3700              |100000        |100|
      |ID_570 ID_571 ID_572|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |300               |100000        |100|
      |ID_573 ID_574 ID_575|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |800               |100000        |100|
      |ID_576 ID_577 ID_578|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |1300              |100000        |100|
      |ID_579 ID_580 ID_581|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |1800              |100000        |100|
      |ID_582 ID_583 ID_584|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |2300              |100000        |100|
      |ID_585 ID_586 ID_587|Test Private  | Resign     | Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |2800              |100000        |100|
      |ID_588 ID_589 ID_590|Test Private  | Resign     | Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |3300              |100000        |100|
      |ID_591 ID_592 ID_593|Test Private  | Resign     | Self-serve pricing tools| 4000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |3800              |100000        |100|
      |ID_594 ID_595 ID_596|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |700               |100000        |100|
      |ID_597 ID_598 ID_599|Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |1200              |100000        |100|
      |ID_600 ID_601 ID_602|Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |1700              |100000        |100|
      |ID_603 ID_604 ID_605|Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |2200              |100000        |100|
      |ID_606 ID_607 ID_608|Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |2700              |100000        |100|
      |ID_609 ID_610 ID_611|Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |300               |100000        |100|
      |ID_612 ID_613       |Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |800               |100000        |100|
      |ID_614              |Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |1300              |100000        |100|
      |ID_615              |Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |1800              |100000        |100|
      |ID_616              |Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |2300              |100000        |100|
      |ID_617              |Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |700               |100000        |100|
      |ID_618              |Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |1200              |100000        |100|
      |ID_619              |Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |1700              |100000        |100|
      |ID_620              |Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |2200              |100000        |100|
      |ID_621              |Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |2700              |100000        |100|
      |ID_622              |Test Private  | Resign     | Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Capped          |              |300               |100000        |100|
      |ID_623              |Test Private  | Resign     | Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Capped          |              |800               |100000        |100|
      |ID_624              |Test Private  | Resign     | Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |1300              |100000        |100|
      |ID_625              |Test Private  | Resign     | Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |1800              |100000        |100|
      |ID_626              |Test Private  | Resign     | Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |2300              |100000        |100|

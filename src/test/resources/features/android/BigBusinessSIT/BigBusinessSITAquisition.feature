Feature: feature001

  Scenario Outline: To verify Sales rep is able to add Big Business product and validate the basket in SIT
    Given User logins in SIT environment as Enterprise Sales representative for DDP
    Then Sales rep for DDP creates an opportunity with the following details "<Account_Name>" "<Deal_Type>" "<Type_of_support>"
    Then Sales rep adds the Enterprise product details for all DDP products
      |Product_Category  |Product                         |Product_Detail |Mobile_Tariffs |Mobile_Services|Quans  |LOC |Billed_Upfront|Revenue_per_month |Business_Type   |
      |Mobile            |Voice & Data                    |Voice & Data   |Standard       |Standard       |200    |1   |500           |15000             |New / Additional|
    Then Sales rep creates a product basket to add DDP products
    Then Sales rep configures all DDP products in the basket with the following details"<NoOfConnections>" "<ProvisionalTarrif>" "<BillSpendCap>" "<PrivateAPN>" "<MobexRequired>" "<MobexService>" "<Type>" "<VoiceType>" "<Term>" "<DataType>" "<DataAllowance>" "<CappedOrUncapped>" "<AggregatedData>"
    Then Sales representative adds the required Call mix details
    Then Sales rep updates Clauses section with the required details"<TF>"
    Then Sales rep gives discount under discount section
    Then Sales rep verifies Profit and Loss section for the configured FP products
    Then Sales rep validates the basket page
    Then Sales rep submits the basket for approval and Finance approves the basket and basket is synced with the opportunity

    Examples:
      |Scenario_Identifier |Account_Name  | Deal_Type  | Type_of_support         | NoOfConnections   | ProvisionalTarrif  | BillSpendCap |PrivateAPN|MobexRequired|MobexService|Type         |VoiceType|Term|DataType  |DataAllowance  |CappedOrUncapped|AggregatedData|Connections_Resign|Revenue_Resign|TF |
      |ID_318 ID_319 ID_320|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_321 ID_322 ID_323|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_324 ID_325 ID_326|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_327 ID_328 ID_329|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_330 ID_331 ID_332|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_333 ID_334 ID_335|Test Private  | Acquisition| Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_336 ID_337 ID_338|Test Private  | Acquisition| Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Pay per MB|               |                |              |                  |              |100|
      |ID_339 ID_340 ID_341|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_342 ID_343 ID_344|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_345 ID_346 ID_347|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_348 ID_349 ID_350|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_351 ID_352 ID_353|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_354 ID_355 ID_356|Test Private  | Acquisition| Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_357 ID_358 ID_359|Test Private  | Acquisition| Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_360 ID_361 ID_362|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_363 ID_364 ID_365|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_366 ID_367 ID_368|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_369 ID_370 ID_371|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_372 ID_373 ID_374|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_375 ID_376 ID_377|Test Private  | Acquisition| Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_378 ID_379 ID_380|Test Private  | Acquisition| Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_381 ID_382 ID_383|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_384 ID_385 ID_386|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_387 ID_388 ID_389|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_390 ID_391 ID_392|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_393 ID_394 ID_395|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_396 ID_397 ID_398|Test Private  | Acquisition| Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_399 ID_400 ID_401|Test Private  | Acquisition| Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |PAYU     |24  |Shared    |2TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_402 ID_403 ID_404|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_405 ID_406 ID_407|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_408 ID_409 ID_410|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_411 ID_412 ID_413|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_414 ID_415 ID_416|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_417 ID_418 ID_419|Test Private  | Acquisition| Self-serve pricing tools| 3000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_420 ID_421 ID_422|Test Private  | Acquisition| Self-serve pricing tools| 3500              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_423 ID_424 ID_425|Test Private  | Acquisition| Self-serve pricing tools| 4000              | No                 | No           |No        |No           |            |Voice & Data |Unlimited|24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_426 ID_427 ID_428|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |                  |              |100|
      |ID_429 ID_430 ID_431|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |                  |              |100|
      |ID_432 ID_433 ID_434|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |                  |              |100|
      |ID_435 ID_436 ID_437|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |                  |              |100|
      |ID_438 ID_439 ID_440|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice Only   |PAYU     |24  |          |               |                |              |                  |              |100|
      |ID_441 ID_442 ID_443|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |                  |              |100|
      |ID_444 ID_445 ID_446|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |                  |              |100|
      |ID_447 ID_448 ID_449|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |                  |              |100|
      |ID_450 ID_451 ID_452|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |                  |              |100|
      |ID_453 ID_454 ID_455|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Voice Only   |Unlimited|24  |          |               |                |              |                  |              |100|
      |ID_456 ID_457 ID_458|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_459 ID_460 ID_461|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_462 ID_463 ID_464|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_465 ID_466 ID_467|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_468 ID_469 ID_470|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Shared    |1TB Shared Data|Uncapped        |              |                  |              |100|
      |ID_471 ID_472 ID_473|Test Private  | Acquisition| Self-serve pricing tools| 500               | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_474 ID_475 ID_476|Test Private  | Acquisition| Self-serve pricing tools| 1000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Capped          |              |                  |              |100|
      |ID_477 ID_478 ID_479|Test Private  | Acquisition| Self-serve pricing tools| 1500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_480 ID_481 ID_482|Test Private  | Acquisition| Self-serve pricing tools| 2000              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |                  |              |100|
      |ID_483 ID_484 ID_485|Test Private  | Acquisition| Self-serve pricing tools| 2500              | No                 | No           |No        |No           |            |Data Only    |         |24  |Individual|10GB           |Uncapped        |              |                  |              |100|

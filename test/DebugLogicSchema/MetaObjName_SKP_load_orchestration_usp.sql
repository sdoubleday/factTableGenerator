CREATE PROCEDURE [DebugLogicSchema].[MetaObjName_SKP_load_orchestration_usp]
AS

DELETE [DebugFinalSchema].[MetaObjName];

INSERT INTO [DebugFinalSchema].[MetaObjName]
(
[SK_Date]

,
[SK_Date_RP_RolePlay]

,
[ImportantDegenerateDimension_OnFactDim]

,
 [ImportantFact]	/*FactColumn_ReplacementPoint|ImportantFact|,*/
,
 [MetaObjNames]
)
SELECT
[SK_Date]

,
[SK_Date_RP_RolePlay]

,
[ImportantDegenerateDimension_OnFactDim]

,
[ImportantFact]
, [MetaObjNames]

,
 [MetaObjNames]
FROM [factSourceSchema].[MetaObjName_SKP];

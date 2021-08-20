CREATE PROCEDURE [factLogicSchema].[MetaObjName_SKP_load_orchestration_usp]
AS

DELETE [factFinalSchema].[MetaObjName];

INSERT INTO [factFinalSchema].[MetaObjName]
(
 [SK_Date]	/*SurrogateKey_ReplacementPoint|Date|,*/
,
 [SK_Date_RP_RolePlay]	/*SurrogateKey_RolePlay_ReplacementPoint|Date|RolePlay|,*/
,
 [ImportantDegenerateDimension_OnFactDim]	/*DegenerateDimensionAttribute_ReplacementPoint|ImportantDegenerateDimension_OnFactDim|,*/
,
 [ImportantFact]	/*FactColumn_ReplacementPoint|ImportantFact|,*/
,
 [MetaObjNames]
)
SELECT
 [SK_Date]	/*SurrogateKey_ReplacementPoint|Date|,*/
,
 [SK_Date_RP_RolePlay]	/*SurrogateKey_RolePlay_ReplacementPoint|Date|RolePlay|,*/
,
 [ImportantDegenerateDimension_OnFactDim]	/*DegenerateDimensionAttribute_ReplacementPoint|ImportantDegenerateDimension_OnFactDim|,*/
,
 [ImportantFact]	/*DimensionAttribute_ReplacementPoint|ImportantFact|,*/
,
 [MetaObjNames]
FROM [factSourceSchema].[MetaObjName_SKP];

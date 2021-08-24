CREATE VIEW [factSourceSchema].[MetaObjName_SKP]
AS SELECT 
[SK_Date], [SK_Date_RP_RolePlay], [ImportantDegenerateDimension_OnFactDim], [ImportantFact], [MetaObjNames]
FROM [factSourceSchema].[MetaObjName_SKP_tbl];

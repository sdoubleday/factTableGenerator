CREATE TABLE [factSourceSchema].[MetaObjName_SKP]
(
	 [SK_Date] INT NOT NULL
	,[SK_Date_RP_RolePlay] INT NOT NULL
	,[ImportantDegenerateDimension_OnFactDim] NVARCHAR(500) NOT NULL
	,[ImportantFact] DECIMAL(38,10) NULL
	,[MetaObjNames] INT NOT NULL
)

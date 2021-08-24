CREATE TABLE [DebugFinalSchema].[MetaObjName]
(
[SK_Date] INT NOT NULL CONSTRAINT [df_DebugFinalSchema_MetaObjName_SK_Date] DEFAULT (-1) CONSTRAINT [FK_DebugFinalSchema_MetaObjName_SK_Date_To_Date] FOREIGN KEY REFERENCES [dimensionFinalSchema].[Date_dim]

	,
[SK_Date_RP_RolePlay] INT NOT NULL CONSTRAINT [df_DebugFinalSchema_MetaObjName_SK_Date_RP_RolePlayDate] DEFAULT (-1) CONSTRAINT [FK_DebugFinalSchema_MetaObjName_SK_Date_To_Date_RP_RolePlay] FOREIGN KEY REFERENCES [dimensionRpFinalSchema].[Date_dim_RolePlay]

	,
[ImportantDegenerateDimension_OnFactDim] NVARCHAR(500) NOT NULL CONSTRAINT [df_DebugFinalSchema_MetaObjName_ImportantDegenerateDimension_OnFactDim] DEFAULT ('Context Not Specified')

	,
	 [ImportantFact] DECIMAL(38,10) NULL	/*FactColumn_ReplacementPoint|ImportantFact|,*/
	,
	 [MetaObjNames] INT NOT NULL
)

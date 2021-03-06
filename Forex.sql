USE [Forex]
GO
/****** Object:  User [DHOME\User]    Script Date: 07/26/2009 10:01:41 ******/
CREATE USER [DHOME\User] FOR LOGIN [DHOME\User] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[t_Volts]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Volts](
	[StartDate] [datetime] NOT NULL,
	[Volts] [numeric](9, 3) NOT NULL,
	[Average] [numeric](9, 5) NULL,
 CONSTRAINT [PK_t_Volts] PRIMARY KEY CLUSTERED 
(
	[StartDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_TickMaxima]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TickMaxima](
	[StartDate] [datetime] NULL,
	[Volts] [float] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Tick1]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Tick1](
	[Pair] [varchar](7) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Ask] [float] NOT NULL,
	[Bid] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Tick_VoltsPerSecond]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Tick_VoltsPerSecond](
	[StartDate] [datetime] NOT NULL,
	[Volts] [float] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Tick_Volts]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Tick_Volts](
	[StartDate] [datetime] NOT NULL,
	[Volts] [float] NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_t_Tick_Volts] PRIMARY KEY CLUSTERED 
(
	[StartDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_t_Tick_Volts_Volts] ON [dbo].[t_Tick_Volts] 
(
	[Volts] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Tick_20]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Tick_20](
	[StartDate] [datetime] NOT NULL,
	[Diff] [float] NULL,
	[AskMax] [float] NULL,
	[BidMax] [float] NULL,
	[AskMin] [float] NULL,
	[BidMin] [float] NULL,
	[AskAvg] [float] NULL,
	[BidAvg] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Tick]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Tick](
	[Pair] [varchar](7) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[Ask] [float] NOT NULL,
	[Bid] [float] NOT NULL,
 CONSTRAINT [PK_t_Tick] PRIMARY KEY CLUSTERED 
(
	[Pair] ASC,
	[StartDate] ASC,
	[Ask] ASC,
	[Bid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_t_Tick_StartDate] ON [dbo].[t_Tick] 
(
	[StartDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Price]    Script Date: 07/26/2009 10:01:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Price](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](16) NOT NULL,
	[Pair] [varchar](7) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Ask] [numeric](9, 5) NOT NULL,
	[Bid] [numeric](9, 5) NOT NULL,
	[Speed] [numeric](5, 1) NOT NULL,
	[Spread] [numeric](5, 1) NOT NULL,
	[Power] [numeric](5, 1) NOT NULL,
	[Row] [numeric](5, 1) NOT NULL,
	[IsBuySell] [int] NOT NULL,
 CONSTRAINT [PK_t_Price] PRIMARY KEY CLUSTERED 
(
	[ID] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedTableType [dbo].[dt_VoltsTable]    Script Date: 07/26/2009 10:01:43 ******/
CREATE TYPE [dbo].[dt_VoltsTable] AS TABLE(
	[StartDate] [datetime] NOT NULL,
	[Volts] [float] NOT NULL,
	[Price] [float] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[StartDate] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  View [dbo].[v_Tick_30]    Script Date: 07/26/2009 10:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_30]
AS
SELECT     T1.StartDate, T2.StartDate AS StartDate1, T2.Diff, T2.AskMax, T2.BidMax, T2.AskMin, T2.BidMin, T2.AskAvg, T2.BidAvg
FROM         dbo.t_Tick_20 AS T1 INNER JOIN
                      dbo.t_Tick_20 AS T2 ON T2.StartDate BETWEEN DATEADD(n, - 1, T1.StartDate) AND T1.StartDate
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 169
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T2"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 192
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2595
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_30'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_30'
GO
/****** Object:  UserDefinedFunction [dbo].[Voltages]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Voltages](
@DateStart datetime,
@DateEnd datetime
)RETURNS @Volts TABLE(StartDate datetime,Volts float,Price float)
BEGIN

DECLARE @DateZero datetime

SELECT @DateZero = MAX(StartDate) FROM t_Tick_Volts
WHERE StartDate BETWEEN @DateStart AND @DateEnd

INSERT INTO @Volts
SELECT     T1.StartDate,
SUM(T2.Volts) / (DATEDIFF(ss,T1.StartDate,@DateZero)/60.+1) AS Volts, T1.Price
FROM         t_Tick_Volts AS T1
INNER JOIN t_Tick_Volts AS T2 ON T2.StartDate <= T1.StartDate
WHERE T1.StartDate BETWEEN @DateStart AND @DateEnd
AND T2.StartDate BETWEEN @DateStart AND @DateEnd
GROUP BY T1.StartDate, T1.Price

RETURN
END
GO
/****** Object:  View [dbo].[v_TickMaxima_10]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TickMaxima_10]
AS
SELECT     TOP (100) PERCENT T1.Price, T2.Price AS Price1, T2.Volts
FROM         dbo.t_TickMaxima AS T1 INNER JOIN
                      dbo.t_TickMaxima AS T2 ON T2.Price BETWEEN T1.Price - .01 AND T1.Price + .01
ORDER BY T1.Price, Price1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[28] 2[33] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 99
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T2"
            Begin Extent = 
               Top = 11
               Left = 227
               Bottom = 104
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TickMaxima_10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TickMaxima_10'
GO
/****** Object:  UserDefinedFunction [dbo].[FindMaximas]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FindMaximas](
--@DateStart datetime,
--@DateEnd datetime,
@TimeFrame int = 60,
@Volts AS dt_VoltsTable READONLY
)RETURNS TABLE AS
RETURN(
SELECT V1.StartDate, V1.Volts, V1.Price
FROM @Volts AS V1 
INNER JOIN @Volts AS V2 
	ON V2.StartDate BETWEEN DATEADD(n, - @TimeFrame, V1.StartDate) AND DATEADD(n, @TimeFrame, V1.StartDate)
--WHERE V1.StartDate BETWEEN @DateStart AND @DateEnd
GROUP BY V1.StartDate, V1.Volts,V1.Price
HAVING      (MAX(V2.Volts) = V1.Volts)
)
--SELECT @DateStart = '7/24/08 7:54', @DateEnd = DATEADD(yy,20,@DateStart)
GO
/****** Object:  View [dbo].[v_Tick_]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_]
AS
SELECT     row_number() OVER (ORDER BY StartDate DESC) AS Row, Pair, StartDate, Ask, Bid
FROM         dbo.t_Tick
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_'
GO
/****** Object:  View [dbo].[v_Tick_10]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_10]
AS
SELECT     T1.StartDate, T1.Row, T1.Ask - T2.Ask AS AskDiff, T1.Bid - T2.Bid AS BidDiff, (ABS(T1.Ask - T2.Ask) + ABS(T1.Bid - T2.Bid)) / 2. AS Diff, T2.Ask, 
                      T2.Bid
FROM         dbo.v_Tick_ AS T1 INNER JOIN
                      dbo.v_Tick_ AS T2 ON T1.Row = T2.Row - 1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[25] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 138
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T2"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 135
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2550
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 960
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_10'
GO
/****** Object:  View [dbo].[v_TickMaxima]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TickMaxima] AS
SELECT Price,AVG(Price1)PriceAvg,AVG(Volts)VoltsAvg,COUNT(*) Count
FROM v_TickMaxima_10
GROUP BY Price
GO
/****** Object:  View [dbo].[v_Tick_VoltsPerSecons]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_VoltsPerSecons] AS
SELECT * FROM Voltages('7/24/09 9:50:14','7/24/09 10:50:14')
GO
/****** Object:  UserDefinedFunction [dbo].[GetMaximas]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetMaximas](
@DateStart datetime,
@DateEnd datetime,
@TimeFrame int
)RETURNS @T TABLE(StartDate datetime,Volts float,Price float)
BEGIN
DECLARE @Volts AS dt_VoltsTable

INSERT INTO @Volts
SELECT * FROM t_Tick_Volts WHERE 
StartDate BETWEEN @DateStart AND @DateEnd AND NOT Volts IS NULL 

INSERT INTO @T
SELECT * FROM FindMaximas(@TimeFrame,@Volts)

RETURN
--TRUNCATE TABLE t_TickMaxima
--INSERT INTO t_TickMaxima
--SELECT * 
--FROM GetMaximas('2009-07-20 00:00:00','2009-07-21 00:00:00',30)
END
GO
/****** Object:  View [dbo].[v_Tick_40]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_40]
AS
SELECT     StartDate, SUM(Diff) AS Diff, MAX(AskMax) AS AskMax, MAX(BidMax) AS BidMax, MIN(AskMin) AS AskMin, MIN(BidMin) AS BidMin, AVG(AskAvg) 
                      AS AskAvg, AVG(BidAvg) AS BidAvg
FROM         dbo.v_Tick_30
GROUP BY StartDate
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v_Tick_30"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 214
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_40'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_40'
GO
/****** Object:  View [dbo].[v_Tick_20]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_20]
AS
SELECT     TOP (100) PERCENT StartDate, SUM(Diff) AS Diff, MAX(Ask) AS AskMax, MAX(Bid) AS BidMax, MIN(Ask) AS AskMin, MIN(Bid) AS BidMin, AVG(Ask) 
                      AS AskAvg, AVG(Bid) AS BidAvg
FROM         dbo.v_Tick_10
GROUP BY StartDate
ORDER BY StartDate DESC
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v_Tick_10"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 179
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1770
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_20'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_20'
GO
/****** Object:  View [dbo].[v_Tick_Volts]    Script Date: 07/26/2009 10:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Tick_Volts]
AS
SELECT     StartDate, Diff / NULLIF ((AskMax + BidMax) / 2 - (AskMin + BidMin) / 2, 0) AS Volts, (AskAvg + BidAvg) / 2 AS Price
FROM         dbo.v_Tick_40
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v_Tick_40"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 210
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2460
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_Volts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Tick_Volts'
GO
/****** Object:  StoredProcedure [dbo].[s_PrepTicks]    Script Date: 07/26/2009 10:01:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[s_PrepTicks] AS
TRUNCATE TABLE t_Tick_20
INSERT INTO            t_Tick_20
SELECT     StartDate, Diff,AskMax,BidMax,AskMin,BidMin,AskAvg,BidAvg
--INTO t_Tick_20
FROM         v_Tick_20

TRUNCATE TABLE t_Tick_Volts
INSERT INTO t_Tick_Volts
SELECT     StartDate, Volts, Price
--INTO t_Tick_Volts
FROM         v_Tick_Volts
GO
/****** Object:  Default [DF_t_Price_IsBuySell]    Script Date: 07/26/2009 10:01:42 ******/
ALTER TABLE [dbo].[t_Price] ADD  CONSTRAINT [DF_t_Price_IsBuySell]  DEFAULT ((0)) FOR [IsBuySell]
GO

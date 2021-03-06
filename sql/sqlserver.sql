USE [OPENFEEDAQ]
GO
/****** Object:  Table [dbo].[equity_entity]    Script Date: 8/5/2013 11:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[equity_entity](
	[symbol] [varchar](10) NOT NULL,
	[exchange] [varchar](10) NULL,
	[company_name] [varchar](100) NULL,
	[industry] [varchar](200) NULL,
 CONSTRAINT [primary key2] PRIMARY KEY CLUSTERED 
(
	[symbol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wdgt_market_entity]    Script Date: 8/5/2013 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wdgt_market_entity](
	[entity_id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [varchar](4) NULL,
	[symbol] [varchar](10) NULL,
	[exchange] [varchar](10) NULL,
	[company_name] [varchar](100) NULL,
 CONSTRAINT [primary key1] PRIMARY KEY CLUSTERED 
(
	[entity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wdgt_user]    Script Date: 8/5/2013 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wdgt_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](25) NULL,
 CONSTRAINT [primary key] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wdgt_user_ui]    Script Date: 8/5/2013 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wdgt_user_ui](
	[user_ui_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[ui_id] [varchar](250) NULL,
 CONSTRAINT [primary key3] PRIMARY KEY CLUSTERED 
(
	[user_ui_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wdgt_user_ui_market_entity]    Script Date: 8/5/2013 11:04:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wdgt_user_ui_market_entity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_ui_id] [bigint] NULL,
	[entity_id] [bigint] NULL,
 CONSTRAINT [primary key4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[equity_entity] ADD  DEFAULT ('') FOR [symbol]
GO

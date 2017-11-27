
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/27/2017 14:39:36
-- Generated from EDMX file: C:\Users\662942\Documents\Visual Studio 2015\Projects\AIGLADAutomation\TaskUtility\LADAutomationDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LADAutomation];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserCountryRoles] DROP CONSTRAINT [FK_UserUserCountryRole];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserCountryRoles] DROP CONSTRAINT [FK_RoleUserCountryRole];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserCountryRoles] DROP CONSTRAINT [FK_CountryUserCountryRole];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskTypeTask]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_TaskTypeTask];
GO
IF OBJECT_ID(N'[dbo].[FK_UserCountryRoleRule]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rules] DROP CONSTRAINT [FK_UserCountryRoleRule];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskFile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Files] DROP CONSTRAINT [FK_TaskFile];
GO
IF OBJECT_ID(N'[dbo].[FK_RuleTask]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_RuleTask];
GO
IF OBJECT_ID(N'[dbo].[FK_RuleCarryForwardRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarryForwardRules] DROP CONSTRAINT [FK_RuleCarryForwardRules];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskEmailTemplate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmailTemplates] DROP CONSTRAINT [FK_TaskEmailTemplate];
GO
IF OBJECT_ID(N'[dbo].[FK_UserCountryRoleEmail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_UserCountryRoleEmail];
GO
IF OBJECT_ID(N'[dbo].[FK_EmailTemplateEmail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Emails] DROP CONSTRAINT [FK_EmailTemplateEmail];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskTaskStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskStatus] DROP CONSTRAINT [FK_TaskTaskStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_StatusTaskStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TaskStatus] DROP CONSTRAINT [FK_StatusTaskStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_TaskAuditTrail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AuditTrails] DROP CONSTRAINT [FK_TaskAuditTrail];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[UserCountryRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserCountryRoles];
GO
IF OBJECT_ID(N'[dbo].[Rules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rules];
GO
IF OBJECT_ID(N'[dbo].[TaskTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskTypes];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO
IF OBJECT_ID(N'[dbo].[Files]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Files];
GO
IF OBJECT_ID(N'[dbo].[CarryForwardRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarryForwardRules];
GO
IF OBJECT_ID(N'[dbo].[EmailTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailTemplates];
GO
IF OBJECT_ID(N'[dbo].[Emails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Emails];
GO
IF OBJECT_ID(N'[dbo].[Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Status];
GO
IF OBJECT_ID(N'[dbo].[TaskStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaskStatus];
GO
IF OBJECT_ID(N'[dbo].[AuditTrails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuditTrails];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Q1Month] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserCountryRoles'
CREATE TABLE [dbo].[UserCountryRoles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [User_Id] bigint  NOT NULL,
    [Role_Id] int  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'Rules'
CREATE TABLE [dbo].[Rules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [BusinessDay] smallint  NOT NULL,
    [isRemaining] bit  NOT NULL,
    [UserCountryRole_Id] bigint  NOT NULL,
    [UserCountryRole1_Id] bigint  NOT NULL
);
GO

-- Creating table 'TaskTypes'
CREATE TABLE [dbo].[TaskTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Path] nvarchar(max)  NOT NULL,
    [TaskType_Id] int  NOT NULL,
    [Rule_Id] bigint  NOT NULL
);
GO

-- Creating table 'Files'
CREATE TABLE [dbo].[Files] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- Creating table 'CarryForwardRules'
CREATE TABLE [dbo].[CarryForwardRules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [PendingSince] datetime  NOT NULL,
    [Rule_Id] bigint  NOT NULL
);
GO

-- Creating table 'EmailTemplates'
CREATE TABLE [dbo].[EmailTemplates] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [From] nvarchar(max)  NOT NULL,
    [To] nvarchar(max)  NOT NULL,
    [CC] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [dbo].[Emails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [From] nvarchar(max)  NOT NULL,
    [To] nvarchar(max)  NOT NULL,
    [CC] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [UserCountryRole_Id] bigint  NOT NULL,
    [EmailTemplate_Id] bigint  NOT NULL,
    [UserCountryRole1_Id] bigint  NOT NULL,
    [UserCountryRole2_Id] bigint  NOT NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [dbo].[Status] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TaskStatus'
CREATE TABLE [dbo].[TaskStatus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Task_Id] int  NOT NULL,
    [Status_Id] bigint  NOT NULL
);
GO

-- Creating table 'AuditTrails'
CREATE TABLE [dbo].[AuditTrails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Log] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserCountryRoles'
ALTER TABLE [dbo].[UserCountryRoles]
ADD CONSTRAINT [PK_UserCountryRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rules'
ALTER TABLE [dbo].[Rules]
ADD CONSTRAINT [PK_Rules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskTypes'
ALTER TABLE [dbo].[TaskTypes]
ADD CONSTRAINT [PK_TaskTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Files'
ALTER TABLE [dbo].[Files]
ADD CONSTRAINT [PK_Files]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CarryForwardRules'
ALTER TABLE [dbo].[CarryForwardRules]
ADD CONSTRAINT [PK_CarryForwardRules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmailTemplates'
ALTER TABLE [dbo].[EmailTemplates]
ADD CONSTRAINT [PK_EmailTemplates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [PK_Emails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskStatus'
ALTER TABLE [dbo].[TaskStatus]
ADD CONSTRAINT [PK_TaskStatus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AuditTrails'
ALTER TABLE [dbo].[AuditTrails]
ADD CONSTRAINT [PK_AuditTrails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_Id] in table 'UserCountryRoles'
ALTER TABLE [dbo].[UserCountryRoles]
ADD CONSTRAINT [FK_UserUserCountryRole]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserCountryRole'
CREATE INDEX [IX_FK_UserUserCountryRole]
ON [dbo].[UserCountryRoles]
    ([User_Id]);
GO

-- Creating foreign key on [Role_Id] in table 'UserCountryRoles'
ALTER TABLE [dbo].[UserCountryRoles]
ADD CONSTRAINT [FK_RoleUserCountryRole]
    FOREIGN KEY ([Role_Id])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleUserCountryRole'
CREATE INDEX [IX_FK_RoleUserCountryRole]
ON [dbo].[UserCountryRoles]
    ([Role_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'UserCountryRoles'
ALTER TABLE [dbo].[UserCountryRoles]
ADD CONSTRAINT [FK_CountryUserCountryRole]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryUserCountryRole'
CREATE INDEX [IX_FK_CountryUserCountryRole]
ON [dbo].[UserCountryRoles]
    ([Country_Id]);
GO

-- Creating foreign key on [TaskType_Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_TaskTypeTask]
    FOREIGN KEY ([TaskType_Id])
    REFERENCES [dbo].[TaskTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTypeTask'
CREATE INDEX [IX_FK_TaskTypeTask]
ON [dbo].[Tasks]
    ([TaskType_Id]);
GO

-- Creating foreign key on [UserCountryRole_Id] in table 'Rules'
ALTER TABLE [dbo].[Rules]
ADD CONSTRAINT [FK_UserCountryRoleRule]
    FOREIGN KEY ([UserCountryRole_Id])
    REFERENCES [dbo].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleRule'
CREATE INDEX [IX_FK_UserCountryRoleRule]
ON [dbo].[Rules]
    ([UserCountryRole_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'Files'
ALTER TABLE [dbo].[Files]
ADD CONSTRAINT [FK_TaskFile]
    FOREIGN KEY ([Task_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskFile'
CREATE INDEX [IX_FK_TaskFile]
ON [dbo].[Files]
    ([Task_Id]);
GO

-- Creating foreign key on [Rule_Id] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_RuleTask]
    FOREIGN KEY ([Rule_Id])
    REFERENCES [dbo].[Rules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuleTask'
CREATE INDEX [IX_FK_RuleTask]
ON [dbo].[Tasks]
    ([Rule_Id]);
GO

-- Creating foreign key on [Rule_Id] in table 'CarryForwardRules'
ALTER TABLE [dbo].[CarryForwardRules]
ADD CONSTRAINT [FK_RuleCarryForwardRules]
    FOREIGN KEY ([Rule_Id])
    REFERENCES [dbo].[Rules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuleCarryForwardRules'
CREATE INDEX [IX_FK_RuleCarryForwardRules]
ON [dbo].[CarryForwardRules]
    ([Rule_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'EmailTemplates'
ALTER TABLE [dbo].[EmailTemplates]
ADD CONSTRAINT [FK_TaskEmailTemplate]
    FOREIGN KEY ([Task_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskEmailTemplate'
CREATE INDEX [IX_FK_TaskEmailTemplate]
ON [dbo].[EmailTemplates]
    ([Task_Id]);
GO

-- Creating foreign key on [UserCountryRole_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail]
    FOREIGN KEY ([UserCountryRole_Id])
    REFERENCES [dbo].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail'
CREATE INDEX [IX_FK_UserCountryRoleEmail]
ON [dbo].[Emails]
    ([UserCountryRole_Id]);
GO

-- Creating foreign key on [EmailTemplate_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_EmailTemplateEmail]
    FOREIGN KEY ([EmailTemplate_Id])
    REFERENCES [dbo].[EmailTemplates]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmailTemplateEmail'
CREATE INDEX [IX_FK_EmailTemplateEmail]
ON [dbo].[Emails]
    ([EmailTemplate_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'TaskStatus'
ALTER TABLE [dbo].[TaskStatus]
ADD CONSTRAINT [FK_TaskTaskStatus]
    FOREIGN KEY ([Task_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTaskStatus'
CREATE INDEX [IX_FK_TaskTaskStatus]
ON [dbo].[TaskStatus]
    ([Task_Id]);
GO

-- Creating foreign key on [Status_Id] in table 'TaskStatus'
ALTER TABLE [dbo].[TaskStatus]
ADD CONSTRAINT [FK_StatusTaskStatus]
    FOREIGN KEY ([Status_Id])
    REFERENCES [dbo].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StatusTaskStatus'
CREATE INDEX [IX_FK_StatusTaskStatus]
ON [dbo].[TaskStatus]
    ([Status_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'AuditTrails'
ALTER TABLE [dbo].[AuditTrails]
ADD CONSTRAINT [FK_TaskAuditTrail]
    FOREIGN KEY ([Task_Id])
    REFERENCES [dbo].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskAuditTrail'
CREATE INDEX [IX_FK_TaskAuditTrail]
ON [dbo].[AuditTrails]
    ([Task_Id]);
GO

-- Creating foreign key on [UserCountryRole1_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail1]
    FOREIGN KEY ([UserCountryRole1_Id])
    REFERENCES [dbo].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail1'
CREATE INDEX [IX_FK_UserCountryRoleEmail1]
ON [dbo].[Emails]
    ([UserCountryRole1_Id]);
GO

-- Creating foreign key on [UserCountryRole2_Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail2]
    FOREIGN KEY ([UserCountryRole2_Id])
    REFERENCES [dbo].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail2'
CREATE INDEX [IX_FK_UserCountryRoleEmail2]
ON [dbo].[Emails]
    ([UserCountryRole2_Id]);
GO

-- Creating foreign key on [UserCountryRole1_Id] in table 'Rules'
ALTER TABLE [dbo].[Rules]
ADD CONSTRAINT [FK_UserCountryRoleRule1]
    FOREIGN KEY ([UserCountryRole1_Id])
    REFERENCES [dbo].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleRule1'
CREATE INDEX [IX_FK_UserCountryRoleRule1]
ON [dbo].[Rules]
    ([UserCountryRole1_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/30/2017 12:00:28
-- Generated from EDMX file: C:\Users\662942\Documents\Visual Studio 2015\Projects\AIGLADAutomation\TaskUtility\LADAutomationDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LADAutomation];
GO
IF SCHEMA_ID(N'TaskUtility') IS NULL EXECUTE(N'CREATE SCHEMA [TaskUtility]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[TaskUtility].[FK_CountryUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[UserCountryRoles] DROP CONSTRAINT [FK_CountryUserCountryRole];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_EmailTemplateEmail]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Emails] DROP CONSTRAINT [FK_EmailTemplateEmail];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_RoleUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[UserCountryRoles] DROP CONSTRAINT [FK_RoleUserCountryRole];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_RuleCarryForwardRules]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[CarryForwardRules] DROP CONSTRAINT [FK_RuleCarryForwardRules];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_RuleTask]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Tasks] DROP CONSTRAINT [FK_RuleTask];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_StatusTaskStatus]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[TaskStatus] DROP CONSTRAINT [FK_StatusTaskStatus];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_TaskAuditTrail]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[AuditTrails] DROP CONSTRAINT [FK_TaskAuditTrail];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_TaskEmailTemplate]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[EmailTemplates] DROP CONSTRAINT [FK_TaskEmailTemplate];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_TaskFile]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Files] DROP CONSTRAINT [FK_TaskFile];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_Tasks_Tasks]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Tasks] DROP CONSTRAINT [FK_Tasks_Tasks];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_TaskTaskStatus]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[TaskStatus] DROP CONSTRAINT [FK_TaskTaskStatus];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_TaskTypeTask]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Tasks] DROP CONSTRAINT [FK_TaskTypeTask];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserCountryRoleEmail]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Emails] DROP CONSTRAINT [FK_UserCountryRoleEmail];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserCountryRoleEmail1]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Emails] DROP CONSTRAINT [FK_UserCountryRoleEmail1];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserCountryRoleEmail2]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Emails] DROP CONSTRAINT [FK_UserCountryRoleEmail2];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserCountryRoleRule]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Rules] DROP CONSTRAINT [FK_UserCountryRoleRule];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserCountryRoleRule1]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[Rules] DROP CONSTRAINT [FK_UserCountryRoleRule1];
GO
IF OBJECT_ID(N'[TaskUtility].[FK_UserUserCountryRole]', 'F') IS NOT NULL
    ALTER TABLE [TaskUtility].[UserCountryRoles] DROP CONSTRAINT [FK_UserUserCountryRole];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[TaskUtility].[AuditTrails]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[AuditTrails];
GO
IF OBJECT_ID(N'[TaskUtility].[CarryForwardRules]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[CarryForwardRules];
GO
IF OBJECT_ID(N'[TaskUtility].[Countries]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Countries];
GO
IF OBJECT_ID(N'[TaskUtility].[Emails]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Emails];
GO
IF OBJECT_ID(N'[TaskUtility].[EmailTemplates]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[EmailTemplates];
GO
IF OBJECT_ID(N'[TaskUtility].[Files]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Files];
GO
IF OBJECT_ID(N'[TaskUtility].[Roles]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Roles];
GO
IF OBJECT_ID(N'[TaskUtility].[Rules]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Rules];
GO
IF OBJECT_ID(N'[TaskUtility].[Status]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Status];
GO
IF OBJECT_ID(N'[TaskUtility].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Tasks];
GO
IF OBJECT_ID(N'[TaskUtility].[TaskStatus]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[TaskStatus];
GO
IF OBJECT_ID(N'[TaskUtility].[TaskTypes]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[TaskTypes];
GO
IF OBJECT_ID(N'[TaskUtility].[UserCountryRoles]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[UserCountryRoles];
GO
IF OBJECT_ID(N'[TaskUtility].[Users]', 'U') IS NOT NULL
    DROP TABLE [TaskUtility].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AuditTrails'
CREATE TABLE [TaskUtility].[AuditTrails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Log] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- Creating table 'CarryForwardRules'
CREATE TABLE [TaskUtility].[CarryForwardRules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [PendingSince] datetime  NOT NULL,
    [Rule_Id] bigint  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [TaskUtility].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Q1Month] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [TaskUtility].[Emails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [FromUserCountryRole_Id] bigint  NOT NULL,
    [EmailTemplate_Id] bigint  NOT NULL,
    [ToUserCountryRole_Id] bigint  NOT NULL,
    [CCUserCountryRole2_Id] bigint  NOT NULL
);
GO

-- Creating table 'EmailTemplates'
CREATE TABLE [TaskUtility].[EmailTemplates] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [From] nvarchar(max)  NOT NULL,
    [To] nvarchar(max)  NOT NULL,
    [CC] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- Creating table 'Files'
CREATE TABLE [TaskUtility].[Files] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Task_Id] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [TaskUtility].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Rules'
CREATE TABLE [TaskUtility].[Rules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [BusinessDay] smallint  NOT NULL,
    [isRemaining] bit  NOT NULL,
    [UserCountryRole_Id] bigint  NOT NULL,
    [UserCountryRole1_Id] bigint  NOT NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [TaskUtility].[Status] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [TaskUtility].[Tasks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Path] nvarchar(max)  NOT NULL,
    [TaskType_Id] int  NOT NULL,
    [Rule_Id] bigint  NOT NULL,
    [ParentTaskId] int  NULL
);
GO

-- Creating table 'TaskStatus'
CREATE TABLE [TaskUtility].[TaskStatus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Task_Id] int  NOT NULL,
    [Status_Id] bigint  NOT NULL
);
GO

-- Creating table 'TaskTypes'
CREATE TABLE [TaskUtility].[TaskTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserCountryRoles'
CREATE TABLE [TaskUtility].[UserCountryRoles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [User_Id] bigint  NOT NULL,
    [Role_Id] int  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [TaskUtility].[Users] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AuditTrails'
ALTER TABLE [TaskUtility].[AuditTrails]
ADD CONSTRAINT [PK_AuditTrails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CarryForwardRules'
ALTER TABLE [TaskUtility].[CarryForwardRules]
ADD CONSTRAINT [PK_CarryForwardRules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [TaskUtility].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Emails'
ALTER TABLE [TaskUtility].[Emails]
ADD CONSTRAINT [PK_Emails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmailTemplates'
ALTER TABLE [TaskUtility].[EmailTemplates]
ADD CONSTRAINT [PK_EmailTemplates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Files'
ALTER TABLE [TaskUtility].[Files]
ADD CONSTRAINT [PK_Files]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [TaskUtility].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rules'
ALTER TABLE [TaskUtility].[Rules]
ADD CONSTRAINT [PK_Rules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Status'
ALTER TABLE [TaskUtility].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Tasks'
ALTER TABLE [TaskUtility].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskStatus'
ALTER TABLE [TaskUtility].[TaskStatus]
ADD CONSTRAINT [PK_TaskStatus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TaskTypes'
ALTER TABLE [TaskUtility].[TaskTypes]
ADD CONSTRAINT [PK_TaskTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserCountryRoles'
ALTER TABLE [TaskUtility].[UserCountryRoles]
ADD CONSTRAINT [PK_UserCountryRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [TaskUtility].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Task_Id] in table 'AuditTrails'
ALTER TABLE [TaskUtility].[AuditTrails]
ADD CONSTRAINT [FK_TaskAuditTrail]
    FOREIGN KEY ([Task_Id])
    REFERENCES [TaskUtility].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskAuditTrail'
CREATE INDEX [IX_FK_TaskAuditTrail]
ON [TaskUtility].[AuditTrails]
    ([Task_Id]);
GO

-- Creating foreign key on [Rule_Id] in table 'CarryForwardRules'
ALTER TABLE [TaskUtility].[CarryForwardRules]
ADD CONSTRAINT [FK_RuleCarryForwardRules]
    FOREIGN KEY ([Rule_Id])
    REFERENCES [TaskUtility].[Rules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuleCarryForwardRules'
CREATE INDEX [IX_FK_RuleCarryForwardRules]
ON [TaskUtility].[CarryForwardRules]
    ([Rule_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'UserCountryRoles'
ALTER TABLE [TaskUtility].[UserCountryRoles]
ADD CONSTRAINT [FK_CountryUserCountryRole]
    FOREIGN KEY ([Country_Id])
    REFERENCES [TaskUtility].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryUserCountryRole'
CREATE INDEX [IX_FK_CountryUserCountryRole]
ON [TaskUtility].[UserCountryRoles]
    ([Country_Id]);
GO

-- Creating foreign key on [EmailTemplate_Id] in table 'Emails'
ALTER TABLE [TaskUtility].[Emails]
ADD CONSTRAINT [FK_EmailTemplateEmail]
    FOREIGN KEY ([EmailTemplate_Id])
    REFERENCES [TaskUtility].[EmailTemplates]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmailTemplateEmail'
CREATE INDEX [IX_FK_EmailTemplateEmail]
ON [TaskUtility].[Emails]
    ([EmailTemplate_Id]);
GO

-- Creating foreign key on [FromUserCountryRole_Id] in table 'Emails'
ALTER TABLE [TaskUtility].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail]
    FOREIGN KEY ([FromUserCountryRole_Id])
    REFERENCES [TaskUtility].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail'
CREATE INDEX [IX_FK_UserCountryRoleEmail]
ON [TaskUtility].[Emails]
    ([FromUserCountryRole_Id]);
GO

-- Creating foreign key on [ToUserCountryRole_Id] in table 'Emails'
ALTER TABLE [TaskUtility].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail1]
    FOREIGN KEY ([ToUserCountryRole_Id])
    REFERENCES [TaskUtility].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail1'
CREATE INDEX [IX_FK_UserCountryRoleEmail1]
ON [TaskUtility].[Emails]
    ([ToUserCountryRole_Id]);
GO

-- Creating foreign key on [CCUserCountryRole2_Id] in table 'Emails'
ALTER TABLE [TaskUtility].[Emails]
ADD CONSTRAINT [FK_UserCountryRoleEmail2]
    FOREIGN KEY ([CCUserCountryRole2_Id])
    REFERENCES [TaskUtility].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleEmail2'
CREATE INDEX [IX_FK_UserCountryRoleEmail2]
ON [TaskUtility].[Emails]
    ([CCUserCountryRole2_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'EmailTemplates'
ALTER TABLE [TaskUtility].[EmailTemplates]
ADD CONSTRAINT [FK_TaskEmailTemplate]
    FOREIGN KEY ([Task_Id])
    REFERENCES [TaskUtility].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskEmailTemplate'
CREATE INDEX [IX_FK_TaskEmailTemplate]
ON [TaskUtility].[EmailTemplates]
    ([Task_Id]);
GO

-- Creating foreign key on [Task_Id] in table 'Files'
ALTER TABLE [TaskUtility].[Files]
ADD CONSTRAINT [FK_TaskFile]
    FOREIGN KEY ([Task_Id])
    REFERENCES [TaskUtility].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskFile'
CREATE INDEX [IX_FK_TaskFile]
ON [TaskUtility].[Files]
    ([Task_Id]);
GO

-- Creating foreign key on [Role_Id] in table 'UserCountryRoles'
ALTER TABLE [TaskUtility].[UserCountryRoles]
ADD CONSTRAINT [FK_RoleUserCountryRole]
    FOREIGN KEY ([Role_Id])
    REFERENCES [TaskUtility].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleUserCountryRole'
CREATE INDEX [IX_FK_RoleUserCountryRole]
ON [TaskUtility].[UserCountryRoles]
    ([Role_Id]);
GO

-- Creating foreign key on [Rule_Id] in table 'Tasks'
ALTER TABLE [TaskUtility].[Tasks]
ADD CONSTRAINT [FK_RuleTask]
    FOREIGN KEY ([Rule_Id])
    REFERENCES [TaskUtility].[Rules]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuleTask'
CREATE INDEX [IX_FK_RuleTask]
ON [TaskUtility].[Tasks]
    ([Rule_Id]);
GO

-- Creating foreign key on [UserCountryRole_Id] in table 'Rules'
ALTER TABLE [TaskUtility].[Rules]
ADD CONSTRAINT [FK_UserCountryRoleRule]
    FOREIGN KEY ([UserCountryRole_Id])
    REFERENCES [TaskUtility].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleRule'
CREATE INDEX [IX_FK_UserCountryRoleRule]
ON [TaskUtility].[Rules]
    ([UserCountryRole_Id]);
GO

-- Creating foreign key on [UserCountryRole1_Id] in table 'Rules'
ALTER TABLE [TaskUtility].[Rules]
ADD CONSTRAINT [FK_UserCountryRoleRule1]
    FOREIGN KEY ([UserCountryRole1_Id])
    REFERENCES [TaskUtility].[UserCountryRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCountryRoleRule1'
CREATE INDEX [IX_FK_UserCountryRoleRule1]
ON [TaskUtility].[Rules]
    ([UserCountryRole1_Id]);
GO

-- Creating foreign key on [Status_Id] in table 'TaskStatus'
ALTER TABLE [TaskUtility].[TaskStatus]
ADD CONSTRAINT [FK_StatusTaskStatus]
    FOREIGN KEY ([Status_Id])
    REFERENCES [TaskUtility].[Status]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StatusTaskStatus'
CREATE INDEX [IX_FK_StatusTaskStatus]
ON [TaskUtility].[TaskStatus]
    ([Status_Id]);
GO

-- Creating foreign key on [ParentTaskId] in table 'Tasks'
ALTER TABLE [TaskUtility].[Tasks]
ADD CONSTRAINT [FK_Tasks_Tasks]
    FOREIGN KEY ([ParentTaskId])
    REFERENCES [TaskUtility].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Tasks'
CREATE INDEX [IX_FK_Tasks_Tasks]
ON [TaskUtility].[Tasks]
    ([ParentTaskId]);
GO

-- Creating foreign key on [Task_Id] in table 'TaskStatus'
ALTER TABLE [TaskUtility].[TaskStatus]
ADD CONSTRAINT [FK_TaskTaskStatus]
    FOREIGN KEY ([Task_Id])
    REFERENCES [TaskUtility].[Tasks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTaskStatus'
CREATE INDEX [IX_FK_TaskTaskStatus]
ON [TaskUtility].[TaskStatus]
    ([Task_Id]);
GO

-- Creating foreign key on [TaskType_Id] in table 'Tasks'
ALTER TABLE [TaskUtility].[Tasks]
ADD CONSTRAINT [FK_TaskTypeTask]
    FOREIGN KEY ([TaskType_Id])
    REFERENCES [TaskUtility].[TaskTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TaskTypeTask'
CREATE INDEX [IX_FK_TaskTypeTask]
ON [TaskUtility].[Tasks]
    ([TaskType_Id]);
GO

-- Creating foreign key on [User_Id] in table 'UserCountryRoles'
ALTER TABLE [TaskUtility].[UserCountryRoles]
ADD CONSTRAINT [FK_UserUserCountryRole]
    FOREIGN KEY ([User_Id])
    REFERENCES [TaskUtility].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserCountryRole'
CREATE INDEX [IX_FK_UserUserCountryRole]
ON [TaskUtility].[UserCountryRoles]
    ([User_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
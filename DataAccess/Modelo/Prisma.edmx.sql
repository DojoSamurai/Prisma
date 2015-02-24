
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/20/2015 13:39:50
-- Generated from EDMX file: C:\Proyectos\Prisma\trunk\DataAccess\Entidades\Prisma.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PRISMA];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EmpleadoTipoDocumento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoSet] DROP CONSTRAINT [FK_EmpleadoTipoDocumento];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoCategoria_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoCategoria] DROP CONSTRAINT [FK_EmpleadoCategoria_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoCategoria_Categoria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoCategoria] DROP CONSTRAINT [FK_EmpleadoCategoria_Categoria];
GO
IF OBJECT_ID(N'[dbo].[FK_ProvinciaPais]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProvinciaSet] DROP CONSTRAINT [FK_ProvinciaPais];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalidadProvincia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LocalidadSet] DROP CONSTRAINT [FK_LocalidadProvincia];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoLocalidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoSet] DROP CONSTRAINT [FK_EmpleadoLocalidad];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadEmpleado_Antiguedad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadEmpleado] DROP CONSTRAINT [FK_AntiguedadEmpleado_Antiguedad];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadEmpleado_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadEmpleado] DROP CONSTRAINT [FK_AntiguedadEmpleado_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadDetalleAntiguedad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadDetalleSet] DROP CONSTRAINT [FK_AntiguedadDetalleAntiguedad];
GO
IF OBJECT_ID(N'[dbo].[FK_EstablecimientoAntiguedadDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadDetalleSet] DROP CONSTRAINT [FK_EstablecimientoAntiguedadDetalle];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EmpleadoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadoSet];
GO
IF OBJECT_ID(N'[dbo].[TipoDocumentoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoDocumentoSet];
GO
IF OBJECT_ID(N'[dbo].[CategoriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoriaSet];
GO
IF OBJECT_ID(N'[dbo].[LocalidadSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocalidadSet];
GO
IF OBJECT_ID(N'[dbo].[ProvinciaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProvinciaSet];
GO
IF OBJECT_ID(N'[dbo].[PaisSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaisSet];
GO
IF OBJECT_ID(N'[dbo].[AntiguedadSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AntiguedadSet];
GO
IF OBJECT_ID(N'[dbo].[AntiguedadDetalleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AntiguedadDetalleSet];
GO
IF OBJECT_ID(N'[dbo].[EstablecimientoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstablecimientoSet];
GO
IF OBJECT_ID(N'[dbo].[EmpleadoCategoria]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadoCategoria];
GO
IF OBJECT_ID(N'[dbo].[AntiguedadEmpleado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AntiguedadEmpleado];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpleadoSet'
CREATE TABLE [dbo].[EmpleadoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [NumeroDocumento] int  NOT NULL,
    [Legajo] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Celular] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Calle] nvarchar(max)  NOT NULL,
    [Altura] smallint  NOT NULL,
    [PisoDto] nvarchar(max)  NOT NULL,
    [TipoDocumentoId] int  NOT NULL,
    [TipoDocumento_Id] int  NOT NULL,
    [Localidad_Id] int  NOT NULL
);
GO

-- Creating table 'TipoDocumentoSet'
CREATE TABLE [dbo].[TipoDocumentoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CategoriaSet'
CREATE TABLE [dbo].[CategoriaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LocalidadSet'
CREATE TABLE [dbo].[LocalidadSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Provincia_Id] int  NOT NULL
);
GO

-- Creating table 'ProvinciaSet'
CREATE TABLE [dbo].[ProvinciaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Pais_Id] int  NOT NULL
);
GO

-- Creating table 'PaisSet'
CREATE TABLE [dbo].[PaisSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AntiguedadSet'
CREATE TABLE [dbo].[AntiguedadSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL
);
GO

-- Creating table 'AntiguedadDetalleSet'
CREATE TABLE [dbo].[AntiguedadDetalleSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [fecha_desde] datetime  NOT NULL,
    [fecha_hasta] datetime  NOT NULL,
    [dif_anios] smallint  NOT NULL,
    [dif_meses] smallint  NOT NULL,
    [dif_dias] smallint  NOT NULL,
    [Antiguedad_Id] int  NOT NULL,
    [Establecimiento_Id] int  NOT NULL
);
GO

-- Creating table 'EstablecimientoSet'
CREATE TABLE [dbo].[EstablecimientoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmpleadoCategoria'
CREATE TABLE [dbo].[EmpleadoCategoria] (
    [Empleado_Id] int  NOT NULL,
    [Categoria_Id] int  NOT NULL
);
GO

-- Creating table 'AntiguedadEmpleado'
CREATE TABLE [dbo].[AntiguedadEmpleado] (
    [Antiguedad_Id] int  NOT NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadoSet'
ALTER TABLE [dbo].[EmpleadoSet]
ADD CONSTRAINT [PK_EmpleadoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoDocumentoSet'
ALTER TABLE [dbo].[TipoDocumentoSet]
ADD CONSTRAINT [PK_TipoDocumentoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CategoriaSet'
ALTER TABLE [dbo].[CategoriaSet]
ADD CONSTRAINT [PK_CategoriaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LocalidadSet'
ALTER TABLE [dbo].[LocalidadSet]
ADD CONSTRAINT [PK_LocalidadSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProvinciaSet'
ALTER TABLE [dbo].[ProvinciaSet]
ADD CONSTRAINT [PK_ProvinciaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PaisSet'
ALTER TABLE [dbo].[PaisSet]
ADD CONSTRAINT [PK_PaisSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AntiguedadSet'
ALTER TABLE [dbo].[AntiguedadSet]
ADD CONSTRAINT [PK_AntiguedadSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AntiguedadDetalleSet'
ALTER TABLE [dbo].[AntiguedadDetalleSet]
ADD CONSTRAINT [PK_AntiguedadDetalleSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EstablecimientoSet'
ALTER TABLE [dbo].[EstablecimientoSet]
ADD CONSTRAINT [PK_EstablecimientoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Empleado_Id], [Categoria_Id] in table 'EmpleadoCategoria'
ALTER TABLE [dbo].[EmpleadoCategoria]
ADD CONSTRAINT [PK_EmpleadoCategoria]
    PRIMARY KEY NONCLUSTERED ([Empleado_Id], [Categoria_Id] ASC);
GO

-- Creating primary key on [Antiguedad_Id], [Empleado_Id] in table 'AntiguedadEmpleado'
ALTER TABLE [dbo].[AntiguedadEmpleado]
ADD CONSTRAINT [PK_AntiguedadEmpleado]
    PRIMARY KEY NONCLUSTERED ([Antiguedad_Id], [Empleado_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TipoDocumento_Id] in table 'EmpleadoSet'
ALTER TABLE [dbo].[EmpleadoSet]
ADD CONSTRAINT [FK_EmpleadoTipoDocumento]
    FOREIGN KEY ([TipoDocumento_Id])
    REFERENCES [dbo].[TipoDocumentoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoTipoDocumento'
CREATE INDEX [IX_FK_EmpleadoTipoDocumento]
ON [dbo].[EmpleadoSet]
    ([TipoDocumento_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'EmpleadoCategoria'
ALTER TABLE [dbo].[EmpleadoCategoria]
ADD CONSTRAINT [FK_EmpleadoCategoria_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[EmpleadoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categoria_Id] in table 'EmpleadoCategoria'
ALTER TABLE [dbo].[EmpleadoCategoria]
ADD CONSTRAINT [FK_EmpleadoCategoria_Categoria]
    FOREIGN KEY ([Categoria_Id])
    REFERENCES [dbo].[CategoriaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoCategoria_Categoria'
CREATE INDEX [IX_FK_EmpleadoCategoria_Categoria]
ON [dbo].[EmpleadoCategoria]
    ([Categoria_Id]);
GO

-- Creating foreign key on [Pais_Id] in table 'ProvinciaSet'
ALTER TABLE [dbo].[ProvinciaSet]
ADD CONSTRAINT [FK_ProvinciaPais]
    FOREIGN KEY ([Pais_Id])
    REFERENCES [dbo].[PaisSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvinciaPais'
CREATE INDEX [IX_FK_ProvinciaPais]
ON [dbo].[ProvinciaSet]
    ([Pais_Id]);
GO

-- Creating foreign key on [Provincia_Id] in table 'LocalidadSet'
ALTER TABLE [dbo].[LocalidadSet]
ADD CONSTRAINT [FK_LocalidadProvincia]
    FOREIGN KEY ([Provincia_Id])
    REFERENCES [dbo].[ProvinciaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalidadProvincia'
CREATE INDEX [IX_FK_LocalidadProvincia]
ON [dbo].[LocalidadSet]
    ([Provincia_Id]);
GO

-- Creating foreign key on [Localidad_Id] in table 'EmpleadoSet'
ALTER TABLE [dbo].[EmpleadoSet]
ADD CONSTRAINT [FK_EmpleadoLocalidad]
    FOREIGN KEY ([Localidad_Id])
    REFERENCES [dbo].[LocalidadSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoLocalidad'
CREATE INDEX [IX_FK_EmpleadoLocalidad]
ON [dbo].[EmpleadoSet]
    ([Localidad_Id]);
GO

-- Creating foreign key on [Antiguedad_Id] in table 'AntiguedadEmpleado'
ALTER TABLE [dbo].[AntiguedadEmpleado]
ADD CONSTRAINT [FK_AntiguedadEmpleado_Antiguedad]
    FOREIGN KEY ([Antiguedad_Id])
    REFERENCES [dbo].[AntiguedadSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleado_Id] in table 'AntiguedadEmpleado'
ALTER TABLE [dbo].[AntiguedadEmpleado]
ADD CONSTRAINT [FK_AntiguedadEmpleado_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[EmpleadoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AntiguedadEmpleado_Empleado'
CREATE INDEX [IX_FK_AntiguedadEmpleado_Empleado]
ON [dbo].[AntiguedadEmpleado]
    ([Empleado_Id]);
GO

-- Creating foreign key on [Antiguedad_Id] in table 'AntiguedadDetalleSet'
ALTER TABLE [dbo].[AntiguedadDetalleSet]
ADD CONSTRAINT [FK_AntiguedadDetalleAntiguedad]
    FOREIGN KEY ([Antiguedad_Id])
    REFERENCES [dbo].[AntiguedadSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AntiguedadDetalleAntiguedad'
CREATE INDEX [IX_FK_AntiguedadDetalleAntiguedad]
ON [dbo].[AntiguedadDetalleSet]
    ([Antiguedad_Id]);
GO

-- Creating foreign key on [Establecimiento_Id] in table 'AntiguedadDetalleSet'
ALTER TABLE [dbo].[AntiguedadDetalleSet]
ADD CONSTRAINT [FK_EstablecimientoAntiguedadDetalle]
    FOREIGN KEY ([Establecimiento_Id])
    REFERENCES [dbo].[EstablecimientoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EstablecimientoAntiguedadDetalle'
CREATE INDEX [IX_FK_EstablecimientoAntiguedadDetalle]
ON [dbo].[AntiguedadDetalleSet]
    ([Establecimiento_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/01/2015 22:46:21
-- Generated from EDMX file: C:\Proyecto\trunk\DataAccess\Modelo\Prisma.edmx
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
    ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_EmpleadoTipoDocumento];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoCategoria_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoCategoria] DROP CONSTRAINT [FK_EmpleadoCategoria_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoCategoria_Categoria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoCategoria] DROP CONSTRAINT [FK_EmpleadoCategoria_Categoria];
GO
IF OBJECT_ID(N'[dbo].[FK_ProvinciaPais]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Provincias] DROP CONSTRAINT [FK_ProvinciaPais];
GO
IF OBJECT_ID(N'[dbo].[FK_LocalidadProvincia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Localidades] DROP CONSTRAINT [FK_LocalidadProvincia];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoLocalidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_EmpleadoLocalidad];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadEmpleado_Antiguedad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadEmpleado] DROP CONSTRAINT [FK_AntiguedadEmpleado_Antiguedad];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadEmpleado_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadEmpleado] DROP CONSTRAINT [FK_AntiguedadEmpleado_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_AntiguedadDetalleAntiguedad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadesDetalle] DROP CONSTRAINT [FK_AntiguedadDetalleAntiguedad];
GO
IF OBJECT_ID(N'[dbo].[FK_EstablecimientoAntiguedadDetalle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AntiguedadesDetalle] DROP CONSTRAINT [FK_EstablecimientoAntiguedadDetalle];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Empleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleados];
GO
IF OBJECT_ID(N'[dbo].[TiposDocumento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TiposDocumento];
GO
IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Localidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Localidades];
GO
IF OBJECT_ID(N'[dbo].[Provincias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Provincias];
GO
IF OBJECT_ID(N'[dbo].[Paises]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paises];
GO
IF OBJECT_ID(N'[dbo].[Antiguedades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Antiguedades];
GO
IF OBJECT_ID(N'[dbo].[AntiguedadesDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AntiguedadesDetalle];
GO
IF OBJECT_ID(N'[dbo].[Establecimientos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Establecimientos];
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

-- Creating table 'Empleados'
CREATE TABLE [dbo].[Empleados] (
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

-- Creating table 'TiposDocumento'
CREATE TABLE [dbo].[TiposDocumento] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Localidades'
CREATE TABLE [dbo].[Localidades] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Provincia_Id] int  NOT NULL
);
GO

-- Creating table 'Provincias'
CREATE TABLE [dbo].[Provincias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Pais_Id] int  NOT NULL
);
GO

-- Creating table 'Paises'
CREATE TABLE [dbo].[Paises] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Antiguedades'
CREATE TABLE [dbo].[Antiguedades] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL
);
GO

-- Creating table 'AntiguedadesDetalle'
CREATE TABLE [dbo].[AntiguedadesDetalle] (
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

-- Creating table 'Establecimientos'
CREATE TABLE [dbo].[Establecimientos] (
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

-- Creating primary key on [Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [PK_Empleados]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TiposDocumento'
ALTER TABLE [dbo].[TiposDocumento]
ADD CONSTRAINT [PK_TiposDocumento]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Localidades'
ALTER TABLE [dbo].[Localidades]
ADD CONSTRAINT [PK_Localidades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Provincias'
ALTER TABLE [dbo].[Provincias]
ADD CONSTRAINT [PK_Provincias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paises'
ALTER TABLE [dbo].[Paises]
ADD CONSTRAINT [PK_Paises]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Antiguedades'
ALTER TABLE [dbo].[Antiguedades]
ADD CONSTRAINT [PK_Antiguedades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AntiguedadesDetalle'
ALTER TABLE [dbo].[AntiguedadesDetalle]
ADD CONSTRAINT [PK_AntiguedadesDetalle]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Establecimientos'
ALTER TABLE [dbo].[Establecimientos]
ADD CONSTRAINT [PK_Establecimientos]
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

-- Creating foreign key on [TipoDocumento_Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [FK_EmpleadoTipoDocumento]
    FOREIGN KEY ([TipoDocumento_Id])
    REFERENCES [dbo].[TiposDocumento]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoTipoDocumento'
CREATE INDEX [IX_FK_EmpleadoTipoDocumento]
ON [dbo].[Empleados]
    ([TipoDocumento_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'EmpleadoCategoria'
ALTER TABLE [dbo].[EmpleadoCategoria]
ADD CONSTRAINT [FK_EmpleadoCategoria_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categoria_Id] in table 'EmpleadoCategoria'
ALTER TABLE [dbo].[EmpleadoCategoria]
ADD CONSTRAINT [FK_EmpleadoCategoria_Categoria]
    FOREIGN KEY ([Categoria_Id])
    REFERENCES [dbo].[Categorias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoCategoria_Categoria'
CREATE INDEX [IX_FK_EmpleadoCategoria_Categoria]
ON [dbo].[EmpleadoCategoria]
    ([Categoria_Id]);
GO

-- Creating foreign key on [Pais_Id] in table 'Provincias'
ALTER TABLE [dbo].[Provincias]
ADD CONSTRAINT [FK_ProvinciaPais]
    FOREIGN KEY ([Pais_Id])
    REFERENCES [dbo].[Paises]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProvinciaPais'
CREATE INDEX [IX_FK_ProvinciaPais]
ON [dbo].[Provincias]
    ([Pais_Id]);
GO

-- Creating foreign key on [Provincia_Id] in table 'Localidades'
ALTER TABLE [dbo].[Localidades]
ADD CONSTRAINT [FK_LocalidadProvincia]
    FOREIGN KEY ([Provincia_Id])
    REFERENCES [dbo].[Provincias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LocalidadProvincia'
CREATE INDEX [IX_FK_LocalidadProvincia]
ON [dbo].[Localidades]
    ([Provincia_Id]);
GO

-- Creating foreign key on [Localidad_Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [FK_EmpleadoLocalidad]
    FOREIGN KEY ([Localidad_Id])
    REFERENCES [dbo].[Localidades]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoLocalidad'
CREATE INDEX [IX_FK_EmpleadoLocalidad]
ON [dbo].[Empleados]
    ([Localidad_Id]);
GO

-- Creating foreign key on [Antiguedad_Id] in table 'AntiguedadEmpleado'
ALTER TABLE [dbo].[AntiguedadEmpleado]
ADD CONSTRAINT [FK_AntiguedadEmpleado_Antiguedad]
    FOREIGN KEY ([Antiguedad_Id])
    REFERENCES [dbo].[Antiguedades]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleado_Id] in table 'AntiguedadEmpleado'
ALTER TABLE [dbo].[AntiguedadEmpleado]
ADD CONSTRAINT [FK_AntiguedadEmpleado_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AntiguedadEmpleado_Empleado'
CREATE INDEX [IX_FK_AntiguedadEmpleado_Empleado]
ON [dbo].[AntiguedadEmpleado]
    ([Empleado_Id]);
GO

-- Creating foreign key on [Antiguedad_Id] in table 'AntiguedadesDetalle'
ALTER TABLE [dbo].[AntiguedadesDetalle]
ADD CONSTRAINT [FK_AntiguedadDetalleAntiguedad]
    FOREIGN KEY ([Antiguedad_Id])
    REFERENCES [dbo].[Antiguedades]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AntiguedadDetalleAntiguedad'
CREATE INDEX [IX_FK_AntiguedadDetalleAntiguedad]
ON [dbo].[AntiguedadesDetalle]
    ([Antiguedad_Id]);
GO

-- Creating foreign key on [Establecimiento_Id] in table 'AntiguedadesDetalle'
ALTER TABLE [dbo].[AntiguedadesDetalle]
ADD CONSTRAINT [FK_EstablecimientoAntiguedadDetalle]
    FOREIGN KEY ([Establecimiento_Id])
    REFERENCES [dbo].[Establecimientos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EstablecimientoAntiguedadDetalle'
CREATE INDEX [IX_FK_EstablecimientoAntiguedadDetalle]
ON [dbo].[AntiguedadesDetalle]
    ([Establecimiento_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
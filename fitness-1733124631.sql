CREATE TABLE [hall] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[gym] nvarchar(max) NOT NULL,
	[dance] nvarchar(max) NOT NULL,
	[box] nvarchar(max) NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [time_ticket] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[one_traning] time(7) NOT NULL,
	[month] time(7) NOT NULL,
	[year] time(7) NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [season_ticket] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[time_ticket_id] int NOT NULL,
	[hall_id] int NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [client] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[full_name] nvarchar(max) NOT NULL,
	[hall_id] int NOT NULL,
	[begin_ticket] date NOT NULL,
	[end_ticket] date NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [workout] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[client_id] int NOT NULL,
	[begin_coaching] time(7) NOT NULL,
	[end_coaching] time(7) NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [fitness_room] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[client_id] int NOT NULL,
	[hall_id] int NOT NULL,
	[season_ticket] nvarchar(max) NOT NULL,
	[coach] nvarchar(max) NOT NULL,
	PRIMARY KEY ([id])
);



ALTER TABLE [season_ticket] ADD CONSTRAINT [season_ticket_fk1] FOREIGN KEY ([time_ticket_id]) REFERENCES [time_ticket]([id]);

ALTER TABLE [season_ticket] ADD CONSTRAINT [season_ticket_fk2] FOREIGN KEY ([hall_id]) REFERENCES [hall]([id]);
ALTER TABLE [client] ADD CONSTRAINT [client_fk2] FOREIGN KEY ([hall_id]) REFERENCES [hall]([id]);
ALTER TABLE [workout] ADD CONSTRAINT [workout_fk1] FOREIGN KEY ([client_id]) REFERENCES [client]([id]);
ALTER TABLE [fitness_room] ADD CONSTRAINT [fitness_room_fk1] FOREIGN KEY ([client_id]) REFERENCES [client]([id]);

ALTER TABLE [fitness_room] ADD CONSTRAINT [fitness_room_fk2] FOREIGN KEY ([hall_id]) REFERENCES [hall]([id]);
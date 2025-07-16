create table dim_date(
    snapshot_date date primary key,
    year int,
    month int,
    day int,
    day_of_week varchar(10),
    quarter int
);
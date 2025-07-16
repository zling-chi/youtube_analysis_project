create table dim_video (
    video_id varchar(50) primary key,
    title varchar(255),
    description text,
    thumbnail_url text,
    publish_date date,
    kind varchar(255),
    languge varchar(50),
    channel_id varchar(255),
    video_tags text,
    foreign key (channel_id) references dim_channel(channel_id)
);
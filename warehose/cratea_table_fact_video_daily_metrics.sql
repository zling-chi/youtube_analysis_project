create table fact_video_daily_metrics (
video_id varchar(255),
snapshot_date date,
daily_rank int,
daily_movement int,
weekly_movement int,
view_count bigint,
comment_count bigint,
country varchar(255),
primary key (video_id,snapshot_date),
foreign key (video_id) references dim_video(video_id),
foreign key (snapshot_date) references dim_date(date_key)
)
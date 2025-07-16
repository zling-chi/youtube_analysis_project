insert ignore into fact_video_daily_metrics(
    video_id,
    snapshot_date,
    daily_rank,
    daily_movement,
    weekly_movement,
    view_count,
    like_count,
    comment_count,
    country
)
select
	video_id,
    snapshot_date,
    daily_rank,
    daily_movement,
    weekly_movement,
    view_count,
    like_count,
    comment_count,
    country
from youtube_hot_video_sample
where video_id is not null 
and snapshot_date is not null;
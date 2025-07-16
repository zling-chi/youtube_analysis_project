insert ignore into dim_video(
    video_id,
    title,
    description,
    thumbnail_url,
    publish_date,
    langauge,
    channel_id,
    video_tags
)
select distinct video_id,
    title,
    description,
    thumbnail_url,
    publish_date,
    langauge,
    channel_id,
    video_tags
from youtube_hot_video_sample
where video_id is not null;
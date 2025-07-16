insert ignore into dim_channel (channel_id,channel_name)
select distinct channel_id,channel_name
from youtube_hot_video_sample
where channel_id is not null;
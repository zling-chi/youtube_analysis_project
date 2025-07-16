insert ignore into dim_date (
    date_key,
    year,
    month,
    day,
    day_of_week,
    quarter
)
select distinct
    snapshot_date,
    year(snapshot_date),
    month(snapshot_date),
    day(snapshot_date),
    dayname(snapshot_date),
    quarter(snapshot_date)
from youtube_hot_video_sample
where snapshot_date is not null;
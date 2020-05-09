create or replace function ${WMADATA_SCHEMA_NAME}.get_utc_timestamp_using_offset(date_measured_raw timestamp, timezone_offset character varying)
returns timestamp
language plpgsql
as $$
declare
  adjusted_timestamp timestamp;
  absolute_offset time;
  offset_direction character(1);
begin
  absolute_offset = substring(timezone_offset, '\d*:\d*');

  case
    when substring(timezone_offset for 1) = '-'
      then
        adjusted_timestamp = date_measured_raw + absolute_offset;
    else
        adjusted_timestamp = date_measured_raw - absolute_offset;
  end case;

  return adjusted_timestamp;
end
$$
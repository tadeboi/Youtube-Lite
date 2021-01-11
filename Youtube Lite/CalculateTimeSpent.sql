create procedure timespent
as
begin
  return (select DATEDIFF(HH,StartTime,EndTime)from Viewers)
end
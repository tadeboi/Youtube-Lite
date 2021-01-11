-- To Calculate Views per Video
Create procedure Views
@VideoID INT,
@viewersid INT
as
begin
return (select Count(@viewersid) from Viewers where videoID=@VideoID and ViewersID=@viewersid 
group by videoID
)
end

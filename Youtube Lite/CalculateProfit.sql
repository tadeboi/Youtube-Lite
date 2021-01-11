
-- To Calculate the Profit for the Youtuber

Create procedure Profit

@countryID int, 
@Adsincome int

as
begin
if (@countryID=1)
begin
 return(select FORMAT((@Adsincome*0.55),'C','en-US'))
end

if (@countryID=2)
begin
 return(select FORMAT((@Adsincome*0.55),'C','fr-FR') from YoutuberVideos where countryid=@countryID and AdsIncome=@Adsincome )
end
end


--To




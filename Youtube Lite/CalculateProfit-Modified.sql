
-- To Calculate the Profit for the Youtuber

Create procedure Profit

@countryID int, 
@Adsincome int,
@exchangeRate decimal

as
begin
if (@countryID=1)
begin
 return(select FORMAT((@Adsincome*@exchangeRate*0.55),'C','en-US') from Currency where countryid=@countryID and AdsIncome=@Adsincome and exchangeRate=@exchangeRate)
end

if (@countryID=2)
begin
 return(select FORMAT((@Adsincome*@exchangeRate*0.55),'C','fr-FR') from Currency where countryid=@countryID and AdsIncome=@Adsincome and exchangeRate=@exchangeRate)
end
end







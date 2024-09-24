create temporary table a_table (id integer, address text); 
insert into a_table 
values
 (1, 'Ñòóäåíòñêè Êîìïëåêñ, óë. „Ðîñàðèî“ 1, 1756 Ñîôèÿ'),
 (2, 'êâ. Äèàíàáàä.19 Ã, 1172 Ñîôèÿ'),
 (3, '4000 Ïëîâäèâ Öåíòúð, óë. „Èâàí Âàçîâ“ 59'),
 (4, 'æ.ê. Ëîçåíåö, áóë. „Äæåéìñ Áàó÷åð“ 5, 1164 Ñîôèÿ');

select	id, substring(address from '\y(\d{4})\y') as zipcode
from a_table;

select * from a_table
where address ~ 'óë\.';

select * from a_table
where address ~ '\yóë\.' -- note Y vs. Ó 
   or address ~* '^ÊÂ\..*ÎÔÈß$';

select * 
from regexp_split_to_table('Hello regexp. power - at my fingertips!', '[, \.!+-]+') as rs; 

discard all; -- this would drop temporary objects

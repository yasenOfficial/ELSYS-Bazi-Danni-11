create temporary table a_table (id integer, address text); 
insert into a_table 
values
 (1, '���������� ��������, ��. �������� 1, 1756 �����'),
 (2, '��. ��������.19 �, 1172 �����'),
 (3, '4000 ������� ������, ��. ����� ����� 59'),
 (4, '�.�. �������, ���. ������� ������ 5, 1164 �����');

select	id, substring(address from '\y(\d{4})\y') as zipcode
from a_table;

select * from a_table
where address ~ '��\.';

select * from a_table
where address ~ '\y��\.' -- note Y vs. � 
   or address ~* '^��\..*����$';

select * 
from regexp_split_to_table('Hello regexp. power - at my fingertips!', '[, \.!+-]+') as rs; 

discard all; -- this would drop temporary objects
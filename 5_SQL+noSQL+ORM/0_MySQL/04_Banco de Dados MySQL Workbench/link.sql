USE swf2020;

SELECT * FROM swf2020.links;

select max(hits) from links;

select * from links where hits=(select max(hits) from links);








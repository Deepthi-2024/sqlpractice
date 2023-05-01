 INSERT INTO rgm VALUES(801,"Deepthi","RGMCET","JAVA",111111111,"America");
 INSERT INTO rgm VALUES(802,"Anitha","GPREC","PYTHON",111111222,"Canada");
 INSERT INTO rgm VALUES(803,"Akshaya","MITS","C",111111333,"Australia");
 INSERT INTO rgm VALUES(804,"Anjali","SVEC","ADVANCED C",1113456111,"India");
 INSERT INTO rgm VALUES(805,"sravya","GPREC","JAVA",1111135661,"Canada");
 INSERT INTO rgm VALUES(806,"Bhagya","SVEC","PYTHON",13789511,"Singapore");
 INSERT INTO rgm VALUES(807,"Chaitra","RGMCET","JAVA",111437834,"America");
 INSERT INTO rgm VALUES(808,"Geetha","SVU","SQL",111543711,"Canada");
 INSERT INTO rgm VALUES(809,"Ramya","MITS","C",346680111,"Australia");
 INSERT INTO rgm VALUES(810,"Sujatha","RGMCET","SQL",45567111,"Canada");
  INSERT INTO rgm VALUES(811,"kavitha","svu","JAVA",48576011,"Singapore");
select * from rgm;

select * from rgm WHERE session = "JAVA";

select id ,Name ,session from rgm where session = "JAVA";

select * from rgm where session = "JAVA" and address = "America";

select * from rgm where session = "SQL" and address = "Canada";

select * from rgm where address = "America";

select * from rgm where Name like "C%";

select * from rgm where Name like "s%";

select * from rgm where name like "A%";

select * from rgm where name like "%A";

select * from rgm where contact like "111%";
 
 select * from rgm where name not like "A%";
 
 select * from rgm where name like "_h%";
 
 select * from rgm where address in ('America','canada');
 
 select * from rgm where college = "RGMCET" or college = "SVEC";
 
 select * from rgm where college in ("RGMCET","SVEC");
 
 
 
 
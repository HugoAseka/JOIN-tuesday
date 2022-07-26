 	
   QUESTÃO 1 : 	
 
 	SELECT u.id, u.name, c.name as "city" FROM users u JOIN cities c ON u."cityId" = c.id WHERE u."cityId" = (SELECT (id) FROM cities WHERE name = 'Rio de Janeiro');
 	
 	
   QUESTÃO 2:
   
   SELECT t.id, u1.name AS writer,  u2.name AS recipient, t.message FROM testimonials t JOIN users u1 ON u1.id = t."writerId" JOIN users u2 ON u2.id = t."recipientId"   ;
   
   
   
   QUESTÃO 3:
   
   
      SELECT e."userId", u.name, c.name as "course", s.name as "school", e."endDate" FROM educations e JOIN users u ON e."userId" = u.id JOIN courses c ON e."courseId" = c.id JOIN schools s ON s.id =   e."schoolId" WHERE e."userId" = 30 AND e.status = 'finished';
   
   
   QUESTÃO 4:	
 	
 	SELECT e."userId" AS "id", u.name AS "name", r.name AS "role", c.name AS "company", e."startDate" FROM experiences e JOIN users u ON e."userId" = u.id  JOIN roles r ON r.id = e."roleId" JOIN companies c ON c.id = e."companyId" WHERE u.id = 50 AND  e."endDate" IS NULL;


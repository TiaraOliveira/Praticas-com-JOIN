--questão1
SELECT u.id, u.name FROM users u JOIN cities c ON c.id = u."cityId" WHERE c.name = 'Rio de Janeiro';

--questão3
SELECT u.id, u.name, c.name as course, s.name as schools, e."endDate" FROM users u JOIN  educations e ON e."userId" = u.id JOIN courses c ON e."courseId" = c.id JOIN schools s ON e."schoolId" = s.id WHERE u.id = 30;

--questão4
SELECT u.id, u.name, r.name  as role, c.name as company, e."startDate" FROM users u JOIN experiences e ON e."userId" = u.id JOIN roles r ON e."roleId" = r.id JOIN companies c ON e."companyId" = c.id WHERE u.id = 50 AND e."endDate" IS NOT NULL;

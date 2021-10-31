--STEP 1) UNDERSTANDING THE BROAD CATEGORIES:-
SELECT COUNT(DISTINCT(Category))
FROM ['Trending Skills$']--3

SELECT DISTINCT(Category)
FROM ['Trending Skills$']--BUSINESS, DATA SCIENCE AND TECHNOLOGY


--STEP 2) UNDERSATNDING THE SKILLS UNDER EACH BROAD CATEGORY

SELECT COUNT(DISTINCT([Trending Skills]))
FROM ['Trending Skills$']
WHERE Category = 'DATA SCIENCE'-- 13 SKILLS UNDER DATA SCIENCE

SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'DATA SCIENCE'--Applied Machine Learning,Big Data,Data Management,Data Visualization Sofware
--,Deep Learning,Econometrics,Machine Learning,Machine Learning Algorithms,Probability & Statistics,
--Python Programming,SQL,Statistical Machine Learning,Statistical Visualization


SELECT COUNT(DISTINCT([Trending Skills]))
FROM ['Trending Skills$']
WHERE Category = 'BUSINESS'--17

SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'BUSINESS'--Accounting,Blockchain,Budget Management,Business Analysis,Customer Analysis,
--Data Analysis,Digital Marketing,Entrepreneurial Finance,Finance,Human Resources,Leadership and Management,
--Marketing,Microsoft Excel,Project Management,Strategy and Operations,Tableau Sofware,Writing

SELECT COUNT(DISTINCT([Trending Skills]))
FROM ['Trending Skills$']
WHERE Category = 'TECHNOLOGY'

SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'TECHNOLOGY'


--STEP 3) CHECKING IF ANY OF THE SKILLS ARE OVERLAPPING IN THE BROAD CATEGORIES
SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'DATA SCIENCE' AND CATEGORY IN (SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'BUSINESS')--0, NO SKILLS ARE OVERLAPPING

SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'TECHNOLOGY' AND CATEGORY IN (SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$']
WHERE Category = 'BUSINESS')--0, NO SKILLS ARE OVERLAPPING

--STEP 4) CHECKING WHETHER THE TRENDING SKILLS IN TRENDING SKILLS AND SKILLING RANK ARE SAME

SELECT COUNT(DISTINCT([Trending Skills]))
FROM ['Trending Skills$']--49

SELECT COUNT(DISTINCT([Trending Skills]))
FROM ['Skill ranking$']--26


SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$'] 
WHERE ['Trending Skills$'].[Trending Skills] NOT IN
(SELECT DISTINCT([Trending Skills])
FROM ['Skill ranking$'])--37 VALUES ARE NOT THERE IN SKILL RANKING TABLE. SO THERE ARE ONLY 49-37=12 COMMON TRENDING SKILLS BETWEEN THE TRENDING SKILLS COLUMNS IN
--[TRENDING sKILLS] TABLE AND [SKILL RANKING] TABLE.

SELECT DISTINCT([Trending Skills])
FROM ['Skill ranking$']
WHERE ['Skill ranking$'].[Trending Skills] NOT IN
(SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$'] )--THERE ARE 14 VALUES IN THE SKILL RANKING TABLE WHICH IS NOT THERE IN
--TRENDING SKILLS TABLE

--STEP 5) CHECKING WHETHER THE VALUES IN THE COMMON COLUMN IN ALL THE TABLES ARE SAME:-

SELECT COUNT(DISTINCT(REGION))
FROM ['Trending Skills$']--6

SELECT COUNT(DISTINCT(REGION))
FROM ['Skill ranking$']--6

SELECT COUNT(DISTINCT(REGION))
FROM ['Global Ranking$']--5, HERE NORTH AMERICA IS NOT THERE.

SELECT COUNT(DISTINCT(REGION))
FROM ['Global Learners$']--6

SELECT TOP 10 COUNT([Trending Skills]),[Trending Skills]
FROM ['Trending Skills$']
WHERE REGION='ASIA PACIFIC'
GROUP BY [Trending Skills]
ORDER BY COUNT([Trending Skills]) DESC--HERE EACH SKILL IS JUST NAMED ONCE FOR A COUNTRY, IF IT IS TRENDING.

SELECT TOP 10 COUNT([Trending Skills]),[Trending Skills]
FROM ['Skill ranking$']
WHERE Country='AUSTRALIA' AND [Skill Level]='LAGGING'
GROUP BY [Trending Skills]
ORDER BY COUNT([Trending Skills]) DESC

WITH TBL AS
(SELECT [Trending skills]
FROM ['Skill ranking$']
WHERE [Skill Level] IN ('Competitive','Cutting-edge'))
SELECT

SELECT distinct[Trending skills]
FROM ['Skill ranking$']
WHERE [Skill Level] IN ('Competitive','Cutting-edge')

SELECT DISTINCT([Trending Skills])
FROM ['Trending Skills$'] 
where ['Trending Skills$'].[Trending Skills] not in
(SELECT distinct[Trending skills]
FROM ['Skill ranking$']
WHERE [Skill Level] IN ('Competitive','Cutting-edge'))



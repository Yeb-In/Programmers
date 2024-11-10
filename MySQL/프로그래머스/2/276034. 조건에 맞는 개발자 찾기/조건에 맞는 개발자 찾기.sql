-- 코드를 작성해주세요
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS AS D
-- Bit연산자 사용
WHERE D.SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python')
OR D.SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#')
ORDER BY ID ASC;

-- 비트 연산자는 두 개의 정수 값을 이진 비트로 변환하고, AND, OR 또는 NOT 연산을 각 비트에서 수행하여 결과를 생성합니다. 그런 다음, 결과를 정수로 변환합니다.
-- https://learn.microsoft.com/ko-kr/sql/t-sql/language-elements/bitwise-operators-transact-sql?view=sql-server-ver16

-- Pivot for Series

; WITH A AS (
SELECT A.[Series Name], A.[Country Name], ROUND( CONVERT( FLOAT, A.[2019] ), 2) AS [2019]
FROM [SeconData] AS A
)

SELECT [Country Name]
	, [Population density (people per sq. km of land area)], [Expense (% of GDP)], [Ease of doing business index (1=most business-friendly regulations)]
	, [Adjusted net national income (current US$)], [Adjusted net national income per capita (annual % growth)], [Expenditure on primary education (% of government expenditure on education)]
	, [Expenditure on secondary education (% of government expenditure on education)], [Expenditure on tertiary education (% of government expenditure on education)]
	, [Number of infant deaths], [People using at least basic sanitation services (% of population)], [Domestic private health expenditure (% of current health expenditure)]
	, [Proportion of people living below 50 percent of median income (%)], [Employment in agriculture (% of total employment) (modeled ILO estimate)]
	, [Employers, female (% of female employment) (modeled ILO estimate)], [Employers, male (% of male employment) (modeled ILO estimate)], [Employers, total (% of total employment) (modeled ILO estimate)]
	, [Employment in industry (% of total employment) (modeled ILO estimate)], [Employment in services (% of total employment) (modeled ILO estimate)], [Population ages 0-14 (% of total population)]
	, [Population ages 15-64 (% of total population)], [Population ages 65 and above (% of total population)], [Population growth (annual %)]
FROM (
      SELECT
		A.[Country Name]
		, A.[Series Name]
		, [2019]
      FROM A
     ) AS SOURCE
PIVOT 
   ( 
    SUM([2019]) FOR [Series Name] 
	 IN ([Population density (people per sq. km of land area)], [Expense (% of GDP)], [Ease of doing business index (1=most business-friendly regulations)]
	 , [Adjusted net national income (current US$)], [Adjusted net national income per capita (annual % growth)], [Expenditure on primary education (% of government expenditure on education)]
	 , [Expenditure on secondary education (% of government expenditure on education)], [Expenditure on tertiary education (% of government expenditure on education)]
	 , [Number of infant deaths], [People using at least basic sanitation services (% of population)], [Domestic private health expenditure (% of current health expenditure)]
	 , [Proportion of people living below 50 percent of median income (%)], [Employment in agriculture (% of total employment) (modeled ILO estimate)]
	 , [Employers, female (% of female employment) (modeled ILO estimate)], [Employers, male (% of male employment) (modeled ILO estimate)], [Employers, total (% of total employment) (modeled ILO estimate)]
	 , [Employment in industry (% of total employment) (modeled ILO estimate)], [Employment in services (% of total employment) (modeled ILO estimate)], [Population ages 0-14 (% of total population)]
	 , [Population ages 15-64 (% of total population)], [Population ages 65 and above (% of total population)], [Population growth (annual %)])
   ) AS [PIVOT TABLE] 
ORDER BY [Country Name]

-----------------------------------------------

-- Unpivot for years

; WITH A AS (
SELECT A.[Series Name], A.[Country Name], A.[Country Code]
	, ROUND( CONVERT( FLOAT, A.[1971] ), 2) AS [1971]
	, ROUND( CONVERT( FLOAT, A.[1972] ), 2) AS [1972]
	, ROUND( CONVERT( FLOAT, A.[1973] ), 2) AS [1973]
	, ROUND( CONVERT( FLOAT, A.[1974] ), 2) AS [1974]
	, ROUND( CONVERT( FLOAT, A.[1975] ), 2) AS [1975]
	, ROUND( CONVERT( FLOAT, A.[1976] ), 2) AS [1976]
	, ROUND( CONVERT( FLOAT, A.[1977] ), 2) AS [1977]
	, ROUND( CONVERT( FLOAT, A.[1978] ), 2) AS [1978]
	, ROUND( CONVERT( FLOAT, A.[1979] ), 2) AS [1979]
	, ROUND( CONVERT( FLOAT, A.[1980] ), 2) AS [1980]
	, ROUND( CONVERT( FLOAT, A.[1981] ), 2) AS [1981]
	, ROUND( CONVERT( FLOAT, A.[1982] ), 2) AS [1982]
	, ROUND( CONVERT( FLOAT, A.[1983] ), 2) AS [1983]
	, ROUND( CONVERT( FLOAT, A.[1984] ), 2) AS [1984]
	, ROUND( CONVERT( FLOAT, A.[1985] ), 2) AS [1985]
	, ROUND( CONVERT( FLOAT, A.[1986] ), 2) AS [1986]
	, ROUND( CONVERT( FLOAT, A.[1987] ), 2) AS [1987]
	, ROUND( CONVERT( FLOAT, A.[1988] ), 2) AS [1988]
	, ROUND( CONVERT( FLOAT, A.[1989] ), 2) AS [1989]
	, ROUND( CONVERT( FLOAT, A.[1990] ), 2) AS [1990]
	, ROUND( CONVERT( FLOAT, A.[1991] ), 2) AS [1991]
	, ROUND( CONVERT( FLOAT, A.[1992] ), 2) AS [1992]
	, ROUND( CONVERT( FLOAT, A.[1993] ), 2) AS [1993]
	, ROUND( CONVERT( FLOAT, A.[1994] ), 2) AS [1994]
	, ROUND( CONVERT( FLOAT, A.[1995] ), 2) AS [1995]
	, ROUND( CONVERT( FLOAT, A.[1996] ), 2) AS [1996]
	, ROUND( CONVERT( FLOAT, A.[1997] ), 2) AS [1997]
	, ROUND( CONVERT( FLOAT, A.[1998] ), 2) AS [1998]
	, ROUND( CONVERT( FLOAT, A.[1999] ), 2) AS [1999]
	, ROUND( CONVERT( FLOAT, A.[2000] ), 2) AS [2000]
	, ROUND( CONVERT( FLOAT, A.[2001] ), 2) AS [2001]
	, ROUND( CONVERT( FLOAT, A.[2002] ), 2) AS [2002]
	, ROUND( CONVERT( FLOAT, A.[2003] ), 2) AS [2003]
	, ROUND( CONVERT( FLOAT, A.[2004] ), 2) AS [2004]
	, ROUND( CONVERT( FLOAT, A.[2005] ), 2) AS [2005]
	, ROUND( CONVERT( FLOAT, A.[2006] ), 2) AS [2006]
	, ROUND( CONVERT( FLOAT, A.[2007] ), 2) AS [2007]
	, ROUND( CONVERT( FLOAT, A.[2008] ), 2) AS [2008]
	, ROUND( CONVERT( FLOAT, A.[2009] ), 2) AS [2009]
	, ROUND( CONVERT( FLOAT, A.[2010] ), 2) AS [2010]
	, ROUND( CONVERT( FLOAT, A.[2011] ), 2) AS [2011]
	, ROUND( CONVERT( FLOAT, A.[2012] ), 2) AS [2012]
	, ROUND( CONVERT( FLOAT, A.[2013] ), 2) AS [2013]
	, ROUND( CONVERT( FLOAT, A.[2014] ), 2) AS [2014]
	, ROUND( CONVERT( FLOAT, A.[2015] ), 2) AS [2015]
	, ROUND( CONVERT( FLOAT, A.[2016] ), 2) AS [2016]
	, ROUND( CONVERT( FLOAT, A.[2017] ), 2) AS [2017]
	, ROUND( CONVERT( FLOAT, A.[2018] ), 2) AS [2018]
	, ROUND( CONVERT( FLOAT, A.[2019] ), 2) AS [2019]
	, ROUND( CONVERT( FLOAT, A.[2020] ), 2) AS [2020]
FROM [SeconData] AS A
)

, B AS (
SELECT [Series Name], [Country Name], [Country Code]
      , [Year]
      , [Value]
FROM A
UNPIVOT (
          [Value] FOR [Year] 
          IN ([1971], [1972], [1973], [1974], [1975], [1976], [1977], [1978], [1979], [1980], [1981], [1982], [1983], [1984], [1985], [1986], [1987], [1988], [1989], [1990]
			, [1991], [1992], [1993], [1994], [1995], [1996], [1997], [1998], [1999], [2000], [2001], [2002], [2003], [2004], [2005], [2006], [2007], [2008], [2009], [2010]
			, [2011], [2012], [2013], [2014], [2015], [2016], [2017], [2018], [2019], [2020]) 
	) AS [UNPIVOT TABLE]
)

SELECT B.[Country Name], [Country Code], B.[Series Name], CONVERT( INT, B.Year ) AS Year, CONVERT( FLOAT, B.Value ) AS Value
INTO Unpivoted
FROM B

-- Pivot for Series

SELECT [Country Code], [Country Name], [Year]
	, [Population density (people per sq. km of land area)], [Expense (% of GDP)], [Ease of doing business index (1=most business-friendly regulations)]
	, [Adjusted net national income (current US$)], [Adjusted net national income per capita (annual % growth)], [Expenditure on primary education (% of government expenditure on education)]
	, [Expenditure on secondary education (% of government expenditure on education)], [Expenditure on tertiary education (% of government expenditure on education)]
	, [Number of infant deaths], [People using at least basic sanitation services (% of population)], [Domestic private health expenditure (% of current health expenditure)]
	, [Proportion of people living below 50 percent of median income (%)], [Employment in agriculture (% of total employment) (modeled ILO estimate)]
	, [Employers, female (% of female employment) (modeled ILO estimate)], [Employers, male (% of male employment) (modeled ILO estimate)], [Employers, total (% of total employment) (modeled ILO estimate)]
	, [Employment in industry (% of total employment) (modeled ILO estimate)], [Employment in services (% of total employment) (modeled ILO estimate)], [Population ages 0-14 (% of total population)]
	, [Population ages 15-64 (% of total population)], [Population ages 65 and above (% of total population)], [Population growth (annual %)]
INTO Pivoted
FROM (
      SELECT
		A.[Country Name], A.[Country Code], A.[Series Name]
		, [Year]
		, [Value]
      FROM Unpivoted AS A
     ) AS SOURCE
PIVOT 
   ( 
    SUM([Value]) FOR [Series Name] 
	 IN ([Population density (people per sq. km of land area)], [Expense (% of GDP)], [Ease of doing business index (1=most business-friendly regulations)]
	 , [Adjusted net national income (current US$)], [Adjusted net national income per capita (annual % growth)], [Expenditure on primary education (% of government expenditure on education)]
	 , [Expenditure on secondary education (% of government expenditure on education)], [Expenditure on tertiary education (% of government expenditure on education)]
	 , [Number of infant deaths], [People using at least basic sanitation services (% of population)], [Domestic private health expenditure (% of current health expenditure)]
	 , [Proportion of people living below 50 percent of median income (%)], [Employment in agriculture (% of total employment) (modeled ILO estimate)]
	 , [Employers, female (% of female employment) (modeled ILO estimate)], [Employers, male (% of male employment) (modeled ILO estimate)], [Employers, total (% of total employment) (modeled ILO estimate)]
	 , [Employment in industry (% of total employment) (modeled ILO estimate)], [Employment in services (% of total employment) (modeled ILO estimate)], [Population ages 0-14 (% of total population)]
	 , [Population ages 15-64 (% of total population)], [Population ages 65 and above (% of total population)], [Population growth (annual %)])
   ) AS [PIVOT TABLE] 
ORDER BY [Country Name], [Year]


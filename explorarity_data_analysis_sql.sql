select *
from world_layoff.layoffs_staging ;

select max(total_laid_off),max(percentage_laid_off)
From world_layoff.layoffs_staging ;

select *
from world_layoff.layoffs_staging
where percentage_laid_off = 1
Order By total_laid_off DESC;

Select company,sum(total_laid_off)
From world_layoff.layoffs_staging
group By company 
Order By 2 DESC ;

Select country,sum(total_laid_off)
From world_layoff.layoffs_staging
group By country 
Order By 2 DESC ;


select `date`, 
str_to_date(`date`,'%m/%d/%Y')
from world_layoff.layoffs_staging;

Update world_layoff.layoffs_staging
set `date`=str_to_date(`date`,'%m/%d/%Y');


Select year (`date`),sum(total_laid_off)
From world_layoff.layoffs_staging
group by year(`date`)
order by 1 DESC ;

select substring(`date`,1,7) as month , sum(total_laid_off)
from world_layoff.layoffs_staging
where substring(`date`,1,7) is not null
group by substring(`date`,1,7)
Order by 1 Asc ;

With Rolling_Total as 
(select substring(`date`,1,7) as `month` , sum(total_laid_off) as total_off
from world_layoff.layoffs_staging
where substring(`date`,1,7) is not null
group by substring(`date`,1,7)
Order by 1 Asc )
Select `month`, total_off ,sum(total_off) over (order by `month`) as rolling_total
From Rolling_Total;

select company , year (`date`), sum(total_laid_off) as total_off
from world_layoff.layoffs_staging
Group by company,year (`date`);

With Company_Year as 
(select company , year(`date`) as years, sum(total_laid_off) as total_off
from world_layoff.layoffs_staging
Group by company,years 
) , 
Company_year_rank as 
(select *,
DENSE_RANK () Over ( Partition by years  order by total_off DESC ) as Ranking
From Company_Year 
where years is not null)
Select *
From Company_year_rank
where Ranking <= 5;



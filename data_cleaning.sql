select *
From world_layoff.layoffs_staging;

select*,
row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)
from world_layoff.layoffs_staging;

With Duplicate_CTE as 
(
select*,
row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)as row_num
from world_layoff.layoffs_staging
)
select *
From Duplicate_CTE
Where row_num > 1;

select *
From world_layoff.layoffs_staging 
Where company = 'Casper';

With Duplicate_CTE as 
(
select*,
row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions)as row_num
from world_layoff.layoffs_staging
)
Delete
From Duplicate_CTE
Where row_num > 1;

Standardizng Data 


select *
from world_layoff.layoffs_staging ;

select company, trim(company)
from world_layoff.layoffs_staging ;

update world_layoff.layoffs_staging
Set company = trim(company) ;

select *
from world_layoff.layoffs_staging 
where industry like 'crypto%%';

Update world_layoff.layoffs_staging 
Set industry = 'cryp'
where industry like 'crypto%%';

select *
from world_layoff.layoffs_staging 
where industry = 'cryp';


select distinct country , trim( trailing '.' from country)
from world_layoff.layoffs_staging 
where country like 'United States%';

Update world_layoff.layoffs_staging 
set country = trim( trailing '.' from country)
Where country like 'United States%';

select distinct country , trim( trailing '.' from country)
from world_layoff.layoffs_staging 
where country like 'United States%';

select `date`, 
str_to_date(`date`,'%m/%d/%Y')
from world_layoff.layoffs_staging;


select *
From world_layoff.layoffs_staging 
where total_laid_off is null and percentage_laid_off is null ;

select *
From world_layoff.layoffs_staging 
where industry is null or industry = ' ';

select *
From world_layoff.layoffs_staging 
where company = 'Airbnb';

update world_layoff.layoffs_staging 
Set industry = null
where industry = ' ';

delete
From world_layoff.layoffs_staging 
where total_laid_off is null and percentage_laid_off is null ;

select *
From world_layoff.layoffs_staging as t1
Join world_layoff.layoffs_staging as t2
On t1.company = t2.company
where t1.industry is Null and t2.industry is not null ;

Update world_layoff.layoffs_staging as t1
Join world_layoff.layoffs_staging as t2
On t1.company = t2.company
set t1.industry = t2.industry 
where t1.industry is Null and t2.industry is not null ;


Alter table world_layoff.layoffs_staging
Drop column row_num ;

select *
from world_layoff.layoffs_staging ;


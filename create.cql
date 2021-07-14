-- Create.cql
--
-- This file is used to create the tables  nd indexes used in the demo.

-- It is assumed that you have created the sai_demo keyspace.
use sai_demo;

CREATE TABLE IF NOT EXISTS cyclist_semi_pro (
  id int, 
  firstname text, 
  lastname text, 
  age int, 
  affiliation text,
  country text,
  registration date,
  PRIMARY KEY (id));

-- Create the SAI indexes
CREATE CUSTOM INDEX lastname_sai_idx ON cyclist_semi_pro (lastname) 
USING 'StorageAttachedIndex' 
WITH OPTIONS = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'}; 

CREATE CUSTOM INDEX age_sai_idx ON cyclist_semi_pro (age) 
USING 'StorageAttachedIndex';

CREATE CUSTOM INDEX country_sai_idx ON cyclist_semi_pro (country) 
USING 'StorageAttachedIndex'
WITH OPTIONS = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'}; 

CREATE CUSTOM INDEX registration_sai_idx ON cyclist_semi_pro (registration) 
USING 'StorageAttachedIndex'; 

CREATE TABLE IF NOT EXISTS book (
  id uuid, 
  title text, 
  author text, 
  tags set<text>,
  publishedOn date,
  PRIMARY KEY (id));

-- Create the SAI indexes
CREATE CUSTOM INDEX tags_sai_idx ON book (tags) 
USING 'StorageAttachedIndex' 
WITH OPTIONS = {'case_sensitive': 'false', 'normalize': 'true', 'ascii': 'true'}; 
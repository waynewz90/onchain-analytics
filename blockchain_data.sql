SELECT *
FROM `bigquery-public-data.london_bicycles.cycle_hire` 
LIMIT 10

--Instructions to upload CSV files to BiqQuery using Cloud SQL: https://run.qwiklabs.com/focuses/2802?parent=catalog
	--Create Cloud Storage Bucket
	--Upload CSV files to Cloud Storage
	--Create Cloud SQL instance. Need to specify database engine (e.g. MySQL)
	--Connect to Cloud SQL instance, using Cloud Shell terminal
	--Create database, and then create table
	--Upload CSV files to tables, using Cloud SQL console

--------------------------------------------------------------------------------------------------------------------------------

--Jupyter notebook that looks at transactions tied to first bitcoin purchase: https://github.com/GoogleCloudPlatform/training-data-analyst/blob/master/blogs/bitcoin_network/visualizing_the_10000_pizza_bitcoin_network.ipynb



--Merkle Root: 
	--What is it: https://bitcoin.stackexchange.com/questions/10479/what-is-the-merkle-root
	-- Merkling in Ethereum: https://blog.ethereum.org/2015/11/15/merkling-in-ethereum/


--UNNEST and working with arrays and structs: https://cloud.google.com/bigquery/docs/reference/standard-sql/arrays 
--Takes an ARRAY and returns a table with a single row for each element in the ARRAY
--Since order is destroyed, use the optional WITH OFFSET to restore order
SELECT *
FROM UNNEST(['foo', 'bar', 'baz', 'qux', 'corge', 'garply', 'waldo', 'fred']) AS element
WITH OFFSET AS offset
ORDER BY offset;
--To flatten an entire column of ARRAYs while preserving the values of the other columns in each row, use a CROSS JOIN to join the table containing the ARRAY column to the UNNEST output of that ARRAY column



--TODO: 
-- Need to understand how the bitcoin BigQuery table was set-up

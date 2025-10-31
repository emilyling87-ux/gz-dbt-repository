{{ dbt_utils.union_relations(
    relations=[ref('stg_gz_raw_date__adwords'), ref('stg_gz_raw_date__bing'), ref('stg_gz_raw_date__criteo'), ref('stg_gz_raw_date__facebook')]
) }}
# Direcotry Structure of DBT Projects (Modify as Needed)

dbt/
    projects/                      # directory which houses main dbt project
        example_project/
            dbj_project.yml        
            packages.yml
            models/
                staging/           # stg_* tables (one per data source)
                intermediate/      # applying business logic and transformations 
                marts/             # final dimension and fact tables 
            macros/
            seeds/
            analyses/
            tests/                  # unit tests on tables (testing data, asserting columns have clear type etc.)
            exposures.yml           # dashboard documentation (specification of the end user dashboard)
    profies/
        profiles.yml.aaron          # local development env specs (LOCAL ONLY...NOT IN PROD)
    .github/workflows/
        ci.yaml                     # continuous integration testing specifications (if running on github workflows only!)
    .gitignore                      # files git should ignore
    
    
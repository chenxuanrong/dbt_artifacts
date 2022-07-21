with base as (

    select *
    from {{ source('dbt_artifacts', 'invocations') }}

),

enhanced as (

    select
        command_invocation_id,
        dbt_version,
        project_name,
        run_started_at,
        dbt_command,
        full_refresh_flag,
        target_profile_name,
        target_name,
        target_schema,
        target_threads
    from base

)

select * from enhanced

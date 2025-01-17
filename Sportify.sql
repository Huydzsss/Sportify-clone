PGDMP                   
    |            postgres    15.6    17.0 �   c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            f           1262    5    postgres    DATABASE     t   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgres;
                     postgres    false            g           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4198            h           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                        postgres    false    4198            i           0    0    postgres    DATABASE PROPERTIES     �   ALTER DATABASE postgres SET "app.settings.jwt_secret" TO 'HCK0OcckMvKbwsxalVnHTbyrBKrL1XApG1VgOhRJo3oR2DBlDWB+8sXvB81oUXwCCQgJyWuZ8K35s0r9i6jc6w==';
ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
                          postgres    false                        2615    16488    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                     supabase_admin    false            j           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                        supabase_admin    false    17                        2615    16388 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                     postgres    false            k           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                        postgres    false    15                        2615    16618    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                     supabase_admin    false                        2615    16607    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                     supabase_admin    false                        2615    16386 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
                  	   pgbouncer    false                        2615    16645    pgsodium    SCHEMA        CREATE SCHEMA pgsodium;
    DROP SCHEMA pgsodium;
                     supabase_admin    false                        3079    16646    pgsodium 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgsodium WITH SCHEMA pgsodium;
    DROP EXTENSION pgsodium;
                        false    19            l           0    0    EXTENSION pgsodium    COMMENT     \   COMMENT ON EXTENSION pgsodium IS 'Pgsodium is a modern cryptography library for Postgres.';
                             false    6            m           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                        pg_database_owner    false    13                        2615    16599    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                     supabase_admin    false            n           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                        supabase_admin    false    14                        2615    16536    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                     supabase_admin    false            o           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                        supabase_admin    false    16                        2615    16949    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                     supabase_admin    false                        3079    16982 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                        false    25            p           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                             false    8                        3079    16389    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                        false    15            q           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                             false    2                        3079    16434    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                        false    15            r           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                             false    4                        3079    16471    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                        false    15    4            s           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                             false    5                        3079    16950    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                        false    6    22            t           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                             false    7                        3079    16423 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
    DROP EXTENSION "uuid-ossp";
                        false    15            u           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                             false    3            �           1247    28714 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth               supabase_auth_admin    false    17                       1247    28855    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth               supabase_auth_admin    false    17            �           1247    28708    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth               supabase_auth_admin    false    17            �           1247    28702    factor_type    TYPE     R   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);
    DROP TYPE auth.factor_type;
       auth               supabase_auth_admin    false    17                       1247    28897    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth               supabase_auth_admin    false    17            �           1247    29220    pricing_plan_interval    TYPE     e   CREATE TYPE public.pricing_plan_interval AS ENUM (
    'day',
    'week',
    'month',
    'year'
);
 (   DROP TYPE public.pricing_plan_interval;
       public               postgres    false            �           1247    29214    pricing_type    TYPE     M   CREATE TYPE public.pricing_type AS ENUM (
    'one_time',
    'recurring'
);
    DROP TYPE public.pricing_type;
       public               postgres    false            �           1247    29244    subscription_status    TYPE     �   CREATE TYPE public.subscription_status AS ENUM (
    'trialing',
    'active',
    'canceled',
    'incomplete',
    'incomplete_expired',
    'past_due',
    'unpaid'
);
 &   DROP TYPE public.subscription_status;
       public               postgres    false            -           1247    29068    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime               supabase_admin    false    14            $           1247    29029    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime               supabase_admin    false    14            '           1247    29043    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime               supabase_admin    false    14    1316            3           1247    29110 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime               supabase_admin    false    14            0           1247    29081    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime               supabase_admin    false    14            7           1255    16534    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth               supabase_auth_admin    false    17            v           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth               supabase_auth_admin    false    311            w           0    0    FUNCTION email()    ACL     6   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
          auth               supabase_auth_admin    false    311                       1255    28684    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth               supabase_auth_admin    false    17            x           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth               supabase_auth_admin    false    515            6           1255    16533    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth               supabase_auth_admin    false    17            y           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth               supabase_auth_admin    false    310            z           0    0    FUNCTION role()    ACL     5   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
          auth               supabase_auth_admin    false    310            5           1255    16532    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth               supabase_auth_admin    false    17            {           0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth               supabase_auth_admin    false    309            |           0    0    FUNCTION uid()    ACL     4   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
          auth               supabase_auth_admin    false    309            }           0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     Y  REVOKE ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    497            ~           0    0    FUNCTION armor(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions               postgres    false    492                       0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions               postgres    false    493            �           0    0    FUNCTION crypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    480            �           0    0    FUNCTION dearmor(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions               postgres    false    494            �           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    460            �           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    462            �           0    0    FUNCTION digest(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    477            �           0    0    FUNCTION digest(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions               postgres    false    476            �           0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    459            �           0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    461            �           0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions               postgres    false    481            �           0    0    FUNCTION gen_random_uuid()    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions               postgres    false    482            �           0    0    FUNCTION gen_salt(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions               postgres    false    457            �           0    0     FUNCTION gen_salt(text, integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions               postgres    false    458                       1255    16591    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions               postgres    false    15            �           0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions               postgres    false    514            �           0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions               postgres    false    514            N           1255    16612    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions               supabase_admin    false    15            �           0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions               supabase_admin    false    334            �           0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    334            �           1255    16593    grant_pg_net_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

    REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
    REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

    GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
  END IF;
END;
$$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions               postgres    false    15            �           0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions               postgres    false    505            �           0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions               postgres    false    505            �           0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    479            �           0    0    FUNCTION hmac(text, text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    478            �           0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions               postgres    false    500            �           0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions               postgres    false    499            �           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     b  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions               postgres    false    498            �           0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     G  REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions               postgres    false    495            �           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions               postgres    false    491            �           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    318            �           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    487            �           0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    489            �           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    486            �           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    488            �           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     5  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    490            �           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions               postgres    false    305            �           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    307            �           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions               postgres    false    306            �           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions               postgres    false    485            �           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    321            �           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    323            �           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    322            �           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    324            �           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions               postgres    false    483            �           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions               postgres    false    319            �           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions               postgres    false    484            �           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions               postgres    false    320            �           1255    16603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions               supabase_admin    false    15            �           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    504            L           1255    16604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions               supabase_admin    false    15            �           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    332            �           1255    16614    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions               supabase_admin    false    15            �           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions               supabase_admin    false    506            �           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    506            �           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    501            �           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   REVOKE ALL ON FUNCTION extensions.try_cast_double(inp text) FROM postgres;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions               postgres    false    502            �           0    0    FUNCTION url_decode(data text)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_decode(data text) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions               postgres    false    328            �           0    0    FUNCTION url_encode(data bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_encode(data bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions               postgres    false    496            �           0    0    FUNCTION uuid_generate_v1()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;
       
   extensions               postgres    false    325            �           0    0    FUNCTION uuid_generate_v1mc()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v1mc() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;
       
   extensions               postgres    false    326            �           0    0 4   FUNCTION uuid_generate_v3(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    327            �           0    0    FUNCTION uuid_generate_v4()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_generate_v4() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;
       
   extensions               postgres    false    474            �           0    0 4   FUNCTION uuid_generate_v5(namespace uuid, name text)    ACL     )  REVOKE ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;
       
   extensions               postgres    false    475            �           0    0    FUNCTION uuid_nil()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_nil() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;
       
   extensions               postgres    false    312            �           0    0    FUNCTION uuid_ns_dns()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_dns() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;
       
   extensions               postgres    false    313            �           0    0    FUNCTION uuid_ns_oid()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_oid() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;
       
   extensions               postgres    false    315            �           0    0    FUNCTION uuid_ns_url()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_url() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;
       
   extensions               postgres    false    314            �           0    0    FUNCTION uuid_ns_x500()    ACL     �   REVOKE ALL ON FUNCTION extensions.uuid_ns_x500() FROM postgres;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;
       
   extensions               postgres    false    316            �           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions               postgres    false    503            �           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public               supabase_admin    false    509            $           1255    16387    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer               postgres    false    12            �           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
       	   pgbouncer               postgres    false    292            �           0    0 ]   FUNCTION crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium               pgsodium_keymaker    false    468            �           0    0 ]   FUNCTION crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium               pgsodium_keymaker    false    469            �           0    0 !   FUNCTION crypto_aead_det_keygen()    ACL     I   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_keygen() TO service_role;
          pgsodium               supabase_admin    false    470                       1255    29191    handle_new_user()    FUNCTION     A  CREATE FUNCTION public.handle_new_user() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO ''
    AS $$
  begin
    insert into public.users (id, full_name, avatar_url)
    values (new.id, new.raw_user_meta_data->>'full_name', new.raw_user_meta_data->>'avatar_url');
    return new;
  end;
$$;
 (   DROP FUNCTION public.handle_new_user();
       public               postgres    false            �           0    0    FUNCTION handle_new_user()    ACL     �   GRANT ALL ON FUNCTION public.handle_new_user() TO anon;
GRANT ALL ON FUNCTION public.handle_new_user() TO authenticated;
GRANT ALL ON FUNCTION public.handle_new_user() TO service_role;
          public               postgres    false    536                       1255    29103    apply_rls(jsonb, integer)    FUNCTION     �(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or (
                          action = 'DELETE'
                          and realtime.is_visible_through_filters(old_columns, subs.filters)
                        )
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime               supabase_admin    false    14    1328            �           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    535            0           1255    42785 E   broadcast_changes(text, text, text, text, text, record, record, text)    FUNCTION       CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;
 �   DROP FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text);
       realtime               supabase_admin    false    14            �           0    0 �   FUNCTION broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text)    ACL     v  GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO postgres;
GRANT ALL ON FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text) TO dashboard_user;
          realtime               supabase_admin    false    304                       1255    29115 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime               supabase_admin    false    1331    14            �           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    532                       1255    29065    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime               supabase_admin    false    14            �           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime               supabase_admin    false    528                       1255    29060 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime               supabase_admin    false    14    1316            �           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    529                       1255    29111 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime               supabase_admin    false    1319    1331    14            �           0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime               supabase_admin    false    530                       1255    29122 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime               supabase_admin    false    1328    14            �           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime               supabase_admin    false    533                       1255    29059    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime               supabase_admin    false    14            �           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime               supabase_admin    false    527            4           1255    42784     send(jsonb, text, text, boolean)    FUNCTION     �  CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  partition_name text;
BEGIN
  partition_name := 'messages_' || to_char(NOW(), 'YYYY_MM_DD');

  IF NOT EXISTS (
    SELECT 1
    FROM pg_class c
    JOIN pg_namespace n ON n.oid = c.relnamespace
    WHERE n.nspname = 'realtime'
    AND c.relname = partition_name
  ) THEN
    EXECUTE format(
      'CREATE TABLE %I PARTITION OF realtime.messages FOR VALUES FROM (%L) TO (%L)',
      partition_name,
      NOW(),
      (NOW() + interval '1 day')::timestamp
    );
  END IF;

  INSERT INTO realtime.messages (payload, event, topic, private, extension)
  VALUES (payload, event, topic, private, 'broadcast');
END;
$$;
 U   DROP FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean);
       realtime               supabase_admin    false    14            �           0    0 E   FUNCTION send(payload jsonb, event text, topic text, private boolean)    ACL     �   GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO postgres;
GRANT ALL ON FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean) TO dashboard_user;
          realtime               supabase_admin    false    308                       1255    29057    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime               supabase_admin    false    14            �           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime               supabase_admin    false    531                       1255    29092    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime               supabase_admin    false    14            �           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime               supabase_admin    false    523                       1255    29174    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime               supabase_realtime_admin    false    14            �           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime               supabase_realtime_admin    false    534            	           1255    28962 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage               supabase_storage_admin    false    16                       1255    28936    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage               supabase_storage_admin    false    16                       1255    28935    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage               supabase_storage_admin    false    16                       1255    28934    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage               supabase_storage_admin    false    16                       1255    28948    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage               supabase_storage_admin    false    16                       1255    29001 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage               supabase_storage_admin    false    16            
           1255    28964 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage               supabase_storage_admin    false    16                       1255    29017    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage               supabase_storage_admin    false    16                       1255    28951 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage               supabase_storage_admin    false    16                       1255    28952    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage               supabase_storage_admin    false    16            �           1255    16974    secrets_encrypt_secret_secret()    FUNCTION     (  CREATE FUNCTION vault.secrets_encrypt_secret_secret() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
		BEGIN
		        new.secret = CASE WHEN new.secret IS NULL THEN NULL ELSE
			CASE WHEN new.key_id IS NULL THEN NULL ELSE pg_catalog.encode(
			  pgsodium.crypto_aead_det_encrypt(
				pg_catalog.convert_to(new.secret, 'utf8'),
				pg_catalog.convert_to((new.id::text || new.description::text || new.created_at::text || new.updated_at::text)::text, 'utf8'),
				new.key_id::uuid,
				new.nonce
			  ),
				'base64') END END;
		RETURN new;
		END;
		$$;
 5   DROP FUNCTION vault.secrets_encrypt_secret_secret();
       vault               supabase_admin    false    22            �            1259    16519    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth               supabase_auth_admin    false    243            �           0    0    TABLE audit_log_entries    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    243                       1259    28859 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap r       supabase_auth_admin    false    1295    17            �           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth               supabase_auth_admin    false    273            �           0    0    TABLE flow_state    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO dashboard_user;
          auth               supabase_auth_admin    false    273                       1259    28656 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth               supabase_auth_admin    false    264            �           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth               supabase_auth_admin    false    264            �           0    0    TABLE identities    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO dashboard_user;
          auth               supabase_auth_admin    false    264            �            1259    16512 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth               supabase_auth_admin    false    242            �           0    0    TABLE instances    ACL     	  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    242                       1259    28746    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth               supabase_auth_admin    false    268            �           0    0    TABLE mfa_amr_claims    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth               supabase_auth_admin    false    268                       1259    28734    mfa_challenges    TABLE       CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);
     DROP TABLE auth.mfa_challenges;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth               supabase_auth_admin    false    267            �           0    0    TABLE mfa_challenges    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO dashboard_user;
          auth               supabase_auth_admin    false    267            
           1259    28721    mfa_factors    TABLE     �  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid
);
    DROP TABLE auth.mfa_factors;
       auth         heap r       supabase_auth_admin    false    1265    1268    17            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth               supabase_auth_admin    false    266            �           0    0    TABLE mfa_factors    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO dashboard_user;
          auth               supabase_auth_admin    false    266                       1259    28909    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap r       supabase_auth_admin    false    1301    17            �           0    0    TABLE one_time_tokens    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO dashboard_user;
          auth               supabase_auth_admin    false    274            �            1259    16501    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth               supabase_auth_admin    false    241            �           0    0    TABLE refresh_tokens    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    241            �            1259    16500    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth               supabase_auth_admin    false    17    241            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth               supabase_auth_admin    false    240            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth               supabase_auth_admin    false    240                       1259    28788    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth               supabase_auth_admin    false    271            �           0    0    TABLE saml_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO dashboard_user;
          auth               supabase_auth_admin    false    271                       1259    28806    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth               supabase_auth_admin    false    272            �           0    0    TABLE saml_relay_states    ACL     !  GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO dashboard_user;
          auth               supabase_auth_admin    false    272            �            1259    16527    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth               supabase_auth_admin    false    244            �           0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    244            	           1259    28686    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap r       supabase_auth_admin    false    17    1271            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth               supabase_auth_admin    false    265            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth               supabase_auth_admin    false    265            �           0    0    TABLE sessions    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO dashboard_user;
          auth               supabase_auth_admin    false    265                       1259    28773    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth               supabase_auth_admin    false    270            �           0    0    TABLE sso_domains    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO dashboard_user;
          auth               supabase_auth_admin    false    270                       1259    28764    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth               supabase_auth_admin    false    269            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth               supabase_auth_admin    false    269            �           0    0    TABLE sso_providers    ACL       GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO dashboard_user;
          auth               supabase_auth_admin    false    269            �            1259    16489    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap r       supabase_auth_admin    false    17            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth               supabase_auth_admin    false    239            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth               supabase_auth_admin    false    239            �           0    0    TABLE users    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth               supabase_auth_admin    false    239            �           0    0    TABLE pg_stat_statements    ACL     q  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions               postgres    false    238            �           0    0    TABLE pg_stat_statements_info    ACL     �  REVOKE SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions               postgres    false    237            �           0    0    TABLE decrypted_key    ACL     u   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.decrypted_key TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    260            �           0    0    TABLE masking_rule    ACL     t   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.masking_rule TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    258            �           0    0    TABLE mask_columns    ACL     t   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE pgsodium.mask_columns TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    259                       1259    29193 	   customers    TABLE     U   CREATE TABLE public.customers (
    id uuid NOT NULL,
    stripe_customer_id text
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �           0    0    TABLE customers    ACL     4  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.customers TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.customers TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.customers TO service_role;
          public               postgres    false    284            "           1259    29392    liked_songs    TABLE     �   CREATE TABLE public.liked_songs (
    user_id uuid NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    song_id bigint NOT NULL
);
    DROP TABLE public.liked_songs;
       public         heap r       postgres    false            �           0    0    TABLE liked_songs    ACL     :  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.liked_songs TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.liked_songs TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.liked_songs TO service_role;
          public               postgres    false    290                       1259    29229    prices    TABLE     �  CREATE TABLE public.prices (
    id text NOT NULL,
    product_id text,
    active boolean,
    description text,
    unit_amount bigint,
    currency text,
    type public.pricing_type,
    "interval" public.pricing_plan_interval,
    interval_count integer,
    trial_period_days integer,
    metadata jsonb,
    CONSTRAINT prices_currency_check CHECK ((char_length(currency) = 3))
);
    DROP TABLE public.prices;
       public         heap r       postgres    false    1184    1187            �           0    0    TABLE prices    ACL     +  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prices TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prices TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.prices TO service_role;
          public               postgres    false    286                       1259    29205    products    TABLE     �   CREATE TABLE public.products (
    id text NOT NULL,
    active boolean,
    name text,
    description text,
    image text,
    metadata jsonb
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �           0    0    TABLE products    ACL     1  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.products TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.products TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.products TO service_role;
          public               postgres    false    285                        1259    29311    songs    TABLE     �   CREATE TABLE public.songs (
    id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    title text,
    song_path text,
    image_path text,
    author text,
    user_id uuid
);
    DROP TABLE public.songs;
       public         heap r       postgres    false            �           0    0    TABLE songs    ACL     (  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.songs TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.songs TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.songs TO service_role;
          public               postgres    false    288            !           1259    29314    songs_id_seq    SEQUENCE     �   ALTER TABLE public.songs ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    288            �           0    0    SEQUENCE songs_id_seq    ACL     �   GRANT ALL ON SEQUENCE public.songs_id_seq TO anon;
GRANT ALL ON SEQUENCE public.songs_id_seq TO authenticated;
GRANT ALL ON SEQUENCE public.songs_id_seq TO service_role;
          public               postgres    false    289                       1259    29259    subscriptions    TABLE     u  CREATE TABLE public.subscriptions (
    id text NOT NULL,
    user_id uuid NOT NULL,
    status public.subscription_status,
    metadata jsonb,
    price_id text,
    quantity integer,
    cancel_at_period_end boolean,
    created timestamp with time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    current_period_start timestamp with time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    current_period_end timestamp with time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    ended_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    cancel_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    canceled_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    trial_start timestamp with time zone DEFAULT timezone('utc'::text, now()),
    trial_end timestamp with time zone DEFAULT timezone('utc'::text, now())
);
 !   DROP TABLE public.subscriptions;
       public         heap r       postgres    false    1193                        0    0    TABLE subscriptions    ACL     @  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.subscriptions TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.subscriptions TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.subscriptions TO service_role;
          public               postgres    false    287                       1259    29177    users    TABLE     �   CREATE TABLE public.users (
    id uuid NOT NULL,
    full_name text,
    avatar_url text,
    billing_address jsonb,
    payment_method jsonb
);
    DROP TABLE public.users;
       public         heap r       postgres    false                       0    0    TABLE users    ACL     (  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.users TO service_role;
          public               postgres    false    283            #           1259    42788    messages    TABLE     w  CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
)
PARTITION BY RANGE (inserted_at);
    DROP TABLE realtime.messages;
       realtime         p       supabase_realtime_admin    false    14                       0    0    TABLE messages    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime               supabase_realtime_admin    false    291                       1259    29023    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap r       supabase_admin    false    14                       0    0    TABLE schema_migrations    ACL     !  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime               supabase_admin    false    277                       1259    29045    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap r       supabase_admin    false    1319    523    14    1319                       0    0    TABLE subscription    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO postgres;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime               supabase_admin    false    280                       1259    29044    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime               supabase_admin    false    280    14                       0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime               supabase_admin    false    279            �            1259    16540    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap r       supabase_storage_admin    false    16                       0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    245                       0    0    TABLE buckets    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.buckets TO postgres;
          storage               supabase_storage_admin    false    245            �            1259    16582 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap r       supabase_storage_admin    false    16                       0    0    TABLE migrations    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.migrations TO postgres;
          storage               supabase_storage_admin    false    247            �            1259    16555    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);
    DROP TABLE storage.objects;
       storage         heap r       supabase_storage_admin    false    16            	           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage               supabase_storage_admin    false    246            
           0    0    TABLE objects    ACL     �  GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO anon;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO authenticated;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO service_role;
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.objects TO postgres;
          storage               supabase_storage_admin    false    246                       1259    28966    s3_multipart_uploads    TABLE     j  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap r       supabase_storage_admin    false    16                       0    0    TABLE s3_multipart_uploads    ACL     �   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
          storage               supabase_storage_admin    false    275                       1259    28980    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap r       supabase_storage_admin    false    16                       0    0     TABLE s3_multipart_uploads_parts    ACL       GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
          storage               supabase_storage_admin    false    276                       1259    16970    decrypted_secrets    VIEW     �  CREATE VIEW vault.decrypted_secrets AS
 SELECT secrets.id,
    secrets.name,
    secrets.description,
    secrets.secret,
        CASE
            WHEN (secrets.secret IS NULL) THEN NULL::text
            ELSE
            CASE
                WHEN (secrets.key_id IS NULL) THEN NULL::text
                ELSE convert_from(pgsodium.crypto_aead_det_decrypt(decode(secrets.secret, 'base64'::text), convert_to(((((secrets.id)::text || secrets.description) || (secrets.created_at)::text) || (secrets.updated_at)::text), 'utf8'::name), secrets.key_id, secrets.nonce), 'utf8'::name)
            END
        END AS decrypted_secret,
    secrets.key_id,
    secrets.nonce,
    secrets.created_at,
    secrets.updated_at
   FROM vault.secrets;
 #   DROP VIEW vault.decrypted_secrets;
       vault       v       supabase_admin    false    6    19    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    7    6    6    19    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    6    6    19    6    19    6    19    19    6    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    6    6    19    6    19    6    19    19    19    6    19    6    19    6    19    22    22            �           2604    16504    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth               supabase_auth_admin    false    241    240    241            D          0    16519    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth               supabase_auth_admin    false    243   F�      R          0    28859 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth               supabase_auth_admin    false    273   �      I          0    28656 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth               supabase_auth_admin    false    264   C�      C          0    16512 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    242   ��      M          0    28746    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth               supabase_auth_admin    false    268   �      L          0    28734    mfa_challenges 
   TABLE DATA           |   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
    auth               supabase_auth_admin    false    267   y�      K          0    28721    mfa_factors 
   TABLE DATA           �   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid) FROM stdin;
    auth               supabase_auth_admin    false    266   ��      S          0    28909    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    274   ��      B          0    16501    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth               supabase_auth_admin    false    241   ��      P          0    28788    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth               supabase_auth_admin    false    271   ^�      Q          0    28806    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth               supabase_auth_admin    false    272   {�      E          0    16527    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth               supabase_auth_admin    false    244   ��      J          0    28686    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth               supabase_auth_admin    false    265   ��      O          0    28773    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    270   ��      N          0    28764    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth               supabase_auth_admin    false    269   ��      @          0    16489    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth               supabase_auth_admin    false    239   ��      �          0    16790    key 
   TABLE DATA           �   COPY pgsodium.key (id, status, created, expires, key_type, key_id, key_context, name, associated_data, raw_key, raw_key_nonce, parent_key, comment, user_data) FROM stdin;
    pgsodium               supabase_admin    false    255   ��      Z          0    29193 	   customers 
   TABLE DATA           ;   COPY public.customers (id, stripe_customer_id) FROM stdin;
    public               postgres    false    284   ��      `          0    29392    liked_songs 
   TABLE DATA           C   COPY public.liked_songs (user_id, created_at, song_id) FROM stdin;
    public               postgres    false    290   �      \          0    29229    prices 
   TABLE DATA           �   COPY public.prices (id, product_id, active, description, unit_amount, currency, type, "interval", interval_count, trial_period_days, metadata) FROM stdin;
    public               postgres    false    286   ��      [          0    29205    products 
   TABLE DATA           R   COPY public.products (id, active, name, description, image, metadata) FROM stdin;
    public               postgres    false    285   _�      ^          0    29311    songs 
   TABLE DATA           ^   COPY public.songs (id, created_at, title, song_path, image_path, author, user_id) FROM stdin;
    public               postgres    false    288   ��      ]          0    29259    subscriptions 
   TABLE DATA           �   COPY public.subscriptions (id, user_id, status, metadata, price_id, quantity, cancel_at_period_end, created, current_period_start, current_period_end, ended_at, cancel_at, canceled_at, trial_start, trial_end) FROM stdin;
    public               postgres    false    287   ��      Y          0    29177    users 
   TABLE DATA           [   COPY public.users (id, full_name, avatar_url, billing_address, payment_method) FROM stdin;
    public               postgres    false    283   ��      V          0    29023    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime               supabase_admin    false    277   P�      X          0    29045    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime               supabase_admin    false    280   ��      F          0    16540    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage               supabase_storage_admin    false    245   ��      H          0    16582 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage               supabase_storage_admin    false    247   U�      G          0    16555    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    246   %�      T          0    28966    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
    storage               supabase_storage_admin    false    275   ��      U          0    28980    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage               supabase_storage_admin    false    276   ��      �          0    16951    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault               supabase_admin    false    261   ��                 0    0    refresh_tokens_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 61, true);
          auth               supabase_auth_admin    false    240                       0    0    key_key_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('pgsodium.key_key_id_seq', 1, false);
          pgsodium               supabase_admin    false    254                       0    0    songs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.songs_id_seq', 4, true);
          public               postgres    false    289                       0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime               supabase_admin    false    279            &           2606    28759    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth                 supabase_auth_admin    false    268            �           2606    16525 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth                 supabase_auth_admin    false    243            <           2606    28865    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth                 supabase_auth_admin    false    273                       2606    28883    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth                 supabase_auth_admin    false    264                       2606    28893 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth                 supabase_auth_admin    false    264    264            �           2606    16518    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth                 supabase_auth_admin    false    242            (           2606    28752 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth                 supabase_auth_admin    false    268    268            $           2606    28740 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth                 supabase_auth_admin    false    267                       2606    28933 .   mfa_factors mfa_factors_last_challenged_at_key 
   CONSTRAINT     u   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);
 V   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_last_challenged_at_key;
       auth                 supabase_auth_admin    false    266                       2606    28727    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth                 supabase_auth_admin    false    266            @           2606    28918 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth                 supabase_auth_admin    false    274            �           2606    16508 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth                 supabase_auth_admin    false    241            �           2606    28669 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth                 supabase_auth_admin    false    241            1           2606    28799 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth                 supabase_auth_admin    false    271            3           2606    28797 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth                 supabase_auth_admin    false    271            8           2606    28813 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth                 supabase_auth_admin    false    272            �           2606    16531 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth                 supabase_auth_admin    false    244                       2606    28690    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth                 supabase_auth_admin    false    265            .           2606    28780    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth                 supabase_auth_admin    false    270            *           2606    28771     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth                 supabase_auth_admin    false    269            �           2606    28853    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth                 supabase_auth_admin    false    239            �           2606    16495    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth                 supabase_auth_admin    false    239            R           2606    29199    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    284            \           2606    29397    liked_songs liked_songs_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.liked_songs
    ADD CONSTRAINT liked_songs_pkey PRIMARY KEY (user_id, song_id);
 F   ALTER TABLE ONLY public.liked_songs DROP CONSTRAINT liked_songs_pkey;
       public                 postgres    false    290    290            V           2606    29236    prices prices_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_pkey;
       public                 postgres    false    286            T           2606    29211    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    285            Z           2606    29322    songs songs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public                 postgres    false    288            X           2606    29273     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public                 postgres    false    287            P           2606    29183    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    283            ^           2606    42802    messages messages_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime                 supabase_realtime_admin    false    291    291            M           2606    29053    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime                 supabase_admin    false    280            J           2606    29027 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime                 supabase_admin    false    277            �           2606    16548    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage                 supabase_storage_admin    false    245                       2606    16589    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage                 supabase_storage_admin    false    247                       2606    16587    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage                 supabase_storage_admin    false    247                        2606    16565    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage                 supabase_storage_admin    false    246            H           2606    28989 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage                 supabase_storage_admin    false    276            F           2606    28974 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage                 supabase_storage_admin    false    275            �           1259    16526    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth                 supabase_auth_admin    false    243            �           1259    28679    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth                 supabase_auth_admin    false    239    239            �           1259    28681    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth                 supabase_auth_admin    false    239    239            �           1259    28682    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth                 supabase_auth_admin    false    239    239                       1259    28761    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth                 supabase_auth_admin    false    266    266            :           1259    28869    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth                 supabase_auth_admin    false    273                       1259    28849    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth                 supabase_auth_admin    false    264                       0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth               supabase_auth_admin    false    3855                       1259    28676    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth                 supabase_auth_admin    false    264            =           1259    28866    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth                 supabase_auth_admin    false    273            >           1259    28867    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth                 supabase_auth_admin    false    273    273            "           1259    28872    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth                 supabase_auth_admin    false    267                       1259    28733 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth                 supabase_auth_admin    false    266    266    266                        1259    28878    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth                 supabase_auth_admin    false    266            A           1259    28925 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth                 supabase_auth_admin    false    274            B           1259    28924 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth                 supabase_auth_admin    false    274            C           1259    28926 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth                 supabase_auth_admin    false    274    274            �           1259    28683    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth                 supabase_auth_admin    false    239    239            �           1259    28680    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth                 supabase_auth_admin    false    239    239            �           1259    16509    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth                 supabase_auth_admin    false    241            �           1259    16510 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth                 supabase_auth_admin    false    241    241            �           1259    28675    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth                 supabase_auth_admin    false    241            �           1259    28763 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth                 supabase_auth_admin    false    241    241            �           1259    28868    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth                 supabase_auth_admin    false    241            4           1259    28805 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    271            5           1259    28870     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth                 supabase_auth_admin    false    272            6           1259    28820    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth                 supabase_auth_admin    false    272            9           1259    28819 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    272                       1259    28871    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth                 supabase_auth_admin    false    265                       1259    28762    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth                 supabase_auth_admin    false    265            ,           1259    28787    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth                 supabase_auth_admin    false    270    270            /           1259    28786    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth                 supabase_auth_admin    false    270            +           1259    28772    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth                 supabase_auth_admin    false    269    269            !           1259    28931    unique_phone_factor_per_user    INDEX     c   CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);
 .   DROP INDEX auth.unique_phone_factor_per_user;
       auth                 supabase_auth_admin    false    266    266                       1259    28760    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth                 supabase_auth_admin    false    265    265            �           1259    28840    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth                 supabase_auth_admin    false    239    239                       0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth               supabase_auth_admin    false    3809            �           1259    28677    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth                 supabase_auth_admin    false    239    239            �           1259    16499    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth                 supabase_auth_admin    false    239            �           1259    28895    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth                 supabase_auth_admin    false    239            K           1259    29056    ix_realtime_subscription_entity    INDEX     [   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING hash (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime                 supabase_admin    false    280            N           1259    29102 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime                 supabase_admin    false    280    280    280            �           1259    16554    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage                 supabase_storage_admin    false    245            �           1259    16576    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage                 supabase_storage_admin    false    246    246            D           1259    29000    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage                 supabase_storage_admin    false    275    275    275            �           1259    28965    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage                 supabase_storage_admin    false    246    246            �           1259    16577    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage                 supabase_storage_admin    false    246            v           2620    29192    users on_auth_user_created    TRIGGER     w   CREATE TRIGGER on_auth_user_created AFTER INSERT ON auth.users FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();
 1   DROP TRIGGER on_auth_user_created ON auth.users;
       auth               supabase_auth_admin    false    239    536            x           2620    29058    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime               supabase_admin    false    531    280            w           2620    28953 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage               supabase_storage_admin    false    246    520            a           2606    28663 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth               supabase_auth_admin    false    264    3816    239            e           2606    28753 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth               supabase_auth_admin    false    3863    265    268            d           2606    28741 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth               supabase_auth_admin    false    266    267    3870            c           2606    28728 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth               supabase_auth_admin    false    266    239    3816            j           2606    28919 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth               supabase_auth_admin    false    274    239    3816            _           2606    28696 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth               supabase_auth_admin    false    265    241    3863            g           2606    28800 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    271    269    3882            h           2606    28873 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth               supabase_auth_admin    false    273    3900    272            i           2606    28814 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    3882    272    269            b           2606    28691    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth               supabase_auth_admin    false    3816    239    265            f           2606    28781 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth               supabase_auth_admin    false    269    3882    270            o           2606    29200    customers customers_id_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_id_fkey FOREIGN KEY (id) REFERENCES auth.users(id);
 E   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_id_fkey;
       public               postgres    false    284    239    3816            t           2606    29403 $   liked_songs liked_songs_song_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.liked_songs
    ADD CONSTRAINT liked_songs_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.songs(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.liked_songs DROP CONSTRAINT liked_songs_song_id_fkey;
       public               postgres    false    3930    288    290            u           2606    29398 $   liked_songs liked_songs_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.liked_songs
    ADD CONSTRAINT liked_songs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.liked_songs DROP CONSTRAINT liked_songs_user_id_fkey;
       public               postgres    false    290    283    3920            p           2606    29237    prices prices_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 G   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_product_id_fkey;
       public               postgres    false    285    286    3924            s           2606    29408    songs songs_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_user_id_fkey;
       public               postgres    false    288    283    3920            q           2606    29279 )   subscriptions subscriptions_price_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_price_id_fkey FOREIGN KEY (price_id) REFERENCES public.prices(id);
 S   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_price_id_fkey;
       public               postgres    false    287    3926    286            r           2606    29274 (   subscriptions subscriptions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id);
 R   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_user_id_fkey;
       public               postgres    false    287    3816    239            n           2606    29184    users users_id_fkey    FK CONSTRAINT     k   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_fkey FOREIGN KEY (id) REFERENCES auth.users(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_fkey;
       public               postgres    false    3816    239    283            `           2606    16566    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage               supabase_storage_admin    false    246    245    3835            k           2606    28975 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage               supabase_storage_admin    false    245    275    3835            l           2606    28995 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage               supabase_storage_admin    false    245    276    3835            m           2606    28990 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage               supabase_storage_admin    false    275    276    3910                       0    16519    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    243                       0    28859 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    273                       0    28656 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    264                       0    16512 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    242                       0    28746    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    268                       0    28734    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    267                       0    28721    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    266                        0    28909    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    274                       0    16501    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    241                       0    28788    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    271                       0    28806    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    272                       0    16527    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    244                       0    28686    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    265                       0    28773    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    270                       0    28764    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    269                       0    16489    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth               supabase_auth_admin    false    239            .           3256    29242 %   prices Allow public read-only access.    POLICY     Y   CREATE POLICY "Allow public read-only access." ON public.prices FOR SELECT USING (true);
 ?   DROP POLICY "Allow public read-only access." ON public.prices;
       public               postgres    false    286            -           3256    29212 '   products Allow public read-only access.    POLICY     [   CREATE POLICY "Allow public read-only access." ON public.products FOR SELECT USING (true);
 A   DROP POLICY "Allow public read-only access." ON public.products;
       public               postgres    false    285            /           3256    29284 *   subscriptions Can only view own subs data.    POLICY     �   CREATE POLICY "Can only view own subs data." ON public.subscriptions FOR SELECT USING ((( SELECT auth.uid() AS uid) = user_id));
 D   DROP POLICY "Can only view own subs data." ON public.subscriptions;
       public               postgres    false    309    287    287            ,           3256    29190    users Can update own user data.    POLICY     q   CREATE POLICY "Can update own user data." ON public.users FOR UPDATE USING ((( SELECT auth.uid() AS uid) = id));
 9   DROP POLICY "Can update own user data." ON public.users;
       public               postgres    false    283    283    309            +           3256    29189    users Can view own user data.    POLICY     o   CREATE POLICY "Can view own user data." ON public.users FOR SELECT USING ((( SELECT auth.uid() AS uid) = id));
 7   DROP POLICY "Can view own user data." ON public.users;
       public               postgres    false    283    283    309            4           3256    29438 4   liked_songs Enable delete for users based on user_id    POLICY     �   CREATE POLICY "Enable delete for users based on user_id" ON public.liked_songs FOR DELETE USING ((( SELECT auth.uid() AS uid) = user_id));
 N   DROP POLICY "Enable delete for users based on user_id" ON public.liked_songs;
       public               postgres    false    309    290    290            3           3256    29437 6   liked_songs Enable insert for authenticated users only    POLICY     �   CREATE POLICY "Enable insert for authenticated users only" ON public.liked_songs FOR INSERT TO authenticated WITH CHECK (true);
 P   DROP POLICY "Enable insert for authenticated users only" ON public.liked_songs;
       public               postgres    false    290            1           3256    29391 0   songs Enable insert for authenticated users only    POLICY     z   CREATE POLICY "Enable insert for authenticated users only" ON public.songs FOR INSERT TO authenticated WITH CHECK (true);
 J   DROP POLICY "Enable insert for authenticated users only" ON public.songs;
       public               postgres    false    288            2           3256    29436 ,   liked_songs Enable read access for all users    POLICY     `   CREATE POLICY "Enable read access for all users" ON public.liked_songs FOR SELECT USING (true);
 F   DROP POLICY "Enable read access for all users" ON public.liked_songs;
       public               postgres    false    290            0           3256    29390 &   songs Enable read access for all users    POLICY     Z   CREATE POLICY "Enable read access for all users" ON public.songs FOR SELECT USING (true);
 @   DROP POLICY "Enable read access for all users" ON public.songs;
       public               postgres    false    288            $           0    29193 	   customers    ROW SECURITY     7   ALTER TABLE public.customers ENABLE ROW LEVEL SECURITY;          public               postgres    false    284            )           0    29392    liked_songs    ROW SECURITY     9   ALTER TABLE public.liked_songs ENABLE ROW LEVEL SECURITY;          public               postgres    false    290            &           0    29229    prices    ROW SECURITY     4   ALTER TABLE public.prices ENABLE ROW LEVEL SECURITY;          public               postgres    false    286            %           0    29205    products    ROW SECURITY     6   ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;          public               postgres    false    285            (           0    29311    songs    ROW SECURITY     3   ALTER TABLE public.songs ENABLE ROW LEVEL SECURITY;          public               postgres    false    288            '           0    29259    subscriptions    ROW SECURITY     ;   ALTER TABLE public.subscriptions ENABLE ROW LEVEL SECURITY;          public               postgres    false    287            #           0    29177    users    ROW SECURITY     3   ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;          public               postgres    false    283            *           0    42788    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime               supabase_realtime_admin    false    291            ;           3256    29445    objects allow all 1ffg0oo_0    POLICY     h   CREATE POLICY "allow all 1ffg0oo_0" ON storage.objects FOR SELECT USING ((bucket_id = 'images'::text));
 6   DROP POLICY "allow all 1ffg0oo_0" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            <           3256    29446    objects allow all 1ffg0oo_1    POLICY     m   CREATE POLICY "allow all 1ffg0oo_1" ON storage.objects FOR INSERT WITH CHECK ((bucket_id = 'images'::text));
 6   DROP POLICY "allow all 1ffg0oo_1" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            :           3256    29444    objects allow all 1ffg0oo_2    POLICY     h   CREATE POLICY "allow all 1ffg0oo_2" ON storage.objects FOR DELETE USING ((bucket_id = 'images'::text));
 6   DROP POLICY "allow all 1ffg0oo_2" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            9           3256    29443    objects allow all 1ffg0oo_3    POLICY     h   CREATE POLICY "allow all 1ffg0oo_3" ON storage.objects FOR UPDATE USING ((bucket_id = 'images'::text));
 6   DROP POLICY "allow all 1ffg0oo_3" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            7           3256    29441    objects allow all 1t9jwe_0    POLICY     f   CREATE POLICY "allow all 1t9jwe_0" ON storage.objects FOR SELECT USING ((bucket_id = 'songs'::text));
 5   DROP POLICY "allow all 1t9jwe_0" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            5           3256    29439    objects allow all 1t9jwe_1    POLICY     f   CREATE POLICY "allow all 1t9jwe_1" ON storage.objects FOR UPDATE USING ((bucket_id = 'songs'::text));
 5   DROP POLICY "allow all 1t9jwe_1" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            8           3256    29442    objects allow all 1t9jwe_2    POLICY     f   CREATE POLICY "allow all 1t9jwe_2" ON storage.objects FOR DELETE USING ((bucket_id = 'songs'::text));
 5   DROP POLICY "allow all 1t9jwe_2" ON storage.objects;
       storage               supabase_storage_admin    false    246    246            6           3256    29440    objects allow all 1t9jwe_3    POLICY     k   CREATE POLICY "allow all 1t9jwe_3" ON storage.objects FOR INSERT WITH CHECK ((bucket_id = 'songs'::text));
 5   DROP POLICY "allow all 1t9jwe_3" ON storage.objects;
       storage               supabase_storage_admin    false    246    246                       0    16540    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    245                       0    16582 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    247                       0    16555    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    246            !           0    28966    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    275            "           0    28980    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage               supabase_storage_admin    false    276            =           6104    29285    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                     postgres    false            ?           6106    29287    supabase_realtime prices    PUBLICATION TABLE     B   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY public.prices;
          public               postgres    false    4157    286            >           6106    29286    supabase_realtime products    PUBLICATION TABLE     D   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY public.products;
          public               postgres    false    285    4157            �	           826    16597     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;
          auth               supabase_auth_admin    false    17            �	           826    16598     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;
          auth               supabase_auth_admin    false    17            �	           826    16596    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     :  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          auth               supabase_auth_admin    false    17            �	           826    16980     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            �	           826    16979     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            �	           826    16978    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres WITH GRANT OPTION;
       
   extensions               supabase_admin    false    15            �	           826    16631     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;
          graphql               supabase_admin    false    25            �	           826    16630     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;
          graphql               supabase_admin    false    25            �	           826    16629    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     e  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql               supabase_admin    false    25            �	           826    16611     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;
          graphql_public               supabase_admin    false    24            �	           826    16610     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;
          graphql_public               supabase_admin    false    24            �	           826    16609    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          graphql_public               supabase_admin    false    24            �	           826    16839     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     r   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON SEQUENCES TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    19            �	           826    16838    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO pgsodium_keyholder;
          pgsodium               supabase_admin    false    19            �	           826    16836     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON SEQUENCES TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            �	           826    16837     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON FUNCTIONS TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            �	           826    16835    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO pgsodium_keyiduser;
          pgsodium_masks               supabase_admin    false    6            �	           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               postgres    false            �	           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO service_role;
          public               supabase_admin    false            �	           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               postgres    false            �	           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS TO service_role;
          public               supabase_admin    false            �	           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     I  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               postgres    false            �	           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     a  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          public               supabase_admin    false            �	           826    16601     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;
          realtime               supabase_admin    false    14            �	           826    16602     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;
          realtime               supabase_admin    false    14            �	           826    16600    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     8  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dashboard_user;
          realtime               supabase_admin    false    14            �	           826    16539     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;
          storage               postgres    false    16            �	           826    16538     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;
          storage               postgres    false    16            �	           826    16537    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     M  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO service_role;
          storage               postgres    false    16            �           3466    16615    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                     supabase_admin    false    506            �           3466    16993    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                     supabase_admin    false    514            �           3466    16613    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                     supabase_admin    false    334            �           3466    16594    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                     postgres    false    505            �           3466    16616    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                     supabase_admin    false    504            �           3466    16617    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                     supabase_admin    false    332            D      x��}Y�^G��s�*���GL�q�z������hI,k(���%x#ނ���?�Q���0Y��6!H�����}�1 ����כ_�"��[�G�ڀ�2.�bR(���E��|�㋇���~�v��q��������]?����O{�ӷ/���V[��[JBL�KIy/^g��o�"����_���K��O�������~h/���W?��Կ�l�����}����߿���_����g������_<���?���//���Ŋo��?��$��7(d�7�����#|
dTt�+�#�D��:�Jc�6,����/��q�_��� ���/���ȭA>�AJL�?�J���%)��=6��v�)^��� �1^���/���U_�OGd9�'[�%鳤��Jsl�c�z��/_D��@�A�fF����R#�p1��2���`������L���	��bZ�)���� O7�ihe�}�����A�:�&%�!k���IK]�+���s1?K7�OGqt�Eӂ����xIL�:������� x��)R?�J�PS�aI�R�sB��N����1z �YEg���fm{r�h�frX�M�i����ו�D�Z
��L��;�{�#Q#�̝�/U�3~u�k&%<�����L8��%W7�:R��R� l*��J��p�y�����N�;��Ln��j�3���k�s1��짂��mF���:}�H*�i�G��%W�&��\�ܛkm\�M�ܡ��w֦G�凅����~���37C=`nu���\�B������0z��ѡʸ����,�������i�9|G:�K��lV�M�zf�ρ�8B�+x���<�&�`5�=��de��#ḦY���r3y�ޘL� ����R��p�4Ix���l�i ?1|G�8�W���6�D���Ij��lE�i�zW׈2��ުj�ޤ9	i{�D�܇�t�R��مq�4�sH�i�ր���@ʁt������!����`uo�+}�~�_^��d��i���� Y}��%R'���U����,#�m��9^�TKr[�Qۼ�cP�������I�`6�y&����4�𮵍ҠQY�ZFQ���@5Ү����ndԭ%ݪI�p�[j�����#��[��H8τ�X� �k<���t9?��FRrkClg�g�҈��7c�'Gí���R)�_�L���V�YO��d�k��喡=I��mA�q�H�vHV�J���
�\/����� �jN=b�(��q*��-���1q��7F�y.f�e����׃좳P����OⲢ�2���۠�q13�vC"prYS����O)֮�ߟW�ƍ��Z�c-wY3|�rˬ���V�ڇC�CĽlj�m�����͋Ș� H�I9L���8jҲ�L�Pj�V��IVe�gt�Ik DP�����
��ކkn-����������j3��[��Q@���
cb,ýI�Z1��N̘sa-�����P�6� x�oO��ju3Q7�2S[Ƭ�@�j��i�= �<�R=��h��݋�����Y��Z�s�c��/l�!Q�$K$m�����Z�*vwN�H)f���{���p�~���#t8��h��-�A�I��a��ɩ�P��p�[�A����A�fR{'g�#����g�P�U5��}q���@q� p+b���̒�{d�-;��FG�&��1\���x)�����DA�jkn�@�sM.a2禝�e���!v��rj�dLMQ��gew)�^v]-����*f=�*�f_�r��ۥ�X#�>W�����z	,
Ю�T��J�Ros�۶ST���3�.W�"�n��I6�2�t(�;N�bw��YW�en.��׵�; ����2t�Y��~݂�K1����ۺ��kߘ�|�(�1,�d�H�WH���ܚt�U{���|���`0��HX�g��ӕ��Q3z�˧wXTD;��K�=��R�Qo��TÝ��RXԨr,ȉ��_s9 ���ސ6QT-O�I�鞻{t~�_|���=$*8�8��P�H���W��9�Bd�(���׻�U�v�k�'�P5t��5�?>�{�9a�
����/�EE;�Q���}�?n�	eK]u��l���ł�{P(�I<U�}�45��{<���j]���y\#���#�Qٱl��i�p�g��D�	wv���dt� $յ�+�G�5ŭ���e~�����m�����h�k>1Źx\ P>�]m��*��N5�ȩ7cw&��h��˕��>@���U�b��%.T����$�1�(&�u?���l�P9߲Q�,�(���,H�XO��E*d��Ac��U�C��I
ay ���9�^�S�0���@�j\e&v�-��
�6K-��1�b].�6_c���'��!Z�J�{Gt)ܻ*[K���7�u9���Rr��_���+�>Z���NQW3��`@����Q�md��[�]����1�!�4����1*�A����`�'}νY���;RR�3�X<.�1Eq^�(b��j��w��¨ꢝ6`�2��TF�#ӣ��X�zpB��ۅY+D$'����O�;O�k<x��P�r�w�Bաp�-�n��������ɼZ<E��j7�(r�-6��:�a$�i,�a�b��t���x���Q���Z���j)�f&l��լB��G���17D���a��*qE��)s�v-�x���^�W����*�+ڦ�lQ�G/G�k�Ը�:D���-�eR%I�_5Q��un�(_�U�E����X[��ݤ��$sD_�$��\���3H�ٽ��ih���T��M�|�lG=J�uKew��6kyԁ|��Ƣܑ�:���ɜ��+'���t[��ɩL-e���}���+=6�#�������IN(�l����v�F�?z�����J'Xp+�>�:�"���aN(��=3�u->�U�(�I��RsW���LI�Nk���k���0<��+yU�ҽ	'(���{O�<�q�_�qZ@Azc?�'�����}����-�v:L���|����ށ�Avn�J��"��,Ϛ��R۫���t�.��1cB�ԥdsi�=�����z��6�6ʥJ�?@B��غ�`��&@��%NBES�m�Xːq����P`���FqR�!��kB�|3jSLq�9\��]�����E���Z?M̓gr�տ#Ʋv��ns�]��=,�i8����Z�s���,Zܧ�5�Z+����4�[%Гz%�N2u��X�=�T�Q
:9g��N�N�CU©�n[V�l%�PS-��G������CϾ�r�;��#2�	? Ak�B;a�>���:(I6/����9�jz��Ff��Up6����ԃʎ��t��\���k%1����|s$��Z��s�5��qdvw��m`S?-���"���y|��X���2�2n�D��t�	7�����/^�"�yo@%דq��2R����Y��앎X���pY,�҉.q����� ��rTj������q�ʔ���|R1/+�YZKۢ�D�Jup�/8����33��9&���%uW`�����Q�	mHo�Vn�z� ��\n�r>iIkM�@��y��4d)8�q]NQ?6sM�^K|�*�Ɉ�F�a%�q<3�p4z:�}��˼k�,8��e-����:��{�����u%c�6�Z����(x4JĶ)�iR�=TmNq:��"Nf��^-�I��7�'���6r-+�[e�����_	i���ZV�	���E ��Tb�F�������6�U���&�'�ܐ,��}L��2(�1�[����L�*�]�T�$�b,�bW�s��܍�2?��hW2m���Va\NN��O`;j�V��RjM!�Mjŕ�P�ʱ���U���ɥ�����[�S���3�=��"�����@��e)@�)�tJC���2h���ں���X�IiSq.�^bc�FǨɄ{j;�ᕼ���|�K9YpW��[9���DV��'�jV'mm�K�h�������l�<�&-�Z���1Md���B�ѹ�W�"W�|R*�6� $
  ��ԣq��멮~oȒ��]�Մ�>����zj8\x�%��$u�k�qoD�����1���J%�S,�2J���3�z2�^�<�^�r�~F0T�A��d�x}��GQ���L���Jj��e�o��Z������K�Q�"�$u�59�"w`�/�X��9����++�͎E���j��ǒS׼��v�^�����A� ���9b��OC'Y�&TkÏ�;\	���d谍[]��{��q��q5���K�5F��B~`����Z}�?��H�����V��X���S�b:�B�n��'cPs�bqҶNїc@WNٱ���Q�5
7ށ��2�(4�bF�^\�ρ��ygٲ�|�>�����w?���?��S~�cX����r�oz���$W�����^���u��\>���	�gD#��g�",vTK�P��0����O�~���������EN���dDb c�3{�r}���`����n������;��K��� |�Jz�9*c{ k%Q��-�8�	�ݬuA�4���|zp>~}�To\\��,t�G��"�:���{lS����g0��-Bn���d�4���i��Y���9dqw9��<ǺƎ�� DY���Ѹ�
�D{	b+�9�tּ�3��/����H�7ѓV�e+�+���EJ��w�Z����~�!ǵí�|�i{nU��&��3cB��i��`g�Y?�6�jR� Q+��#��6���_C){dIR�G��hOʽ���9����������?�7��7����?ֈ�{��;�W���X'��O���J��>!��(�1[����9��s��9
rN��6�7�K�9	��9�#*d��� �H�н��%�Q�0H���D0�}�%�e�kkg��u�S�Y���_��k���1D�
��*'�i6��o�jL��1��C����R��g�ۃ�7P4�r4�V�����i�j�c�(~�Y�r���>��V?�G'�5-�-I%��G�3Νfd��mm���K�^͗�����O�y�#�_�����:��b��I�@a�Nrƨ>d�^L�W�Ue����I��L���� ���줌�g�f
i��UXv�u���.�J���u]�S���K��-���o�;���e��WK��.2����G��ȅDS����匿,��y�-��T��q��N�g����������㔏��w����Ԣ�Ah�d{�(�X�tm�<'��{�TB9Tr�pr�9�t_�mǺ�i��d�b.�l�"3՞'6<Y����H!L{S��1��8
�Kc���6L<)R�o՘�R5��L]�����,�o�fb��W������^�ry��(Hq��d��@ !̐��Bc �)	����:̩@�ll����mX��f�>5R�l��Z��Z��ہ*٩TsѾ�k*��?�ʓ'җw��ަ$��O �d�;�������x.��6��O��}`��r�hϾ��h������(3�ұs]���E����=������1�b��:��U!cP?tqᓊ(����
.��4�&\6bb&'���̌U��g��v����ȉ����L Z��[�na���֌EP�f���?�ݓZ�=��)9���{d�R�X�֘Rm5FgL^����Y���{$����7E*'�lc���܋y��o�ߖ�ֺ�����z���q+�E�e�z�VH�������BI��Yw~-5eu6z�}6'��s��k�j0�3&�D�;3?�}G�ywc$E𳎭xjC�|# �7���6�(��!�=��N�\�P���^q�g-�}j �k�{������ha���1uA춗�qbAu���̄h}�2K�zU�̖h��8VH�DO��v�+���}մ�;�r����j�/t^�Zܪ���b"�տ�0�'B*v�ŀ�[���%�JŨ��~*�ˁ��KE���{}��	O�S�ON�����I�"R0V!ww�0x��B�+Q��\oŹ�ɬ���S��V$�'`�E�Y��ם�<���;������X���(J��i����G���w*ҾPg��"e7�|�ҽ�����)56�8�%�l���s��T��?YlUr\6�LT%�A����9�d$�G��_�C�����W���I�[s��6���D96R`�[h����Ez���������G-�^���>��Eu�/4G�i���4]O�±��J��V���F��ʫ/$�e}�);O�s���ܗ2���wH}��ɭ��ĞGx�T�����"������?/=&�oH��}.}��ϑ�꫃��d�Í�9��YK�
=�{���q곌|�&�QN�j��C\�6bS驗N����@Sh<3?��H�͹"���0.ӏ[��jL�V�X,,̍A��~��N�z�ZQ�8{�=�[2 NL{��u��̼�F��M+[=�$q��3P*��o-���^�m���kW��w8��[�;q&r�gQB�KKm�p��{���g��_Un%#�, RWw���.<J��Uq��O[��	ϫ��R���i����:\���[�����<���牔��:��c�p\e9R���CC�f���Bc!��z�@��O�����������      R   �  x�}�YSb����W�����<��<� �@��F&�IE��'�n�>o���*�Z�[���K	�,�\K�)�(
��LZ�2��m$�0��� ǔB"E-	��a2.�EN��/�&HJi�IDK3;*dƈ�M	�����E�S�u�X�P/���~]��ݑф-�˙����L&C1��/��Q��$K�aL��U"��	�ٱz����f����_��x�*H�O<�+�	������k�8x������`���#���w�R�cI0U2�3�^<W;��I����\�F�r��~z�i���l��:י��y��~�
��,��Ғ���^]ٗ�)��
��-	&=��	蚧�E���k͏,^x$%12$h$����g����Ȍ��k���)_�4P�)[��l�o�[�pw��ս�"a�:�HS��W���Obd�;�0t�3��KZ#QԫH�?�Ј���#�(�X�ttY�LD$'噥0(��v�賁��e�ǛU��.����2�z׺؜v�YT�!Y��"�;���'�T<hb
X�}� ǣL!&���?���i�)��*x�'�&Kfy�g�Q�M��էI㶼i���q�a㸽��=���h�^���X��"J����P����bip;d��`� <|�h�}ÈSW�T�Ld(�qq�����F
B���Lr��xY�jө�����v����@�NkR�u�m3M��Q�{����E��"p�_v��ɢ���;���q�$��q$��<œ�!�d���?�t�Y�֖E�ؙզvtЈ>����bw��zVZ�r���jt��6큨�����i��RN���b�D�#N�!!�����6BB"�J�#���S�=""P�Ae�=��6iCm8�T�U�y�3��+�D��Ƿ�C���l�%����޾���$�RF3f�E�/��^q�309
��MFx�p�5%�&�:{�0�u�Y'92���ca�ug���>��E�um��Ҍ���]8���Vy�_�6e���o�p!�99[�0�2�� _X.V��vQtE�\�x�Qd�
�.Y��Qp�f�c�aF��D9�,M������,Gx���qʿ�[�{�{�j�ɂ�*�0o_���f�B��O�e��,W�*���{���1*��83�d�S�"0����B8i�)p�!`� ,�����XmiLF{�1'�����}0K����������d9뙷�i#?������ݹ�1�9��F)̾��,�&�8�^��@p�P�xۄfl�
����O�Z�Ā[���=	i������B�1%��Ţ����l�p�7�Viw��b1\iZY��7n��+�:��J�������dJ�z���Y�: 1P#���X�A2�&X��p1��(�tJ�������|U�9��~���l�ϻuuY-�n;�|����x򊋗�%$'Lv%#�O����}񆹐JJ�f�`,��.���lX��,l 3N=,��ʑc�_$��3�\7߫�BFk�:�2}4ݰ���2N;�)j�gR�������Yj���?�$� &���p�)�)��T��4�Ȑq19P��A�i��Hذ��){f�Tʬ~��c�F{��fJ��\n�o�/P!�g�:=^�G��j5y�?X��c�u�_�~�`�a.�k����Y	�D;k��0rd�x��`z,�H`���e[�Çƚ7fi�n��ۇ�5C��6dﵦn��V�ͶաK���@N�,ܻ�����Ox�����h��ie�)��4���$`!5���@Y���t��'��튜��yQ��G�(.�,i��Vz���Ŷ��7�v��>��]���ʢ��Cc���������D(>Hǩ�&6��L!ǼTX�DO[%�!a�����0���X崅u��Ҹ]��4y�6=���-s��r���O�Ɩ��7��Y-���BpV�B!/��{������տ���      I   �  x��TYnA��Oa�zܯ�)�( v!	���Ş�x�,�\�+��I�	=&��ĊA0���ׯJU5c���x@�Z�@���7�2�c�ү������L������������t�|&4>G�qb�˛��ܗyȽ���L*�ٸ��ળ��!�0y1�K�N1$@%����PI�n���(r�I��X��qc��]Є�
9BIb
i�42�"(�D砡S��05��>q�O��a�Ɨ�D0.�Z7l�p7�����H01�9�Re�e�X�}ƕ�cDP��"�U����gU:�Y���z�d+V��ZǦ��pj.};w^T�*fnjS�r�A�<����˶��~Z����������kfe1�]������#��ft�e>���n�2慨�����Д��c�$��o囟�6]BR��XLڢ�w�i�
Ĥ1H;���R;Ɲ��u3"1�Rr*(׌p��6ik�fZGǋb4��q����+o��~~�j{1��ُo��b�ۺ)���ɘ^K���OF��O?�"o^?^,Nf��}1>{��I���Y}1\�Y}��aza󗯌)����ٖ04��p��ۻ�%mw��V�Xѥ��b�����m�R�V����|Yo�ha�<bV�XQ����`��O���/�Y      C      x������ � �      M   h   x��ɹ�0�ت��Y��˫u-NdCF�S/}���Sx�Р�9iy0�!R16�1�q���=��x�ݾ���:���T��g��;��×u-�^J�:+ @      L      x������ � �      K      x������ � �      S      x������ � �      B   ~  x���MO�@E�ïpo�y���C���ZD		iaZ5h���bBx�ٜd�;�g�?�� !�*���t��k�I��9�0�\�6l�1����)�E☋�4&��%�@9.�g�,V�g@*�΋�w��L[N���o6
P4"��`%L�Ɣ)l�q8����j�V� ��4���C'�4�,O�ɢ�\��mR-ٞ�Vp��SJ�iI�'��:�9�׼Z����?W�PG�|�N~m�ݸ%�R�Z�m>����4�g~T]V����W��a�r��πs�o'6�x�(I7�����I@�ǻ�c�����a7x�]�u�T=�n�� ��v�2�TzR+B6{Y��	�Z�y���G�VK6z����avII~]�f��/-�� ��W�T� �7�      P      x������ � �      Q      x������ � �      E   L  x�U�ɕ1�{�G�%��?�)Z��}��,�F�����7=��`N�����ML"Zb��)�e�_S<��䋮[N��i�v�Nv8�M�Dn����~�X�[ܡ�F�Ɠ�H���S� �v^Zp�_�W��͆��/*�Z�;rUk��d�9^�æ��#��`���i;/��p�����[�S��5�C�qf�D��͹���Վ�TsF},:�./������7�p�9�U�"QSP�C홆M�D�&hZ��w7�������Î��w^�AŏZu���"�sS��ܻZ��TS|Q��{_;�EЪ<8{>�4�Cծ����������      J   �   x�u�1�0D��>=#�V�"�Cp�4N�Tܿ#�h��x�ΰ:An�R��Ԣ��XD<Ӯ1�t?#hSw�#4��$,�N��ػZ7.���ܙKW��(n�����x��?]����H�,R����䜿�i+      O      x������ � �      N      x������ � �      @   �  x��T�N�0�n����ے�7�#M+�B�gH��*7q�@��ĩ�L<�^d���=��dv�����Y���������	 �a=�,G�Ǯ�BB�c�XAh���Z4�X
�!�5Q�H�*����_��4*���~0qb�ٰ�������-D�Ig��(�W�n'{]��a7������u�}�{�6e++k bi*�6 �� �9��7���am�)q3��,KD�z�z�PƐ�}m��l2oz��4ܛo�B[??�Y6H��-VQ�o~��'ą�5#�F��j	���T�mRav�Q��]�bSN%��S1�p8������l���n<����B�g�c_��\�DxA�,d�g�Ғ|K�6���{���Bg��U��Mp~�_l�w��W�}��ǝ0����!�2~Wp��M��L��˜M�w��U���b,��{e��?�K5{q��D��2��X��Ki�GY*W��H��#���s����ޯ��j��hM��T't<<����E�/˸6/z=��R�ې#YX��"!a�[A�r'd p^�m-i0��zW�ˢ:>��	�a~u<9j��v��dr0�>E�yT%G]N�A��Et��vۏׅ��C��������u�h�l�	 �غ�M�9q:�y"l@�a�!l#L1s��X�:�X����g�ӵ]����l      �      x������ � �      Z   q   x�%˫�P PM��d���Z��ԮA���h�d���sR�J(�=zG��S�`�Zi4
|����]�s��_��VH��l�c��|F��`u�D�ӈ�7_�Zb�c-�g �\��      `   �   x���9�@C��s
��Q�,����2��b']:�>�{c��Bd�Z%��ǊcC���(עm�Z��hQ3�T'�������(p#�f�w	y!��-��0����&<�$�������M���z��X�yZ�ݯO��F��KJ��MH      \   �   x�+(�LN�7�Jr	2�1�J�/v�3�s�p3��,(�O�r�r�40K2(.�L6�,���420�,-N�,JM.-*��K����+��4IV�r��-JOD��c���
5��ݹ�;05%����b���c���� ��8)      [   U   x�+(�O�r�r�40K2(.�L6�,�I-.����Z��gw�B��Ԕ Kg/�������̴�G-��Rs3KsZb���� }N�      ^     x���OJ�@���)f/���d�"؅�Y����d�ICL<��� x��q]�2�N�h�o��̓��1 &�Ԅ�1I@�B����ٸ�aS��w�%�Ԗ@W�ܞ��_�jw�UdLYk,��es�Y�+ˬ����C!��f< �׷Ws48ZR�"N��������m��1"R�!���DО�6�*����x�>���~Μ�PZthf�4�' ���Ti�D c%e/p�l�<�E�_������'���f�(��R�������4ۻ(���Z      ]   �   x�}�QK�0���_�w���ܶIu�[q���H�D;6����-SV�:8O��~�Ӽ�,�n��3�uo�]F�����j[V��{�AU� N%���W�B� R�Ǫ�����'�x���O7�ǉ�1`G�It�#��.
����q�����#�S�R�~�7�S���/WK�.�3	t(E�
��Hm�E�#-�������m�;Zo'k�M�.�4�+0��9<���j      Y   S   x�U˹�0 �:�Bd?,�	���!]�H�+�ttFMhe.�V��(ޮ�|�H�XAhr��pK�X3$��*�0o x�      V   a  x���aj�0���xxC��&�Yv�sL����쮔��ב�4]'���|�=a���e���\=�X�C,�-B�7�{��<n�Hz��81:$0`h6���w��i���V�g��e���-o��}O-�V#��3J�$�n@��"u�	��ELb������i��ή��=�M;̖B'�Ad Ӭ���5B��(��ȴ#J��I��"��zd��"
��Z�o�l7��I�YK��Mb�kC�+���l(͏\A/Mucȶݐ���,u	�>
��j��U��Ft.��ɰ�T�˙"�N4�jH~��c��+�+�o$KD�[[��(��5��h�4�"��q|s�N6      X      x������ � �      F   g   x�+��K/�,�1~�FF&�����
��VF�VFzff&f�dK8�@FT'��d�������\����ŜP
���z��FfX�@��� F\1z\\\ 6�+�      H   �  x�uVI��6<���8Q�y�#:
@��m!Q���N�gq؜u��d�B���t�帾^u[ϧ۲i=�d�{����iS�B�Ig&QkU�%�19r�0/�P����������zZ�U?�'��#;U�r����]�0|ȣ�BO)�ú#�n�m竾�rkov�)�Tb��͔�5���o%%���>hJD~��E�����NK;����Z�JDR3��J��$����0�&5Q߅�Rf���S{=�&q���0n�7	X,-��\�fIC��C�G�¡��	|[��e�O�	>�b�YY�>���QY�T��id�.>f*s�ڛ���;�I�����ն�iVu�M���e�S'�hv�$��%�<����Ų��zo�l�M����� ���}X��Z�rR�vH����r����{�5U_��0
tR�{��#�yȻj����Ks���u��^��O�'��Õ!�|P�����9屄d\�bva��w�g���z���f��Kv��vCD5�s^����و�;�QƏgh�A�v]__���F�x�/�a�������'q���uN��ʹe�C\=Io�nf$�qf���t��ۢ�ױt��y�e�u�V����`���F�<{���]�>����� �����ݑ��W��5+Xr���^)�PÌPr�R4��a�����t��R�m��8_��~}wCn��K%���<(O��sI�kw{i��/3����	F��u[��/P�K V�X����Cl�#([p�S)�/2�,�"��)��z{@�حw!5So�%IM�`s�[ڬ��,9CSi���e99AR������ɾM�[�.��:�j���#HI�&�?���.������e�/�|�v�Z�X߿�q�񩠗*esñT��5��ceX���!+!�2�a�������}�e�9�s�rtp[2��)z�0PZ!�A��!H�8;��m�	�e��0�)S\������+��]�J�,Q�!�#�Q��J�����t��WX/
�/����ےtQ�gj�M*�#�pt���ǐ���\����B/u}�j᳒<d�B�ΗT��G/5���j\�>E���e!����`��"I� ��� [̭ +�(�8ػ����� ~���ſ�i���x�+�#�Fלq���M�M��-'�<#����6E��𯏅�������(��/��a�OH�kc���0��?����      G   S  x���Mo7����tm��p��P@/M�^R���\�_�R�6b�h�w�:�W� 9�a���C>z�/+�t�م�ÅڢS�#/��BL�On���o�������ʭ�}_#�TJ�kG��<�+����SWl#�x��Yx�q�2�"� �+�i���|���߽��2" 4��I2&�D��\l:������v�o�7(��a�Z��?7�ƹ~l��W�~�}�j�误�lΗ��Z�vz�"��/�v��u[�Uo��C�g���e��]_�M�ڼ�W盋�����ۍn>޾�n�,<�瓌�rT�R��n�� �#p������C,�:�3��S�v�CA{K�ד���v����΋�>{������Ƅ~4nRP�FC[�J�
S���嫛����K ���e�����Z9~�@��_u����
MYk��)�.)�0�\%:i=�.8d��r���_��p�xϟ8�0,���1���ON�r�5��T��v=��-�e8���E��	�e��ξ�{���c��!�%�\�+�7��Y���c1g̣&WYs͉ޥXkhڄʎ��4-�m��<>:a=��ĕ[kC�vǖc�A�4TyG�Y�U��g�K�~�����a�jX��'���<0z��h�ԉ���L�Ʌ��)��LJ	��QK������K��u�ቄe��q�i����o�N����,�Pʭ�Vr)!��ю�$x�/�f9��W��!���QsS`����Rwj����PI"Q�8�4��,���H�zW��փY�H[����a-�D�����ѩ�u���[@�¶�Q0�2l�̷�錶X/#篜;����l	�~���bzNZ��F�G/�I��6M�F��+תcK����4[-ׂTR��z�y�73�1�\|�~�y�m]S�1g���qi���]FyL�[���7'F�Eت�I��\�הwmw�Ë���>���~?�Xm1I��]�m�J���ѳ�������v�j�[�]ɶ��/>���`���.��q?�c��X�
y%*��#�h%=�V���B�S�V�.������:�2��\��)���+{o��񑤒�~4�w����� �	�      T      x������ � �      U      x������ � �      �      x������ � �     
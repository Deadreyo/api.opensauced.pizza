-- This script was generated by the Schema Diff utility in pgAdmin 4
-- For the circular dependencies, the order in which Schema Diff writes the objects is not very sophisticated
-- and may require manual changes to the script to ensure changes are applied in the correct order.
-- Please report an issue for any failure with the reproduction steps.

CREATE TABLE IF NOT EXISTS public.contributions
(
  -- Static columns
  id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
  repo_id bigint NOT NULL REFERENCES public.repos (id),
  count bigint NOT NULL default 0,
  created_at timestamp without time zone NOT NULL DEFAULT now(),
  updated_at timestamp without time zone NOT NULL DEFAULT now(),
  deleted_at timestamp without time zone DEFAULT null,
  last_merged_at timestamp without time zone not null,

  -- Elastic columns
  contributor character varying(255) COLLATE pg_catalog."default",
  url character varying(255) COLLATE pg_catalog."default",

  CONSTRAINT contributions_pkey PRIMARY KEY (id),
  CONSTRAINT contributions_hash UNIQUE (contributor, repo_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contributions
  OWNER to postgres;

GRANT ALL ON TABLE public.contributions TO anon;

GRANT ALL ON TABLE public.contributions TO authenticated;

GRANT ALL ON TABLE public.contributions TO postgres;

GRANT ALL ON TABLE public.contributions TO service_role;

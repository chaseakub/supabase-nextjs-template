create table public.legacy_existing_directory (
  id integer primary key,
  display_name text not null,
  private_email text not null
);
alter table public.legacy_existing_directory enable row level security;
create policy browse on public.legacy_existing_directory for select to anon using (true);
grant select on public.legacy_existing_directory to anon;

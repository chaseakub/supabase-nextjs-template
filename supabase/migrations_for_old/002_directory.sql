create table public.alternate_directory (
  id integer primary key,
  display_name text not null,
  private_email text not null
);
alter table public.alternate_directory enable row level security;
create policy browse on public.alternate_directory for select to anon using (true);
grant select on public.alternate_directory to anon;

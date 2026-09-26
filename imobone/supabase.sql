-- imobone: tabela única onde o sistema guarda todos os registros
create table if not exists public.docs (
  col        text        not null,
  id         text        not null,
  data       jsonb       not null,
  updated_at timestamptz not null default now(),
  primary key (col, id)
);

alter table public.docs enable row level security;

-- Permite que o sistema (chave anon) leia e grave.
-- Atenção: quem tiver o endereço do site consegue acessar esta tabela.
drop policy if exists "imobone app" on public.docs;
create policy "imobone app" on public.docs
  for all to anon
  using (true) with check (true);

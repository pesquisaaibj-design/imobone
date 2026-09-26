# imobone na Vercel

A pasta **site** é o sistema. Os outros arquivos servem para configurar o banco de dados e trazer os seus dados.

**Importante:** o arquivo `imobone-dados.json` tem os seus dados e usuários. **Não** coloque ele no GitHub nem na Vercel. Use só no passo 4.

## 1. Criar o banco de dados (Supabase, gratuito)
1. Crie uma conta em supabase.com e clique em **New project**.
2. No menu do projeto, abra **SQL Editor**, cole todo o conteúdo de `supabase.sql` e clique em **Run**.
3. Copie o **Project URL** (Project Settings → Data API) e a **Publishable key** (Project Settings → API Keys). Em projetos antigos, use a chave **anon public** da aba Legacy API Keys.
4. Abra `site/config.js` num editor de texto e cole os dois valores entre as aspas.

## 2. Colocar o site no GitHub
1. Crie uma conta em github.com e clique em **New repository** (pode ser **Private**).
2. Na página do repositório, clique em **uploading an existing file** e arraste **o conteúdo da pasta site** (os arquivos, não a pasta).
3. Clique em **Commit changes**.

## 3. Publicar na Vercel
1. Entre em vercel.com com a sua conta do GitHub.
2. Clique em **Add New → Project**, escolha o repositório do imobone e clique em **Import**.
3. Não mude nenhuma configuração e clique em **Deploy**.
4. Ao terminar, a Vercel mostra o endereço do site (ex.: imobone.vercel.app).

## 4. Trazer os seus dados
1. Abra o endereço do site. Vai aparecer a tela **Primeiro acesso**.
2. **Não crie administrador.** Toque em **Importar arquivo de dados** e escolha `imobone-dados.json`.
3. Confirme em **Importar**. Depois entre com o seu e-mail e a senha de sempre.

## 5. Tela inicial do iPhone
Abra o endereço no Safari → **Compartilhar** → **Adicionar à Tela de Início**. O ícone e o nome imobone já vêm prontos.

## Para alterar o sistema depois
Substitua o `index.html` no GitHub pelo novo. A Vercel publica sozinha em cerca de 1 minuto.

Cópia de segurança: **Configurações → Dados da empresa → Exportar dados** (só administradores).

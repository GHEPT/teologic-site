# Teo Logic Solutions — Digital Platform

The official digital platform of Teo Logic Solutions, built to connect institutional presence, business evolution, operational intelligence, and digital experiences in a single application.

> *A plataforma digital oficial da Teo Logic Solutions, desenvolvida para conectar presença institucional, evolução de negócios, inteligência operacional e experiências digitais em uma única aplicação.*


## Live Website

**Visit the official website:**  | > ***Acesse o site oficial:***  
https://teologic.com.br



## Overview

This repository contains the source code of the official Teo Logic Solutions digital platform.

> *Este repositório contém o código-fonte da plataforma digital oficial da Teo Logic Solutions.*

The application goes beyond a traditional institutional website. It serves as the public-facing digital foundation of the company, combining institutional communication, business positioning, dynamic content, lead generation, and operational intelligence experiences.

> *A aplicação vai além de um site institucional tradicional. Ela atua como a base digital pública da empresa, combinando comunicação institucional, posicionamento de negócio, conteúdo dinâmico, geração de leads e experiências de inteligência operacional.*

Its architecture is designed to support the progressive evolution of Teo Logic's digital ecosystem while maintaining explicit boundaries between application responsibilities, data ownership, infrastructure, and future products.

> *Sua arquitetura foi projetada para suportar a evolução progressiva do ecossistema digital da Teo Logic, mantendo limites explícitos entre responsabilidades da aplicação, propriedade dos dados, infraestrutura e produtos futuros.*


## About Teo Logic

Teo Logic Solutions combines technology, software engineering, automation, artificial intelligence, and operational intelligence to help businesses understand their current structure and create practical paths for evolution.

> *A Teo Logic Solutions combina tecnologia, engenharia de software, automação, inteligência artificial e inteligência operacional para ajudar empresas a compreender sua estrutura atual e criar caminhos práticos para evolução.*

Technology is treated as an instrument for business evolution rather than an isolated deliverable.

> *A tecnologia é tratada como instrumento para evolução de negócios, e não como uma entrega isolada.*


## Platform Capabilities

### Institutional Experience

The platform presents Teo Logic's positioning, philosophy, capabilities, and approach through a responsive digital experience.

> *A plataforma apresenta o posicionamento, a filosofia, as capacidades e a abordagem da Teo Logic por meio de uma experiência digital responsiva.*

### DOI Journey

The application includes the public entry journey for DOI, Teo Logic's operational intelligence experience.

> *A aplicação inclui a jornada pública de entrada do DOI, a experiência de inteligência operacional da Teo Logic.*

Dedicated routes support the different stages of the experience, from entry and active listening to submission confirmation.

> *Rotas dedicadas suportam as diferentes etapas da experiência, desde a entrada e escuta ativa até a confirmação do envio.*

### Dynamic Site Content

Application content is separated from presentation logic through dedicated server functions and persistent data structures.

> *O conteúdo da aplicação é separado da lógica de apresentação por meio de funções de servidor dedicadas e estruturas persistentes de dados.*

### Lead Generation

The platform contains dedicated application logic for capturing and processing commercial leads.

> *A plataforma contém lógica de aplicação dedicada à captura e ao processamento de leads comerciais.*

### SEO and Discovery

The application includes technical foundations for search engine discovery and social sharing, including metadata, sitemap generation, robots configuration, favicons, web manifest, and Open Graph assets.

> *A aplicação inclui fundamentos técnicos para descoberta por mecanismos de busca e compartilhamento social, incluindo metadados, geração de sitemap, configuração de robots, favicons, web manifest e recursos Open Graph.*

### Responsive Interface

The interface is designed to provide a consistent experience across desktop and mobile devices.

> *A interface foi projetada para oferecer uma experiência consistente em dispositivos desktop e mobile.*


## Tech Stack

### Application

- TanStack Start
- TanStack Router
- TanStack Query
- React 19
- TypeScript

> *Tecnologias responsáveis pela aplicação, roteamento, gerenciamento de estado assíncrono, interface e tipagem.*

### Build and Runtime

- Vite
- Nitro
- Node.js 22
- Bun

> *Ferramentas utilizadas no desenvolvimento, build, runtime de produção e gerenciamento de dependências.*

### Interface

- Tailwind CSS 4
- Radix UI
- Lucide React
- React Hook Form
- Zod

> *Tecnologias utilizadas na construção da interface, componentes acessíveis, formulários e validação de dados.*

### Data

- PostgreSQL
- Drizzle ORM
- Drizzle Kit
- postgres.js

> *Tecnologias responsáveis pela persistência, modelagem, acesso aos dados e evolução versionada do schema.*

### Infrastructure

- VPS
- EasyPanel
- Nixpacks

> *Infraestrutura e ferramentas utilizadas para build, gerenciamento e execução da aplicação em produção.*


## Architecture

The application follows a modular architecture that separates routes, reusable components, application logic, data access, integrations, and infrastructure concerns.

> *A aplicação segue uma arquitetura modular que separa rotas, componentes reutilizáveis, lógica de aplicação, acesso a dados, integrações e responsabilidades de infraestrutura.*

```text
src/
├── components/
│   ├── ui/
│   └── shared application components
│
├── db/
│   ├── migrations/
│   ├── client.server.ts
│   ├── schema-drift-check.server.ts
│   └── schema.ts
│
├── integrations/
│
├── lib/
│   ├── ai/
│   ├── api/
│   └── doi/
│
├── routes/
│   ├── admin.tsx
│   ├── capacidades.tsx
│   ├── contato.tsx
│   ├── doi.tsx
│   ├── doi_.entrada.tsx
│   ├── doi_.escuta.tsx
│   ├── doi_.recebido.tsx
│   ├── filosofia.tsx
│   └── index.tsx
│
├── router.tsx
├── server.ts
├── start.ts
└── styles.css
```
The architecture is intended to keep the institutional platform maintainable while allowing new digital experiences to evolve without turning the application into a shared monolith for unrelated Teo Logic products.

> *A arquitetura busca manter a plataforma institucional sustentável enquanto permite que novas experiências digitais evoluam sem transformar a aplicação em um monólito compartilhado por produtos independentes da Teo Logic.*


## Server-Side Rendering

The application uses TanStack Start with a Nitro-powered Node.js server runtime.

> *A aplicação utiliza TanStack Start com um runtime de servidor Node.js baseado em Nitro.*

The TanStack Start server entry is redirected to a custom `src/server.ts` implementation, allowing the application to maintain its own SSR error-handling boundary.

> *A entrada de servidor do TanStack Start é direcionada para uma implementação personalizada em `src/server.ts`, permitindo que a aplicação mantenha sua própria camada de tratamento de erros de SSR.*

Production builds explicitly use the Nitro `node-server` preset.

> *Os builds de produção utilizam explicitamente o preset `node-server` do Nitro.*


## Data Architecture

### PostgreSQL as the Source of Truth

The application uses a dedicated PostgreSQL database as its single authoritative data source.

> *A aplicação utiliza um banco PostgreSQL dedicado como sua única fonte autoritativa de dados.*

The `teologic_site` logical database runs on Teo Logic's shared PostgreSQL infrastructure while maintaining application-level isolation.

> *O banco lógico `teologic_site` é executado na infraestrutura PostgreSQL compartilhada da Teo Logic, mantendo isolamento no nível da aplicação.*

This architectural decision is formally documented in:

```text
docs/adr/0001-postgres-proprio-como-fonte-da-verdade.md
```

> *Essa decisão arquitetural está formalmente documentada por meio de um Architecture Decision Record.*


## Database Access

The application uses separate database credentials according to operational responsibility.

> *A aplicação utiliza credenciais de banco distintas de acordo com a responsabilidade operacional.*

`DATABASE_URL`

Used by the application runtime with restricted CRUD privileges.

> *Utilizada pelo runtime da aplicação com privilégios restritos de CRUD.*

`DATABASE_URL_ADMIN`

Used exclusively for DDL operations and database migrations.

> *Utilizada exclusivamente para operações DDL e migrations do banco de dados.*

Drizzle ORM is the official application data access layer.

> *O Drizzle ORM é a camada oficial de acesso aos dados da aplicação.*


## Database Migrations

The database schema is defined in:

```text
src/db/schema.ts
```

Generate a new migration with:

> *Gere uma nova migration com:*

```bash
bun run db:generate
```

Generated migrations are versioned under:

```text
src/db/migrations/
```

Apply pending migrations with:

> *Aplique as migrations pendentes com:*

```bash
bun run db:migrate
```

Database evolution is managed exclusively through versioned Drizzle migrations.

> *A evolução do banco de dados é gerenciada exclusivamente por meio de migrations Drizzle versionadas.*


## Schema Drift Observability

The application includes a schema drift verification mechanism executed during application cold starts.

> *A aplicação inclui um mecanismo de verificação de divergência de schema executado durante cold starts.*

The verification compares applied database migrations against the versioned migration journal.

> *A verificação compara as migrations aplicadas no banco de dados com o journal de migrations versionado.*

Possible structured events include:

```text
db.schema_drift.match
db.schema_drift.detected
```

The current strategy is intentionally observability-only: drift is reported without preventing application startup.

> *A estratégia atual é intencionalmente baseada apenas em observabilidade: divergências são registradas sem impedir a inicialização da aplicação.*

Any future transition to a fail-fast strategy requires a new Architecture Decision Record.

> *Qualquer evolução futura para uma estratégia fail-fast exige um novo Architecture Decision Record.*


## Architectural Decisions

Relevant architectural decisions are documented as ADRs under:

```text
docs/adr/
```

The first accepted decision establishes the application's database strategy:

```text
ADR-0001 — PostgreSQL próprio como fonte única da verdade
```

> *A primeira decisão aceita estabelece a estratégia de banco de dados da aplicação: PostgreSQL próprio como fonte única da verdade.*

The ADR formalizes data ownership, database isolation, connection responsibilities, migration strategy, and boundaries regarding infrastructure integrations.

> *O ADR formaliza propriedade dos dados, isolamento do banco, responsabilidades de conexão, estratégia de migrations e limites relacionados às integrações de infraestrutura.*


## Running Locally

### Requirements

- Node.js 22 or newer
- Bun
- PostgreSQL access

> *Requisitos para execução do projeto em ambiente local.*

Install the dependencies:

> *Instale as dependências:*

```bash
bun install
```

Start the development server:

> *Inicie o servidor de desenvolvimento:*

```bash
bun run dev
```


## Production Build

Generate the default production build:

> *Gere o build padrão de produção:*

```bash
bun run build
```

Generate the Node.js server build used by the production infrastructure:

> *Gere o build de servidor Node.js utilizado pela infraestrutura de produção:*

```bash
bun run build:node
```

Start the production application:

> *Inicie a aplicação em modo de produção:*

```bash
bun run start
```


## Code Quality

Run ESLint:

> *Execute o ESLint:*

```bash
bun run lint
```

Format the codebase with Prettier:

> *Formate o código-fonte com Prettier:*

```bash
bun run format
```


## Deployment

The application is deployed to Teo Logic's VPS infrastructure through EasyPanel.

> *A aplicação é publicada na infraestrutura VPS da Teo Logic por meio do EasyPanel.*

Nixpacks defines the production build environment and uses:

- Node.js 22
- Bun
- Frozen lockfile installation
- Nitro Node.js server build

> *O Nixpacks define o ambiente de build de produção e utiliza Node.js 22, Bun, instalação com lockfile imutável e build de servidor Node.js com Nitro.*

The production build command is:

```bash
bun run build:node
```

The application starts with:

```bash
bun run start
```


## Environment

The application requires environment-specific configuration for infrastructure and data access.

> *A aplicação exige configurações específicas de ambiente para infraestrutura e acesso aos dados.*

At minimum, the database architecture uses:

```text
DATABASE_URL
DATABASE_URL_ADMIN
```

Environment files and production credentials must never be committed to the repository.

> *Arquivos de ambiente e credenciais de produção nunca devem ser versionados no repositório.*


## Documentation

Additional technical documentation is available under:

```text
docs/
```

Current documentation includes:

```text
docs/database.md
docs/adr/
```

> *A documentação técnica complementar inclui o guia operacional do banco de dados e os registros formais de decisões arquiteturais.*


## Repository Role

This repository is responsible for Teo Logic Solutions' public-facing institutional platform and the digital experiences that belong to its business entry journey.

> *Este repositório é responsável pela plataforma institucional pública da Teo Logic Solutions e pelas experiências digitais pertencentes à sua jornada de entrada de negócios.*

Independent Teo Logic products and systems should maintain their own application and data boundaries.

> *Produtos e sistemas independentes da Teo Logic devem manter seus próprios limites de aplicação e dados.*


## Author

**Eduardo Teodoro**

Founder of Teo Logic Solutions and Senior Backend Java Developer focused on SAP Commerce Cloud, enterprise integrations, REST APIs, software architecture, automation, and artificial intelligence.

> *Fundador da Teo Logic Solutions e Desenvolvedor Backend Java Sênior com foco em SAP Commerce Cloud, integrações enterprise, APIs REST, arquitetura de software, automação e inteligência artificial.*

- LinkedIn: https://www.linkedin.com/in/epteodoro/
- GitHub: https://github.com/GHEPT


## Teo Logic Solutions

**Technology structured around business evolution.**

> ***Tecnologia estruturada em torno da evolução de negócios.***

https://teologic.com.br

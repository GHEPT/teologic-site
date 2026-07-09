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

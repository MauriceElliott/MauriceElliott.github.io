---
layout: post
title: "Maurice Elliott"
date: 2024-10-10 22:00:00 +0100
categories: Introduction
---

Personal details available upon request.

### Profile

I am a skilled Software and DevOps engineer with over 11 years experience. I am passionate about software, programming, and all things hand wrought in those spaces.

My main area of expertise is within the Microsoft stack, as I've spent a large amount of my career first developing .NET applications, and then supporting, building and deploying them, to now hosting, hardening and monitoring.

In my personal time I am developing a game in a program called [Picotron](https://www.lexaloffle.com/picotron.php), which uses Lua as its main development language and can be seen on [my Github](https://github.com/MauriceElliott/gut_wound). I am also in the process of learning [Zig](https://ziglang.org) as systems programming/non garbage collected languages are an area I have interest, but am woefully inexperienced in.

### DevOps Experience

I am an experienced DevOps engineer that has worked on many problems and solutions during my time in the space.

Initially, as my organisation was reluctant to migrate to the cloud, I worked on an automation system using Powershell to interact with [SCVMM](https://learn.microsoft.com/en-us/system-center/vmm/whats-new-in-vmm?view=sc-vmm-2022), called from CI in an on premise instance of Azure DevOps. The system ingested a json configuration file, and then created servers, configured the servers (installing binaries, runtimes etc based on the products needs.), updated load balancers, monitoring, created database users, updated deployment configuration and a whole plethora of other niche things required for our on premise hosting and deployment set up. It was a beast, so I ended up using Pester to run unit and integration tests.

Some time later we started moving our infrastructure to Azure. During this time I worked on creating [Packer](https://www.packer.io) images to provide stable, quickly available VM images to aid in recovery and easy configuration. I also used Powershell code to instantiate and bootstrap Managed SQL Server instances (pre the terraform provider having it available), as well as terraform configuration, pipelines, and deployments to make the process of migrating easily repeatable for all our products.

As an aside to this we also required a database restore system. I, with a colleague built a set of CI templates, again using Powershell, and the [Az Powershell module](https://learn.microsoft.com/en-us/powershell/azure/new-azureps-module-az?view=azps-12.3.0) to restore databases across subscriptions, as well as desensitise data, instantiate permissions, all while safeguarding from potential user error.

Around the same time I worked on autoscaling build and deployment agents to aid in the quick development cycle. We used [Grafana](https://grafana.com) as well as [Prometheus](https://prometheus.io/docs/introduction/overview/), and a custom windows service, and an Azure function. This set up would read the queue in ADO, export the data to Grafana, which was then read by Prometheus, which would then alert the Azure function when too many jobs were queued, which would then quickly spin up new agents to handle the load. We also made the functionality available via a webhook in Microsoft Teams for when developers knew they'd need the extra capacity.

In between all this I've done many other less desirable projects, lots of application support, bug finding, random bespoke Azure product automation, a painfully large amount of terraform and CI pipeline templates and definitions, dealing with windows server and SQL server oddities, as well as the many questionable decisions and eccentricities that have gone into creating a behemoth like Azure.

Over the last couple years I have mostly been working in Github and GCP, supporting a different section of our organisation to migrate from [Heroku](https://www.heroku.com) to [GKE](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview). This work has included the use of Helm charts, Docker containers, Github Actions, and a lot of work within the Linux ecosystem. This has given my work a new lease of life as the process of learning new technology has brought great joy to my day to day. Still having to use a windows computer I've been diving into WSL as my main terminal and interaction tool. I've also worked to bring some of the niceties mentioned above to GCP and Github actions, like autoscaling agents, and Packer images for VMs.
I've also very recently been working on automating the deployment of our network topology to make it easier to add extra spokes to the existing VWAN setup in Azure.

### Work History

**Senior DevOps Engineer - Telus Agriculture & Consumer Goods
September 2023 - Present (1y 2m)**

**Role Overview**: Slightly undefined role, I work in DevOps, but as the company has gone through a large amount of acquisitions and continues to acquire new organisations I have had to wear many DevOps adjacent hats to facilitate the needs of the organisation. See final section of my DevOps experience for more details.

**DevOps Engineer - Muddy Boots Software
October 2019 - September 2023 (4y)**

**Role Overview**: I moved from a software engineering role to a DevOps role as I had interest and passion in the area of CI and server automation, We started from some some cobbled together .Net form applications backed by a SQL server to a fully automated build and deployment system. Many other projects and work came and went in that time, quite often supporting the DevOps needs of Development teams, but also creating some pretty incredible and robust solutions, see DevOps experience for more details. During this time we went through a major acquisition and were brought under into the Telus AGCG fold.

**Full Stack Developer - Muddy Boots Software
November 2016 - October 2019 (3y)**

**Role Overview**: From my previous role at Coutts, I managed to gain some very minor experience in C# and the .NET stack, and due to that experience was able to land this role. During my time I worked on a few different applications, some using the MVC model, some using an Angular frontend with a REST API backend. I found myself more at home in the backend, but am glad for the front end experience as design and user interfaces/interaction have become a big part of my personal projects.

**Business Analyst Programmer - Coutts
July 2013 - November 2016 (3y 5m)**

**Role Overview**: I worked on a database driven application called [Avaloq](https://www.avaloq.com), creating tooling required to support the Credit/Lending operations of the bank. The role required an extensive knowledge of Avaloq, which was built on a Oracle database, and used a proprietary language based on PL/SQL.

---
layout: post
title: "Maurice Elliott"
date: 2024-10-10 22:00:00 +0100
categories: Introduction
---

Personal details available upon request.

### Profile

I am a skilled Software and DevOps engineer with over 11 years experience. I am passionate about software, programming, and all things hand-wrought in those spaces.

My main area of expertise is within the Microsoft stack, as I've spent my career first developing .NET applications, then supporting, to now hosting, hardening and monitoring.

In my personal time I am developing a game in a program called [Picotron](https://www.lexaloffle.com/picotron.php), which uses Lua as its main programming language, the source of which is available on [my GitHub](https://github.com/MauriceElliott/gut_wound). I am also in the process of learning [Zig](https://ziglang.org), as systems level programming languages are an area I have interest in.

### DevOps Experience

I am an experienced DevOps engineer that has worked on many problems and solutions during my time in the space.

I started as a software engineer, supporting the infrastructure team to migrate an existing .NET forms application backed by Powershell and a SQL sever, to Azure DevOps, so that the process of deploying could be automated using the release and build process available within ADO. I got my start with powershell during this time, and came up with a integration and testing process so as to avoid causing issues for the development teams.

Soon after, as my organisation was reluctant to migrate to the cloud, I worked on an automation system using Powershell to interact with [SCVMM](https://learn.microsoft.com/en-us/system-center/vmm/whats-new-in-vmm?view=sc-vmm-2022), called from CI in an on-premise instance of Azure DevOps. The system ingested a JSON file, and then created servers, configured the servers (installing binaries, runtimes etc based on the products needs), updated load balancers, monitored, created database users, updated deployment configuration and a whole plethora of other niche pieces required for our on-premise hosting and deployment set up. Due to the processes reach, it needed to be very robust, so I used [Pester](https://pester.dev) to run unit and integration tests.

Some time later we started moving our infrastructure to Azure. During this I worked on creating [Packer](https://www.packer.io) images to provide stable, quickly available VM disk images to aid in recovery and easy configuration. For this we came up with a robust solution where the images would feed into each other, a base image would feed into a web server, then feeding into a product specific web server. I designed and implemented this process to allow for easy cascading updates to core functionality while still allowing for product specific adjustments. I also used Powershell and ADO CI to instantiate and bootstrap Managed SQL Server instances (pre the terraform provider having it available), as well as terraform configuration, pipelines, and deployments to make the process of migrating easily repeatable for all our products.

As an aside to this we required a database restore system. I, with a colleague built a set of CI templates, again using Powershell, and the [Az Powershell module](https://learn.microsoft.com/en-us/powershell/azure/new-azureps-module-az?view=azps-12.3.0) to restore databases across subscriptions, as well as desensitise data, instantiate permissions, all while safeguarding against potential user error.

Around the same time I worked on autoscaling build and deployment agents to aid in the quick development cycle. We used [Grafana](https://grafana.com) as well as [Prometheus](https://prometheus.io/docs/introduction/overview/), a custom windows service, and an Azure function. This set up read the queue in ADO, exported the data to Grafana, read by Prometheus, which would then alert the Azure function when too many jobs were queued, then quickly spin up new agents to handle the load. We also made the functionality available via a webhook in Microsoft Teams for when developers knew they'd need the extra capacity.

Amongst these project, I have undertaken lots of application support, bug finding, bespoke Azure product automation, a huge amount of terraform and CI pipeline templates and definitions, windows server and SQL server oddities, as well as working around the many questionable decisions and eccentricities that come with using a behemoth like Azure.

Over the last couple years I have mostly been working in GitHub and GCP, supporting a different section of our organisation to migrate from [Heroku](https://www.heroku.com) to [GKE](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview). This work has included the use of Helm charts, Docker containers, Github Actions, and a lot of work within the Linux ecosystem. Still using a windows computer I've been diving into WSL as my main terminal and interaction tool, so as to broaden the OS's I'm comfortable in. I've also worked to bring some of the niceties mentioned above to GCP and Github actions, like autoscaling Linux agents, and Packer images for both Azure and GCP Linux VMs.
I've very recently been working on automating the deployment of our network topology to make it easier to add extra spokes to the existing VWAN setup in Azure.

### Work History

**Senior DevOps Engineer - Telus Agriculture & Consumer Goods -
September 2023 - Present (1y 2m)**

**Role Overview**: I work in DevOps, but as the company has gone through a large amount of acquisitions and continues to acquire new organisations I have had to wear many DevOps adjacent hats to facilitate the needs of the organisation. See final section of my DevOps experience for more details.

**DevOps Engineer - Muddy Boots Software -
October 2019 - September 2023 (4y)**

**Role Overview**: I moved from a software engineering role to a DevOps role as I had interest and passion in the area of CI and server automation. We started from an old outdated .NET forms application backed by a SQL server to a fully automated build and deployment system, executed and managed from within Azure DevOps. Many other projects came and went in this time, quite often supporting the DevOps needs of development teams, creating some incredible and robust solutions, see DevOps experience for more details. During this time the organisation went through a major acquisition and were brought into Telus AGCG.

**Full Stack Developer - Muddy Boots Software -
November 2016 - October 2019 (3y)**

**Role Overview**: From my previous role at Coutts, I managed to gain some minor experience in C# and the .NET stack, which gave me enough experience to be given a chance by Muddy Boots. I worked on a few different applications, some using the MVC model, some using an Angular frontend with a REST API backend.

**Business Analyst Programmer - Coutts -
July 2013 - November 2016 (3y 5m)**

**Role Overview**: I worked on a database driven application called [Avaloq](https://www.avaloq.com), creating tooling required to support the Credit/Lending operations of the bank. The role required an extensive knowledge of Avaloq, which was built on a Oracle database, and used a proprietary language based on PL/SQL.

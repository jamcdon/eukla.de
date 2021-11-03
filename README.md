![Themisto.dev Logo](./full-logo.png)

# Themisto.dev
> A cloud native web IDE for data scientists


## reference material:
 - [jupyterhub-docker-deploy](https://github.com/jupyterhub/jupyterhub-deploy-docker)
 - [official jupyterhub docker](https://hub.docker.com/r/jupyterhub/jupyterhub)
 - [jupyterhub docs](https://jupyterhub.readthedocs.io/en/stable/quickstart-docker.html)
 - [jupyterhub official micro k8s docs](https://zero-to-jupyterhub.readthedocs.io/en/latest/kubernetes/other-infrastructure/step-zero-microk8s.html)
 - [cocalc](https://github.com/sagemathinc/cocalc-docker)

 ## Project plans
 - [ ] build dockerfile MVP that can contain jupyterhub environment
   - [x] get base image minimally functioning
   - [ ] get user authentication protocols functioning
   - [ ] fix localhost redirect
 - [ ] build docker-compose.yml MVP that functions as a k8s worker node
 - [ ] purchase TLD
 - [ ] convert docker-compose structure to k8s structure
 - [ ] get jupyterhub instance functioning on microk8s
 - [ ] research different cloud solution pricing, functionality and models
 - [ ] transition from microk8s to cloud solution
 - [ ] build frontend
   - [ ] base
     - [ ] nav
     - [ ] content hold
     - [ ] footer
   - [ ] index
   - [ ] about us
   - [ ] solutions
   - [ ] pricing page
   - [ ] instance management page
   - [ ] instance page
 - [ ] build sql
   - [ ] store
     - user information
     - documents?
     - available resources
 - [ ] build api
 - [ ] connect frontend/instances to api
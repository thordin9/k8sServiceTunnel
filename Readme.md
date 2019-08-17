## k8sServiceTunnel

Provides a way to expose a dynamic k8s service using an ssh tunnel
to an external and untrusted host. 

Why? Benefits:
- Host can be untrusted as no k8s credentials need to be shared and connection is controlled from the client side (aka the k8s pod).  No secrets are found in the host receiving the service
- a service with a dynamic DNS can be shared/forwarded and will always be up to date as pods are to die and be replaced.
- Both sides are running in a docker container and are configurable by env vars.

***WIP***

Screenshots:

![Alt text](relative/path/to/img.jpg?raw=true "Title")
![Alt text](relative/path/to/img.jpg?raw=true "Title")
![Alt text](relative/path/to/img.jpg?raw=true "Title")


TODO:

- Document everything in here and in blog post.
- Provide helper scripts and yamls for k8s deployment.
- Build public docker images.



More info:

coming soon
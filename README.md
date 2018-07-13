# Docker Ansible

The regular tag (`latest`) doesn't have much different from `williamyeh/ansible:alpine3`, but the `aws` tag contains needed libraries for interacting with aws, and the	`kube` tag supports working with kubernetes via the openshift client and heptio-authenticator.

Just run something like:
```bash
docker run -it --rm -v $(pwd):/work tzrlk/ansible ansible-playbook site.yml
```


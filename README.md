# Docker Ansible

The regular tag (`latest`) doesn't have much different from `williamyeh/ansible:alpine3`, but the `aws` tag contains needed libraries including boto, openshift, etc.

Just run something like:
```bash
docker run -it --rm -v $(pwd):/work tzrlk/ansible ansible-playbook site.yml
```


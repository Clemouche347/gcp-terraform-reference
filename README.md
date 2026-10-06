# gcp-terraform-reference

Terraform reference implementation for core Google Cloud Platform resources, with CI checks on every change.

## Scope
- Cloud Storage, VPC and subnets, firewall rules, Compute Engine, service accounts and IAM
- Cost-aware defaults: small machine types, budget alerts, no idle resources
- Security by default: no state, secrets or credentials in the repository

## Roadmap
- [x] Cloud Storage bucket
- [ ] CI: fmt, validate, tflint
- [ ] VPC, subnet, firewall rules
- [ ] Compute Engine VM
- [ ] Service account and IAM
- [ ] Remote state in GCS
- [ ] CD with Workload Identity Federation

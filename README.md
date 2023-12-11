# github-via-vault-stack

_This is an example stack configuration for the private preview of Terraform Stacks. Language
constructs and features are subject to change given feedback received during this preview. Do not
use Stacks for production workloads at this time._

![github-via-vault-stack](https://github.com/hashicorp/github-via-vault-stack/assets/2430490/0cd021c1-7641-4441-99c8-6b61acb93e4b)

An example Terraform Stack that demonstrates pulling _static credentials_ from Vault or HCP Vault
(via OpenID Connect / Vault's JWT auth engine) for GitHub, to then provision a GitHub repository.

Two components are used:

* `secrets` uses a [data-only module](https://developer.hashicorp.com/terraform/language/modules/develop/composition#data-only-modules)
  to connect to Vault/HCP Vault and retrieve a pre-populated, static GitHub token.
* `github` uses the token pulled from the `secrets` component to create a dummy GitHub repository.

_We do not recommend using this example within production accounts. This example will incur [small]
costs if provisioned. Please remember to destroy the infrastructure after using this example._


## Usage

_Prerequisites: You must have a Terraform Cloud account with access to the private preview of
Terraform Stacks, a GitHub account, and an AWS account with Terraform Cloud configured as an OIDC
identity provider. Details of all of this are found in the provided Stacks User Guide._

1. **Configure Vault authentication**  (TODO: More details)
2. **Fork this repository** to your own GitHub account, such that you can edit this stack configuration
   for your purposes.
3. **Edit your forked stack configuration** and change `deployments.tfdeploy.hcl` to use the correct
   values.
4. **Create a new stack** in Terraform Cloud and connect it to your forked configuration repository.
5. **Provision away!**

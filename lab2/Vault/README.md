### Tool name and description
HashiCorp Vault. Software for distributed storage and acquisition of project secrets.
### Purpose and benefits
Purpose is to be a proxy for all the secrets (security keys, passwords), so that services would ask Vault for them. The key benefit is that passwords are not stored on repositories of the project, but on some external system.
### Key features and functionalities
Storing and managing secret keys, so that deployed applications would ask and acquire them in runtime.
### Use cases and examples 
For example, our backend uses secret key to integrate with our Postgres. The team would not like to store production database passwords in backend repo. Instead, whenever backend deploys, it goes to Vault and asks to get the most fresh secret key for Postgres.
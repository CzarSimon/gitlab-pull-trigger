# gitlab-pull-trigger
Webhook to trigger GitLab to pull a mirrored repository.

<hr/>

## Usage

Sending a string:

```yml
- name: Trigger GitLab
  uses: czarsimon/gitlab-pull-trigger@{SHA-1}
  env:
    PRIVATE_TOKEN: ${{ secrets.GITLAB_PRIVATE_TOKEN }}
    PROJECT_ID: 1234567
```

### Environment

The action is expecting a two environment variables.

* **`GITLAB_PRIVATE_TOKEN`** (**required**): Private token to authenticate towards the GitLab API.
* **`PROJECT_ID`** (**required**): Project id to trigger the webhook for.

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
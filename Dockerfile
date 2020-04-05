FROM debian:9.8-slim

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/czarsimon/gitlab-pull-trigger"
LABEL "homepage"="https://github.com/czarsimon/gitlab-pull-trigger"
LABEL "maintainer"="Simon Lindgren <simon.g.lindgren@gmail.com>"
LABEL "com.github.actions.name"="GitLab pull trigger actoni"
LABEL "com.github.actions.description"="Trigger GitLab to pull a mirrored repository"

# Install curl
RUN apt-get update && apt-get install -y curl

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]
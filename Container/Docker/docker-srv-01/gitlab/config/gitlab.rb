gitlab_rails['gitlab_shell_ssh_port'] = 2424

external_url 'http://gitlab.soniiit.net'

gitlab_rails['omniauth_providers'] = [
  {
    name: "openid_connect", # do not change this parameter
    label: "Autentik", # optional label for login button, defaults to "Openid Connect"
    icon: "https://goauthentik.io/img/icon.png",
    args: {
      name: "openid_connect",
      scope: ["openid","profile","email"],
      response_type: "code",
      issuer: "https://authentik.soniiit.net/application/o/gitlab/",
      discovery: true,
      client_auth_method: "query",
      uid_field: "preferred_username",
      send_scope_to_token_endpoint: "false",
      pkce: true,
      client_options: {
        identifier: "",
        secret: "",
        redirect_uri: "https://gitlab.soniiit.net/users/auth/openid_connect/callback"
      }
    }
  }

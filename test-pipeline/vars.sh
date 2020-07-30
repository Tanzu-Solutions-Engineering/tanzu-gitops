export CACERT=`cat "$(mkcert -CAROOT)"/rootCA.pem`
export PRIVATEKEY=$(cat ~/.ssh/concourse)
export ROLE_ID=$(vault read -field=role_id auth/approle/role/concourse/role-id)
export SECRET_ID=$(vault write -field=secret_id -f auth/approle/role/concourse/secret-id)
# Helm Charts

## Installation d'une nouvelle application

### Créer les fichiers de l'application

Exécuter les commandes suivantes en remplaçant `my-app` par le nom de l'application.

```
app=my-app
helm create ${app}
cd helm-charts/charts/${app}/templates
rm -rf tests
```

### Créer les fichiers des environnements de déploiement

Dans le dépôt `gitops-infra`. Exécuter les commandes suivantes en remplaçant `my-app` par le nom de l'application.

```
app=my-app
git clone git@github.com:GayaSystem/gitops-infra.git
cd gitops-infra/clusters/environments
mkdir -p dev/${app} staging/${app} prod/${app}
touch dev/${app}/values.yaml staging/${app}/values.yaml prod/${app}/values.yaml
```

# Helm Charts

## Liens utiles

* https://gerkelznik.github.io/provision-personal-helm-chart-repo/

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

## Déploiement

### Préparer Docker

1. Installer Docker Client
2. S'identifier sur Docker Hub

```
echo $DOCKER_PASS | docker login --password-stdin -u $USER@gayasystem.com dhi.io
```

3. Installer Traefik

```
helm upgrade --install reverse-proxy traefik/traefik \
  --namespace traefik --create-namespace \
  --set ingressClass.enabled=true \
  --set ingressClass.isDefaultClass=false \
  --set ingressClass.name=reverse-proxy \
  --set providers.kubernetesIngress.ingressClass=reverse-proxy \
  --set providers.kubernetesCRD.ingressClass=reverse-proxy \
  --set service.type=LoadBalancer \
  --set ports.web.exposedPort=80 \
  --set ports.websecure.exposedPort=443
```

### Construire l'image à tester

1. Aller dans le projet
2. Construire l'image

```
cd lewindigo
docker build . -t gayasystem/lewindigo:latest
```

### Déployer localement

```
helm upgrade --install lewindigo-dev ./lewindigo \
  --namespace lewindigo-dev \
  --create-namespace \
  --set environment=development
```

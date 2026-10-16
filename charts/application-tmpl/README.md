# application-tmpl

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

application-tmpl is a library Helm Chart for grouping common logics. This chart is not deployable by itself.

**Homepage:** <https://github.com/companyinfo/helm-charts/blob/main/charts/helmet>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.companyinfo.dev | helmet | 0.12.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exports.defaults.affinity | object | `{}` |  |
| exports.defaults.annotations | object | `{}` |  |
| exports.defaults.args | list | `[]` |  |
| exports.defaults.autoscaling.enabled | bool | `false` |  |
| exports.defaults.autoscaling.maxReplicas | int | `5` |  |
| exports.defaults.autoscaling.metrics | list | `[]` |  |
| exports.defaults.autoscaling.minReplicas | int | `3` |  |
| exports.defaults.autoscaling.targetCPU | int | `80` |  |
| exports.defaults.autoscaling.targetMemory | int | `80` |  |
| exports.defaults.clusterDomain | string | `"cluster.local"` |  |
| exports.defaults.command | list | `[]` |  |
| exports.defaults.commonAnnotations | object | `{}` |  |
| exports.defaults.commonLabels | object | `{}` |  |
| exports.defaults.configMap.annotations | object | `{}` |  |
| exports.defaults.configMap.data | object | `{}` |  |
| exports.defaults.configMap.labels | object | `{}` |  |
| exports.defaults.configMap.mountPath | string | `"/app/config"` |  |
| exports.defaults.configMap.mounted | bool | `false` |  |
| exports.defaults.configMap.subPath | string | `""` |  |
| exports.defaults.containerSecurityContext.enabled | bool | `false` |  |
| exports.defaults.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| exports.defaults.containerSecurityContext.runAsUser | int | `1001` |  |
| exports.defaults.cronjob.concurrencyPolicy | string | `"Allow"` |  |
| exports.defaults.cronjob.containers | list | `[]` |  |
| exports.defaults.cronjob.enabled | bool | `false` |  |
| exports.defaults.cronjob.initContainers | list | `[]` |  |
| exports.defaults.cronjob.nodeSelector | object | `{}` |  |
| exports.defaults.cronjob.podSecurityContext.enabled | bool | `false` |  |
| exports.defaults.cronjob.podSecurityContext.fsGroup | int | `0` |  |
| exports.defaults.cronjob.restartPolicy | string | `"OnFailure"` |  |
| exports.defaults.cronjob.schedule | string | `""` |  |
| exports.defaults.cronjob.successfulJobsHistoryLimit | int | `3` |  |
| exports.defaults.cronjob.tolerations | list | `[]` |  |
| exports.defaults.cronjob.volumes | list | `[]` |  |
| exports.defaults.envVars | string | `nil` |  |
| exports.defaults.envVarsConfigMap | list | `[]` |  |
| exports.defaults.envVarsSecret | list | `[]` |  |
| exports.defaults.extraVolumeMounts | list | `[]` |  |
| exports.defaults.extraVolumes | list | `[]` |  |
| exports.defaults.fullnameOverride | string | `""` |  |
| exports.defaults.global.compatibility.omitEmptySeLinuxOptions | bool | `false` |  |
| exports.defaults.global.compatibility.openshift.adaptSecurityContext | string | `"auto"` |  |
| exports.defaults.global.defaultStorageClass | string | `""` |  |
| exports.defaults.global.imagePullSecrets[0].name | string | `"ghcr-auth"` |  |
| exports.defaults.global.imageRegistry | string | `""` |  |
| exports.defaults.hostAliases | list | `[]` |  |
| exports.defaults.image.digest | string | `""` |  |
| exports.defaults.image.pullPolicy | string | `nil` |  |
| exports.defaults.image.pullSecrets | list | `[]` |  |
| exports.defaults.image.registry | string | `"ghcr.io"` |  |
| exports.defaults.image.repository | string | `"gayasystem"` |  |
| exports.defaults.image.tag | string | `"latest"` |  |
| exports.defaults.ingress.annotations[0]."traefik.ingress.kubernetes.io/router.entrypoints" | string | `"web"` |  |
| exports.defaults.ingress.annotations[1]."traefik.ingress.kubernetes.io/router.middlewares" | string | `"middleware-chain@kubernetescrd"` |  |
| exports.defaults.ingress.apiVersion | string | `""` |  |
| exports.defaults.ingress.enabled | bool | `true` |  |
| exports.defaults.ingress.existingSecret | string | `""` |  |
| exports.defaults.ingress.extraHosts | list | `[]` |  |
| exports.defaults.ingress.extraPaths | list | `[]` |  |
| exports.defaults.ingress.extraRules | list | `[]` |  |
| exports.defaults.ingress.extraTls | list | `[]` |  |
| exports.defaults.ingress.hostname | string | `"app.local"` |  |
| exports.defaults.ingress.ingressClassName | string | `"reverse-proxy"` |  |
| exports.defaults.ingress.path | string | `"/"` |  |
| exports.defaults.ingress.pathType | string | `"ImplementationSpecific"` |  |
| exports.defaults.ingress.secrets | list | `[]` |  |
| exports.defaults.ingress.selfSigned | bool | `false` |  |
| exports.defaults.ingress.tls | bool | `false` |  |
| exports.defaults.initContainers | list | `[]` |  |
| exports.defaults.kubeVersion | string | `""` |  |
| exports.defaults.labels | object | `{}` |  |
| exports.defaults.lifecycleHooks | object | `{}` |  |
| exports.defaults.livenessProbe.enabled | bool | `false` |  |
| exports.defaults.middleware.enabled | bool | `true` |  |
| exports.defaults.nameOverride | string | `""` |  |
| exports.defaults.namespaceOverride | string | `""` |  |
| exports.defaults.nodeAffinityPreset.key | string | `""` |  |
| exports.defaults.nodeAffinityPreset.type | string | `""` |  |
| exports.defaults.nodeAffinityPreset.values | list | `[]` |  |
| exports.defaults.nodeSelector | object | `{}` |  |
| exports.defaults.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| exports.defaults.persistence.annotations | object | `{}` |  |
| exports.defaults.persistence.dataSource | object | `{}` |  |
| exports.defaults.persistence.enabled | bool | `false` |  |
| exports.defaults.persistence.existingClaim | string | `""` |  |
| exports.defaults.persistence.mountPath | string | `"/data"` |  |
| exports.defaults.persistence.selector | object | `{}` |  |
| exports.defaults.persistence.size | string | `"8Gi"` |  |
| exports.defaults.persistence.storageClass | string | `""` |  |
| exports.defaults.persistence.subPath | string | `""` |  |
| exports.defaults.podAffinityPreset | string | `""` |  |
| exports.defaults.podAnnotations | object | `{}` |  |
| exports.defaults.podAntiAffinityPreset | string | `"soft"` |  |
| exports.defaults.podLabels | object | `{}` |  |
| exports.defaults.podMonitor.enabled | bool | `false` |  |
| exports.defaults.podMonitor.interval | string | `"30s"` |  |
| exports.defaults.podMonitor.jobLabel | string | `""` |  |
| exports.defaults.podMonitor.labels | object | `{}` |  |
| exports.defaults.podMonitor.metricRelabelings | list | `[]` |  |
| exports.defaults.podMonitor.namespace | string | `""` |  |
| exports.defaults.podMonitor.namespaceSelector | object | `{}` |  |
| exports.defaults.podMonitor.path | string | `"/metrics"` |  |
| exports.defaults.podMonitor.port | string | `"http"` |  |
| exports.defaults.podMonitor.relabelings | object | `{}` |  |
| exports.defaults.podMonitor.scrapeTimeout | string | `"10s"` |  |
| exports.defaults.podMonitor.selector | object | `{}` |  |
| exports.defaults.podRestartPolicy | string | `"Always"` |  |
| exports.defaults.podSecurityContext.enabled | bool | `false` |  |
| exports.defaults.podSecurityContext.fsGroup | int | `0` |  |
| exports.defaults.ports[0].containerPort | int | `80` |  |
| exports.defaults.ports[0].name | string | `"http"` |  |
| exports.defaults.ports[0].protocol | string | `"TCP"` |  |
| exports.defaults.priorityClassName | string | `""` |  |
| exports.defaults.readinessProbe.enabled | bool | `false` |  |
| exports.defaults.replicaCount | int | `1` |  |
| exports.defaults.resources.limits | object | `{}` |  |
| exports.defaults.resources.requests | object | `{}` |  |
| exports.defaults.revisionHistoryLimit | int | `10` |  |
| exports.defaults.schedulerName | string | `""` |  |
| exports.defaults.secret.annotations | object | `{}` |  |
| exports.defaults.secret.data | object | `{}` |  |
| exports.defaults.secret.labels | object | `{}` |  |
| exports.defaults.secret.stringData | object | `{}` |  |
| exports.defaults.secret.type | string | `"Opaque"` |  |
| exports.defaults.service.annotations | object | `{}` |  |
| exports.defaults.service.clusterIP | string | `""` |  |
| exports.defaults.service.externalTrafficPolicy | string | `"Cluster"` |  |
| exports.defaults.service.loadBalancerIP | string | `""` |  |
| exports.defaults.service.loadBalancerSourceRanges | list | `[]` |  |
| exports.defaults.service.ports[0].name | string | `"http"` |  |
| exports.defaults.service.ports[0].port | int | `80` |  |
| exports.defaults.service.ports[0].protocol | string | `"TCP"` |  |
| exports.defaults.service.ports[0].targetPort | string | `"http"` |  |
| exports.defaults.service.sessionAffinity | string | `"None"` |  |
| exports.defaults.service.type | string | `"ClusterIP"` |  |
| exports.defaults.serviceAccount.annotations | object | `{}` |  |
| exports.defaults.serviceAccount.automountServiceAccountToken | bool | `true` |  |
| exports.defaults.serviceAccount.create | bool | `true` |  |
| exports.defaults.serviceAccount.labels | object | `{}` |  |
| exports.defaults.serviceAccount.name | string | `""` |  |
| exports.defaults.serviceMonitor.annotations | object | `{}` |  |
| exports.defaults.serviceMonitor.enabled | bool | `false` |  |
| exports.defaults.serviceMonitor.honorLabels | bool | `false` |  |
| exports.defaults.serviceMonitor.interval | string | `""` |  |
| exports.defaults.serviceMonitor.jobLabel | string | `""` |  |
| exports.defaults.serviceMonitor.labels | object | `{}` |  |
| exports.defaults.serviceMonitor.metricRelabelings | list | `[]` |  |
| exports.defaults.serviceMonitor.namespace | string | `""` |  |
| exports.defaults.serviceMonitor.namespaceSelector | object | `{}` |  |
| exports.defaults.serviceMonitor.path | string | `"/metrics"` |  |
| exports.defaults.serviceMonitor.port | string | `"http"` |  |
| exports.defaults.serviceMonitor.relabelings | list | `[]` |  |
| exports.defaults.serviceMonitor.scrapeTimeout | string | `""` |  |
| exports.defaults.serviceMonitor.selector | object | `{}` |  |
| exports.defaults.sidecars | list | `[]` |  |
| exports.defaults.startupProbe.enabled | bool | `false` |  |
| exports.defaults.terminationGracePeriodSeconds | string | `""` |  |
| exports.defaults.tolerations | list | `[]` |  |
| exports.defaults.topologySpreadConstraints | list | `[]` |  |
| exports.defaults.updateStrategy.type | string | `"RollingUpdate"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)

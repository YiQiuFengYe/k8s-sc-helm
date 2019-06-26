{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "k8s-sc.name" -}}
{{- default "k8s-sc" .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "k8s-sc.fullname" -}}
{{- .Release.Name | default "k8s-sc" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* helm request labels */}}
{{- define "k8s-sc.labels" -}}
heritage: {{ .Release.Service }}
release: {{ .Release.Name }}
chart: {{ .Chart.Name }}
app: "{{ template "k8s-sc.name" . }}"
{{- end -}}

{{/* matchLabels */}}
{{- define "k8s-sc.matchLabels" -}}
release: {{.Release.Name}}
app: "{{ template "k8s-sc.name" . }}"
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "k8s-sc.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "k8s-sc.eureka" -}}
    {{- printf "%s-eureka" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.eureka_master" -}}
    {{- printf "%s-eureka-master" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.eureka_backup01" -}}
    {{- printf "%s-eureka-backup01" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.eureka_backup02" -}}
    {{- printf "%s-eureka-backup02" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.service_user" -}}
    {{- printf "%s-user" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.service_company" -}}
    {{- printf "%s-company" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.service_gateway" -}}
    {{- printf "%s-gateway" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.ui" -}}
    {{- printf "%s-ui" (include "k8s-sc.fullname" .) -}}
{{- end -}}

{{- define "k8s-sc.ingress" -}}
    {{- printf "%s-ingress" (include "k8s-sc.fullname" .) -}}
{{- end -}}
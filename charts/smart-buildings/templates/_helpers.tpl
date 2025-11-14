{{- define "smart-buildings.name" -}}
smart-buildings
{{- end }}

{{- define "smart-buildings.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "smart-buildings.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "smart-buildings.labels" -}}
app.kubernetes.io/name: {{ include "smart-buildings.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}
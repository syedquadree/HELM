# pass some custom name to the templates or the objects trying to create
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

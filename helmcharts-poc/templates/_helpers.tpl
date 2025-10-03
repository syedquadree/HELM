# pass some custom name to the templates or the objects trying to create
{{ - define "name" - }}
{{ - default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "_" }}
{{ - end -}}


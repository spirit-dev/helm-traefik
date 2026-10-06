{% comment %} {% comment %} {% comment %} ########
{% comment %} INTERNAL {% endcomment %}
{% comment %} ######## {% endcomment %}
{{/*
    Expand the name of the chart.
*/}}
{{- define "traefikInternal.name" -}}
{{- default .Chart.Name .Values.traefikContext.internal.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "traefikInternal.fullname" -}}
{{- .Values.traefikContext.internal.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Shared labels used for selector*/}}
{{/* This is an immutable field: this should not change between upgrade */}}
{{- define "traefikInternal.labelselector" -}}
app.kubernetes.io/name: {{ template "traefikInternal.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Shared labels used in metada */}}
{{- define "traefikInternal.labels" -}}
{{ include "traefikInternal.labelselector" . }}
helm.sh/chart: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{% comment %} ######## {% endcomment %}
{% comment %} EXTERNAL PRIVATE {% endcomment %}
{% comment %} ######## {% endcomment %}
{{/*
    Expand the name of the chart.
*/}}
{{- define "traefikExternalPrivate.name" -}}
{{- default .Chart.Name .Values.traefikContext.externalPrivate.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "traefikExternalPrivate.fullname" -}}
{{- .Values.traefikContext.externalPrivate.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Shared labels used for selector*/}}
{{/* This is an immutable field: this should not change between upgrade */}}
{{- define "traefikExternalPrivate.labelselector" -}}
app.kubernetes.io/name: {{ template "traefikExternalPrivate.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Shared labels used in metada */}}
{{- define "traefikExternalPrivate.labels" -}}
{{ include "traefikExternalPrivate.labelselector" . }}
helm.sh/chart: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{% comment %} ######## {% endcomment %}
{% comment %} EXTERNAL PUBLIC {% endcomment %}
{% comment %} ######## {% endcomment %}
{{/*
    Expand the name of the chart.
*/}}
{{- define "traefikExternalPublic.name" -}}
{{- default .Chart.Name .Values.traefikContext.externalPublic.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "traefikExternalPublic.fullname" -}}
{{- .Values.traefikContext.externalPublic.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Shared labels used for selector*/}}
{{/* This is an immutable field: this should not change between upgrade */}}
{{- define "traefikExternalPublic.labelselector" -}}
app.kubernetes.io/name: {{ template "traefikExternalPublic.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Shared labels used in metada */}}
{{- define "traefikExternalPublic.labels" -}}
{{ include "traefikExternalPublic.labelselector" . }}
helm.sh/chart: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.elasticPVCName" -}}
{{- if .Values.elasticsearch.persistence.existingClaim }}
{{- .Values.elasticsearch.persistence.existingClaim }}
{{- else }}
{{- printf "%s-elasticsearch" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.postgresqlPVCName" -}}
{{- if .Values.postgresql.persistence.existingClaim }}
{{- .Values.postgresql.persistence.existingClaim }}
{{- else }}
{{- printf "%s-postgresql" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

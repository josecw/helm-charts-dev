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
{{- define "argilla.postgresPVCName" -}}
{{- if .Values.postgres.persistence.existingClaim }}
{{- .Values.postgres.persistence.existingClaim }}
{{- else }}
{{- printf "%s-postgres" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

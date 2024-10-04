{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.elasticsearchPVCName" -}}
{{- if .Values.persistence.elasticsearchExistingClaim }}
{{- .Values.persistence.elasticsearchExistingClaim }}
{{- else if .Values.persistence.keepPVC }}
{{- printf "elasticsearch-%s" .Values.persistence.namePostfix | trunc 63 | trimSuffix "-" }}
{{- else  }}
{{- printf "elasticsearch-%s" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.postgresqlPVCName" -}}
{{- if .Values.persistence.postgresqlExistingClaim }}
{{- .Values.persistence.postgresqlExistingClaim }}
{{- else if .Values.persistence.keepPVC }}
{{- printf "postgresql-%s" .Values.persistence.namePostfix | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "postgresql-%s" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.argillaPVCName" -}}
{{- if .Values.persistence.argillaExistingClaim }}
{{- .Values.persistence.argillaExistingClaim }}
{{- else if .Values.persistence.keepPVC }}
{{- printf "server-%s" .Values.persistence.namePostfix | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "server-%s" (include "library-chart.fullname" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

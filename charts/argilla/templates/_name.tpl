{{/*
Uses the existing claim or creates a PVC name unique to each version of the Chart
*/}}
{{- define "argilla.pvcName" -}}
{{- if .Values.persistence.existingClaim }}
{{- .Values.persistence.existingClaim }}
{{- else }}
{{- printf "%s-%s-pvc" .Chart.Name .Chart.Version | replace "+" "-" | replace "." "-" | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end -}}

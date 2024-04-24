{{- define "opensearch.StrongPassword" -}}
{{- $strongPassword := (printf "%s%s"  .Values.security.password "aA0@") -}}
{{- printf $strongPassword -}}
{{- end -}}



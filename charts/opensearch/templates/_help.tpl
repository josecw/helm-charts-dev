{{- define "library-chart.StrongPassword" -}}
{{- $strongPassword := (printf "%s%s"  .Values.security.password "aA0@") -}}
{{- printf $strongPassword -}}
{{- end -}}


{{- define "library-chart.randomStrongPassword" -}}
{{- $specialCharacters := "!@#$%^&*()-_=+[]{}|;:',<.>/?`~" -}}
{{- $alea := randAlphaNum 8 -}}
{{- $password := (printf "%s-%s"  $alea "aA0@!") -}}
{{- printf $password -}}
{{- end -}}


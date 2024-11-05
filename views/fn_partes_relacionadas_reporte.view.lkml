view: fn_partes_relacionadas_reporte {
  sql_table_name: bd_ic_cliente.fn_partes_relacionadas_reporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: apellido1_parte_relacionada {
    type: string
    sql: ${TABLE}.apellido1_parte_relacionada ;;
  }
  dimension: apellido2_parte_relacionada {
    type: string
    sql: ${TABLE}.apellido2_parte_relacionada ;;
  }
  dimension: cedula_representante {
    type: string
    sql: ${TABLE}.cedula_representante ;;
  }
  dimension: cedula_representante_suplente {
    type: string
    sql: ${TABLE}.cedula_representante_suplente ;;
  }
  dimension: expuesto_politicamente {
    type: string
    sql: ${TABLE}.expuesto_politicamente ;;
  }
  dimension: expuesto_politicamente_representante_legal {
    type: string
    sql: ${TABLE}.expuesto_politicamente_representante_legal ;;
  }
  dimension: expuesto_politicamente_representante_suplente {
    type: string
    sql: ${TABLE}.expuesto_politicamente_representante_suplente ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_empresa {
    type: string
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: ipa_tipo_persona_representante_legal {
    type: string
    sql: ${TABLE}.ipa_tipo_persona_representante_legal ;;
  }
  dimension: ipa_tipo_persona_representante_suplente {
    type: string
    sql: ${TABLE}.ipa_tipo_persona_representante_suplente ;;
  }
  dimension: mi_descripcion {
    type: string
    sql: ${TABLE}.mi_descripcion ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nombre1_parte_relacionada {
    type: string
    sql: ${TABLE}.nombre1_parte_relacionada ;;
  }
  dimension: nombre2_parte_relacionada {
    type: string
    sql: ${TABLE}.nombre2_parte_relacionada ;;
  }
  dimension: nombre_pais {
    type: string
    sql: ${TABLE}.nombre_pais ;;
  }
  dimension: nombre_representante {
    type: string
    sql: ${TABLE}.nombre_representante ;;
  }
  dimension: nombre_representante_suplente {
    type: string
    sql: ${TABLE}.nombre_representante_suplente ;;
  }
  dimension: pa_id_tipo_idetificacion {
    type: string
    sql: ${TABLE}.pa_id_tipo_idetificacion ;;
  }
  dimension: pa_nomb_accionista {
    type: string
    sql: ${TABLE}.pa_nomb_accionista ;;
  }
  dimension: pa_num_identidad {
    type: string
    sql: ${TABLE}.pa_num_identidad ;;
  }
  dimension: pa_tipo_idetificacion {
    type: string
    sql: ${TABLE}.pa_tipo_idetificacion ;;
  }
  dimension: paia_porcentaje {
    type: string
    sql: ${TABLE}.paia_porcentaje ;;
  }
  dimension: paia_tipo_parte_relacionada {
    type: string
    sql: ${TABLE}.paia_tipo_parte_relacionada ;;
  }
  dimension: paia_tipo_persona {
    type: string
    sql: ${TABLE}.paia_tipo_persona ;;
  }
  dimension: pais_representante_legal {
    type: string
    sql: ${TABLE}.pais_representante_legal ;;
  }
  dimension: pais_representante_suplente {
    type: string
    sql: ${TABLE}.pais_representante_suplente ;;
  }
  dimension: presente_en_otro_proveedor {
    type: string
    sql: ${TABLE}.presente_en_otro_proveedor ;;
  }
  dimension: presente_en_otro_proveedor_representantes {
    type: string
    sql: ${TABLE}.presente_en_otro_proveedor_representantes ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: tipo_documento_rep_legal_cenit {
    type: string
    sql: ${TABLE}.tipo_documento_rep_legal_cenit ;;
  }
  dimension: tipo_documento_rep_legal_suplente_cenit {
    type: string
    sql: ${TABLE}.tipo_documento_rep_legal_suplente_cenit ;;
  }
  dimension: tipo_identificacion_representante_legal {
    type: string
    sql: ${TABLE}.tipo_identificacion_representante_legal ;;
  }
  dimension: tipo_identificacion_representante_suplente {
    type: string
    sql: ${TABLE}.tipo_identificacion_representante_suplente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

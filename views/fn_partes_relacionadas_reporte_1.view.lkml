view: fn_partes_relacionadas_reporte_1 {
  sql_table_name: bd_ic_cliente.fn_partes_relacionadas_reporte_1 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cedula_representante {
    type: string
    sql: ${TABLE}.cedula_representante ;;
  }
  dimension: cedula_representante_suplente {
    type: string
    sql: ${TABLE}.cedula_representante_suplente ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_empresa {
    type: string
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: mi_descripcion {
    type: string
    sql: ${TABLE}.mi_descripcion ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
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
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: tipo_documento_rep_legal {
    type: string
    sql: ${TABLE}.tipo_documento_rep_legal ;;
  }
  dimension: tipo_documento_rep_legal_suplente {
    type: string
    sql: ${TABLE}.tipo_documento_rep_legal_suplente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: evaluacion_contratos_asociados {
  sql_table_name: bd_ic_cliente.evaluacion_contratos_asociados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: id_evaluacion {
    type: number
    sql: ${TABLE}.id_evaluacion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: objeto_contrato {
    type: string
    sql: ${TABLE}.objeto_contrato ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

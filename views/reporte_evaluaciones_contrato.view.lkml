view: reporte_evaluaciones_contrato {
  sql_table_name: bd_ic_cliente.reporte_evaluaciones_contrato ;;

  dimension: clase_evaluacion {
    type: string
    sql: ${TABLE}.clase_evaluacion ;;
  }
  dimension: contratista {
    type: string
    sql: ${TABLE}.contratista ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_evaluacion {
    type: string
    sql: ${TABLE}.fecha_evaluacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: usuario_evaluador {
    type: string
    sql: ${TABLE}.usuario_evaluador ;;
  }
  measure: count {
    type: count
  }
}

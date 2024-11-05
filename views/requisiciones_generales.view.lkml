view: requisiciones_generales {
  sql_table_name: bd_ic_cliente.requisiciones_generales ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: especificaciones {
    type: string
    sql: ${TABLE}.especificaciones ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: maestra_asignada {
    type: number
    sql: ${TABLE}.maestra_asignada ;;
  }
  dimension: numero_documento {
    type: number
    sql: ${TABLE}.numero_documento ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension_group: registro_fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_fecha ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  measure: count {
    type: count
  }
}

view: mst_centro_logistico {
  sql_table_name: bd_ic_cliente.mst_centro_logistico ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: codigo_postal {
    type: string
    sql: ${TABLE}.codigo_postal ;;
  }
  dimension: descripcion_dos {
    type: string
    sql: ${TABLE}.descripcion_dos ;;
  }
  dimension: descripcion_uno {
    type: string
    sql: ${TABLE}.descripcion_uno ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_centro_logistico {
    type: number
    sql: ${TABLE}.id_centro_logistico ;;
  }
  dimension: nombre_dos {
    type: string
    sql: ${TABLE}.nombre_dos ;;
  }
  dimension: nombre_uno {
    type: string
    sql: ${TABLE}.nombre_uno ;;
  }
  dimension: numero_centro_logistico {
    type: string
    sql: ${TABLE}.numero_centro_logistico ;;
  }
  dimension: poblacion {
    type: string
    sql: ${TABLE}.poblacion ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}

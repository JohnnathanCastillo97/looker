view: mst_unidad_medidas2 {
  sql_table_name: bd_ic_cliente.mst_unidad_medidas2 ;;

  dimension: decimales {
    type: yesno
    sql: ${TABLE}.decimales ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_medida {
    type: number
    sql: ${TABLE}.id_medida ;;
  }
  dimension: medida {
    type: string
    sql: ${TABLE}.medida ;;
  }
  dimension: um {
    type: string
    sql: ${TABLE}.um ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}

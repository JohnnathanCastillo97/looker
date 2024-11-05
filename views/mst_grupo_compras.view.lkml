view: mst_grupo_compras {
  sql_table_name: bd_ic_cliente.mst_grupo_compras ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
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
  dimension: grupo_compras {
    type: string
    sql: ${TABLE}.grupo_compras ;;
  }
  dimension: id_grupo_compras {
    type: number
    sql: ${TABLE}.id_grupo_compras ;;
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
view: mst_sap_ocensa {
  sql_table_name: bd_ic_cliente.mst_sap_ocensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: nombrealma {
    type: string
    sql: ${TABLE}.nombrealma ;;
  }
  dimension: tipo {
    type: number
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

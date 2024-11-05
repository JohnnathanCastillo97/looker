view: hocol_datos_precalificaciones_tiempo {
  sql_table_name: bd_ic_cliente.HOCOL_DATOS_PRECALIFICACIONES_TIEMPO ;;

  dimension: diferencia_activo {
    type: number
    sql: ${TABLE}.DIFERENCIA_ACTIVO ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.ESTADO ;;
  }
  measure: count {
    type: count
  }
}

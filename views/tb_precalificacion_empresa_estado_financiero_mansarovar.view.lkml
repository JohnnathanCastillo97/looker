view: tb_precalificacion_empresa_estado_financiero_mansarovar {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_estado_financiero_mansarovar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_preca_estado_financiero {
    type: number
    sql: ${TABLE}.id_preca_estado_financiero ;;
  }
  dimension: indice_capacidad_residual {
    type: number
    sql: ${TABLE}.indice_capacidad_residual ;;
  }
  dimension: nivel_riesgo {
    type: string
    sql: ${TABLE}.nivel_riesgo ;;
  }
  dimension: tipo_proveedor {
    type: string
    sql: ${TABLE}.tipo_proveedor ;;
  }
  dimension: zscore {
    type: number
    sql: ${TABLE}.zscore ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

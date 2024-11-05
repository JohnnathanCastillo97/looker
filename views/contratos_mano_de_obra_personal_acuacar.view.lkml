view: contratos_mano_de_obra_personal_acuacar {
  sql_table_name: bd_ic_cliente.contratos_mano_de_obra_personal_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }
  dimension: clave {
    type: yesno
    sql: ${TABLE}.clave ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}

view: solfin_tasa_valores_comfirming {
  sql_table_name: bd_ic_cliente.solfin_tasa_valores_comfirming ;;
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
  dimension: fee_admi {
    type: string
    sql: ${TABLE}.fee_admi ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: iva_suplos {
    type: string
    sql: ${TABLE}.iva_suplos ;;
  }
  dimension: tipo_tasa {
    type: string
    sql: ${TABLE}.tipo_tasa ;;
  }
  dimension: valor_financiado_final {
    type: string
    sql: ${TABLE}.valor_financiado_final ;;
  }
  dimension: valor_financiado_init {
    type: string
    sql: ${TABLE}.valor_financiado_init ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

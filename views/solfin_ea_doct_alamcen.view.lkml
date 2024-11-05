view: solfin_ea_doct_alamcen {
  sql_table_name: bd_ic_cliente.solfin_ea_doct_alamcen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
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
  dimension: id_doct_almacen {
    type: string
    sql: ${TABLE}.id_doct_almacen ;;
  }
  dimension: id_remesa {
    type: string
    sql: ${TABLE}.id_remesa ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: num_almacen {
    type: string
    sql: ${TABLE}.num_almacen ;;
  }
  dimension: num_remesa {
    type: string
    sql: ${TABLE}.num_remesa ;;
  }
  dimension: razon_social_prov {
    type: string
    sql: ${TABLE}.razon_social_prov ;;
  }
  dimension: valor_almacen {
    type: string
    sql: ${TABLE}.valor_almacen ;;
  }
  dimension: valor_remesa {
    type: string
    sql: ${TABLE}.valor_remesa ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

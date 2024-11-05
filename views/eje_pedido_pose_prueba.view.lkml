view: eje_pedido_pose_prueba {
  sql_table_name: bd_ic_cliente.Eje_Pedido_Pose_PRUEBA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: btext {
    type: string
    sql: ${TABLE}.Btext ;;
  }
  dimension: budat_mkpf {
    type: string
    sql: ${TABLE}.Budat_Mkpf ;;
  }
  dimension: bwart {
    type: string
    sql: ${TABLE}.Bwart ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: string
    sql: ${TABLE}.Ebelp ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: mblnr {
    type: string
    sql: ${TABLE}.Mblnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: menge {
    type: number
    sql: ${TABLE}.Menge ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: wrbtr {
    type: number
    sql: ${TABLE}.Wrbtr ;;
  }
  dimension: zeile {
    type: string
    sql: ${TABLE}.Zeile ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

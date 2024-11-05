view: corona_seguimiento_factura_old {
  sql_table_name: bd_ic_cliente.corona_seguimiento_factura_old ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: belnr {
    type: string
    sql: ${TABLE}.Belnr ;;
  }
  dimension: burks {
    type: string
    sql: ${TABLE}.Burks ;;
  }
  dimension: cpudt {
    type: string
    sql: ${TABLE}.Cpudt ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }
  dimension: dmbtr {
    type: number
    sql: ${TABLE}.Dmbtr ;;
  }
  dimension: edge_fc_rejreas {
    type: string
    sql: ${TABLE}.Edge_Fc_Rejreas ;;
  }
  dimension: einvid {
    type: string
    sql: ${TABLE}.Einvid ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: fdtag {
    type: string
    sql: ${TABLE}.FDTAG ;;
  }
  dimension: gen_status {
    type: string
    sql: ${TABLE}.Gen_status ;;
  }
  dimension: id_sender {
    type: string
    sql: ${TABLE}.Id_Sender ;;
  }
  dimension: in_date {
    type: string
    sql: ${TABLE}.In_date ;;
  }
  dimension: invoice_date {
    type: string
    sql: ${TABLE}.Invoice_Date ;;
  }
  dimension: invoice_id {
    type: string
    sql: ${TABLE}.Invoice_Id ;;
  }
  dimension: linfnr {
    type: string
    sql: ${TABLE}.Linfnr ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mindk {
    type: string
    sql: ${TABLE}.MINDK ;;
  }
  dimension: name_receiver {
    type: string
    sql: ${TABLE}.Name_receiver ;;
  }
  dimension: name_sender {
    type: string
    sql: ${TABLE}.Name_Sender ;;
  }
  dimension: paval {
    type: string
    sql: ${TABLE}.Paval ;;
  }
  dimension: pswbt {
    type: number
    sql: ${TABLE}.PSWBT ;;
  }
  dimension: pswsl {
    type: string
    sql: ${TABLE}.PSWSL ;;
  }
  dimension: recdoctype {
    type: string
    sql: ${TABLE}.Recdoctype ;;
  }
  dimension: stlect {
    type: number
    sql: ${TABLE}.stlect ;;
  }
  dimension: tot_amount {
    type: number
    sql: ${TABLE}.Tot_Amount ;;
  }
  dimension: zfbdt {
    type: string
    sql: ${TABLE}.Zfbdt ;;
  }
  dimension: zz_corfeccomp {
    type: string
    sql: ${TABLE}.ZZ_CORFECCOMP ;;
  }
  dimension: zz_corzterm {
    type: string
    sql: ${TABLE}.ZZ_CORZTERM ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

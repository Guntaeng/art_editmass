*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    OperatingSystem
Library    String
Library    DebugLibrary
Library    yaml
Resource    ../variables/config_art.robot
Resource    ../keywords/common_art.robot
Resource    ../keywords/Type_field_values/input_text.robot
Resource    ../keywords/Type_field_values/drop_down.robot
Resource    ../keywords/Type_field_values/check_box.robot
Variables    ../resources/field_A2.yaml    

*** Keywords ***
No. 1 Edit field name (A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${profitable_product.field}'
        Input text editmass row 1                          ${profitable_product.field}        ${profitable_product.value}               ${profitable_product.uuid}        
    ELSE IF    '${field}' == '${brand_type.field}'   
        Dropdown row 1                                     ${brand_type.field}                ${brand_type.value}                       ${brand_type.uuid}
    ELSE IF    '${field}' == '${seasonal_products.field}'   
        Check box month row 1                              ${seasonal_products.field}         ${seasonal_products.value}                ${seasonal_products.uuid}
    ELSE IF    '${field}' == '${search_remark.field}'   
        Input text editmass row 1                          ${search_remark.field}             ${search_remark.value}                    ${search_remark.uuid}
    ELSE IF    '${field}' == '${product_transform.field}'   
        Dropdown row 1                                     ${product_transform.field}                    ${product_transform.value}                ${product_transform.uuid}
    ELSE IF    '${field}' == '${product_detail.field}'   
        Input text editmass row 1                          ${product_detail.field}            ${product_detail.value}                   ${product_detail.uuid}
    ELSE IF    '${field}' == '${sales_period.field}'   
        Check box month row 1                              ${sales_period.field}                   ${sales_period.value}                     ${sales_period.uuid}
    ELSE IF    '${field}' == '${warranty_terms.field}'   
        Input text editmass row 1 (section14)              ${warranty_terms.field}            ${warranty_terms.value}                   ${warranty_terms.uuid}
    ELSE IF    '${field}' == '${old_article.field}'   
        Input text editmass row 1                          ${old_article.field}               ${old_article.value}                      ${old_article.uuid}
    ELSE IF    '${field}' == '${recommended_minimum.field}'   
        Input text editmass row 1 (day warranty)           ${recommended_minimum.field}       ${recommended_minimum.value}              ${recommended_minimum.uuid}
    ELSE IF    '${field}' == '${customs_tariff.field}'   
        Input text editmass row 1                          ${customs_tariff.field}            ${customs_tariff.value}                   ${customs_tariff.uuid}
    ELSE IF    '${field}' == '${components.field}'   
        Input text editmass row 1                          ${components.field}                ${components.value}                       ${components.uuid}           
    ELSE IF    '${field}' == '${content_unit.field}'   
        Dropdown row 1                                     ${content_unit.field}              ${content_unit.value}                     ${content_unit.uuid}                   
    ELSE IF    '${field}' == '${country_of_region.field}'   
        Dropdown row 1                                     ${country_of_region.field}         ${country_of_region.value}                ${country_of_region.uuid}
    ELSE IF    '${field}' == '${first_sale_date.field}'   
        Input text editmass row 1                          ${first_sale_date.field}           ${first_sale_date.value}                  ${first_sale_date.uuid}
    ELSE IF    '${field}' == '${gross_contents.field}'   
        Input text editmass row 1                          ${gross_contents.field}            ${gross_contents.value}                   ${gross_contents.uuid}
    ELSE IF    '${field}' == '${hazardous_no.field}'   
        Input text editmass row 1                          ${hazardous_no.field}              ${hazardous_no.value}                     ${hazardous_no.uuid}
    ELSE IF    '${field}' == '${hb_nonhb.field}'   
        Dropdown row 1                                     ${hb_nonhb.field}                  ${hb_nonhb.value}                         ${hb_nonhb.uuid}
    ELSE IF    '${field}' == '${production.field}'   
        Dropdown row 1                                     ${production.field}                ${production.value}                       ${production.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 1                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${merchandise_category3.field}'   
        Dropdown row 1                                     ${merchandise_category3.field}     ${merchandise_category3.value}            ${merchandise_category3.uuid}
    ELSE IF    '${field}' == '${net_contents.field}'   
        Dropdown row 1                                     ${net_contents.field}              ${net_contents.value}                     ${net_contents.uuid}
    ELSE IF    '${field}' == '${price_band_cat.field}'   
        Dropdown row 1                                     ${price_band_cat.field}            ${price_band_cat.value}                   ${price_band_cat.uuid}
    ELSE IF    '${field}' == '${regions_origin.field}'   
        Dropdown row 1                                     ${regions_origin.field}            ${regions_origin.value}                   ${regions_origin.uuid}
    ELSE IF    '${field}' == '${rem_shelf_life.field}'   
        Input text editmass row 1 (day warranty)           ${rem_shelf_life.field}            ${rem_shelf_life.value}                   ${rem_shelf_life.uuid}
    ELSE IF    '${field}' == '${repack.field}'   
        Dropdown row 1                                     ${repack.field}                    ${repack.value}                           ${repack.uuid}
    ELSE IF    '${field}' == '${search_word.field}'   
        Input text editmass row 1                          ${search_word.field}               ${search_word.value}                      ${search_word.uuid}
    ELSE IF    '${field}' == '${site_artl_status.field}'   
        Dropdown row 1                                     ${site_artl_status.field}          ${site_artl_status.value}                 ${site_artl_status.uuid}
    ELSE IF    '${field}' == '${tax_class.field}'   
        Dropdown row 1                                     ${tax_class.field}                 ${tax_class.value}                        ${tax_class.uuid}
    ELSE IF    '${field}' == '${temperature.field}'   
        Input text editmass row 1 (day warranty)           ${temperature.field}               ${temperature.value}                      ${temperature.uuid}
    ELSE IF    '${field}' == '${name_th.field}'   
        Input text editmass row 1                          ${name_th.field}                   ${name_th.value}                          ${name_th.uuid}
    ELSE IF    '${field}' == '${tot_shelf_life.field}'   
        Input text editmass row 1 (day warranty)           ${tot_shelf_life.field}            ${tot_shelf_life.value}                   ${tot_shelf_life.uuid}
    ELSE IF    '${field}' == '${tradmark.field}'   
        Dropdown row 1                                     ${tradmark.field}                  ${tradmark.value}                         ${tradmark.uuid}
    END

No. 2 Edit field name (A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${profitable_product.field}'
        Input text editmass row 2                          ${profitable_product.field}        ${profitable_product.value}               ${profitable_product.uuid}        
    ELSE IF    '${field}' == '${brand_type.field}'   
        Dropdown row 2                                     ${brand_type.field}                ${brand_type.value}                       ${brand_type.uuid}
    ELSE IF    '${field}' == '${seasonal_products.field}'   
        Check box month row 2                              ${seasonal_products.field}         ${seasonal_products.value}                ${seasonal_products.uuid}
    ELSE IF    '${field}' == '${search_remark.field}'   
        Input text editmass row 2                          ${search_remark.field}             ${search_remark.value}                    ${search_remark.uuid}
    ELSE IF    '${field}' == '${product_transform.field}'   
        Dropdown row 2                                     ${product_transform.field}                    ${product_transform.value}                ${product_transform.uuid}
    ELSE IF    '${field}' == '${product_detail.field}'   
        Input text editmass row 2                          ${product_detail.field}            ${product_detail.value}                   ${product_detail.uuid}
    ELSE IF    '${field}' == '${sales_period.field}'   
        Check box month row 2                              ${sales_period.field}                   ${sales_period.value}                     ${sales_period.uuid}
    ELSE IF    '${field}' == '${warranty_terms.field}'   
        Input text editmass row 2 (section14)              ${warranty_terms.field}            ${warranty_terms.value}                   ${warranty_terms.uuid}
    ELSE IF    '${field}' == '${old_article.field}'   
        Input text editmass row 2                          ${old_article.field}               ${old_article.value}                      ${old_article.uuid}
    ELSE IF    '${field}' == '${recommended_minimum.field}'   
        Input text editmass row 2 (day warranty)           ${recommended_minimum.field}       ${recommended_minimum.value}              ${recommended_minimum.uuid}
    ELSE IF    '${field}' == '${customs_tariff.field}'   
        Input text editmass row 2                          ${customs_tariff.field}            ${customs_tariff.value}                   ${customs_tariff.uuid}
    ELSE IF    '${field}' == '${components.field}'   
        Input text editmass row 2                          ${components.field}                ${components.value}                       ${components.uuid}           
    ELSE IF    '${field}' == '${content_unit.field}'   
        Dropdown row 2                                     ${content_unit.field}              ${content_unit.value}                     ${content_unit.uuid}                   
    ELSE IF    '${field}' == '${country_of_region.field}'   
        Dropdown row 2                                     ${country_of_region.field}         ${country_of_region.value}                ${country_of_region.uuid}
    ELSE IF    '${field}' == '${first_sale_date.field}'   
        Input text editmass row 2                          ${first_sale_date.field}           ${first_sale_date.value}                  ${first_sale_date.uuid}
    ELSE IF    '${field}' == '${gross_contents.field}'   
        Input text editmass row 2                          ${gross_contents.field}            ${gross_contents.value}                   ${gross_contents.uuid}
    ELSE IF    '${field}' == '${hazardous_no.field}'   
        Input text editmass row 2                          ${hazardous_no.field}              ${hazardous_no.value}                     ${hazardous_no.uuid}
    ELSE IF    '${field}' == '${hb_nonhb.field}'   
        Dropdown row 2                                     ${hb_nonhb.field}                  ${hb_nonhb.value}                         ${hb_nonhb.uuid}
    ELSE IF    '${field}' == '${production.field}'   
        Dropdown row 2                                     ${production.field}                ${production.value}                       ${production.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 2                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${merchandise_category3.field}'   
        Dropdown row 2                                     ${merchandise_category3.field}     ${merchandise_category3.value}            ${merchandise_category3.uuid}
    ELSE IF    '${field}' == '${net_contents.field}'   
        Dropdown row 2                                     ${net_contents.field}              ${net_contents.value}                     ${net_contents.uuid}
    ELSE IF    '${field}' == '${price_band_cat.field}'   
        Dropdown row 2                                     ${price_band_cat.field}            ${price_band_cat.value}                   ${price_band_cat.uuid}
    ELSE IF    '${field}' == '${regions_origin.field}'   
        Dropdown row 2                                     ${regions_origin.field}            ${regions_origin.value}                   ${regions_origin.uuid}
    ELSE IF    '${field}' == '${rem_shelf_life.field}'   
        Input text editmass row 2 (day warranty)           ${rem_shelf_life.field}            ${rem_shelf_life.value}                   ${rem_shelf_life.uuid}
    ELSE IF    '${field}' == '${repack.field}'   
        Dropdown row 2                                     ${repack.field}                    ${repack.value}                           ${repack.uuid}
    ELSE IF    '${field}' == '${search_word.field}'   
        Input text editmass row 2                          ${search_word.field}               ${search_word.value}                      ${search_word.uuid}
    ELSE IF    '${field}' == '${site_artl_status.field}'   
        Dropdown row 2                                     ${site_artl_status.field}          ${site_artl_status.value}                 ${site_artl_status.uuid}
    ELSE IF    '${field}' == '${tax_class.field}'   
        Dropdown row 2                                     ${tax_class.field}                 ${tax_class.value}                        ${tax_class.uuid}
    ELSE IF    '${field}' == '${temperature.field}'   
        Input text editmass row 2 (day warranty)           ${temperature.field}               ${temperature.value}                      ${temperature.uuid}
    ELSE IF    '${field}' == '${name_th.field}'   
        Input text editmass row 2                          ${name_th.field}                   ${name_th.value}                          ${name_th.uuid}
    ELSE IF    '${field}' == '${tot_shelf_life.field}'   
        Input text editmass row 2 (day warranty)           ${tot_shelf_life.field}            ${tot_shelf_life.value}                   ${tot_shelf_life.uuid}
    ELSE IF    '${field}' == '${tradmark.field}'   
        Dropdown row 2                                     ${tradmark.field}                  ${tradmark.value}                         ${tradmark.uuid}
    END

No. 3 Edit field name (A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${profitable_product.field}'
        Input text editmass row 3                          ${profitable_product.field}        ${profitable_product.value}               ${profitable_product.uuid}        
    ELSE IF    '${field}' == '${brand_type.field}'   
        Dropdown row 3                                     ${brand_type.field}                ${brand_type.value}                       ${brand_type.uuid}
    ELSE IF    '${field}' == '${seasonal_products.field}'   
        Check box month row 3                              ${seasonal_products.field}         ${seasonal_products.value}                ${seasonal_products.uuid}
    ELSE IF    '${field}' == '${search_remark.field}'   
        Input text editmass row 3                          ${search_remark.field}             ${search_remark.value}                    ${search_remark.uuid}
    ELSE IF    '${field}' == '${product_transform.field}'   
        Dropdown row 3                                     ${product_transform.field}                    ${product_transform.value}                ${product_transform.uuid}
    ELSE IF    '${field}' == '${product_detail.field}'   
        Input text editmass row 3                          ${product_detail.field}            ${product_detail.value}                   ${product_detail.uuid}
    ELSE IF    '${field}' == '${sales_period.field}'   
        Check box month row 3                              ${sales_period.field}                   ${sales_period.value}                     ${sales_period.uuid}
    ELSE IF    '${field}' == '${warranty_terms.field}'   
        Input text editmass row 3 (section14)              ${warranty_terms.field}            ${warranty_terms.value}                   ${warranty_terms.uuid}
    ELSE IF    '${field}' == '${old_article.field}'   
        Input text editmass row 3                          ${old_article.field}               ${old_article.value}                      ${old_article.uuid}
    ELSE IF    '${field}' == '${recommended_minimum.field}'   
        Input text editmass row 3 (day warranty)           ${recommended_minimum.field}       ${recommended_minimum.value}              ${recommended_minimum.uuid}
    ELSE IF    '${field}' == '${customs_tariff.field}'   
        Input text editmass row 3                          ${customs_tariff.field}            ${customs_tariff.value}                   ${customs_tariff.uuid}
    ELSE IF    '${field}' == '${components.field}'   
        Input text editmass row 3                          ${components.field}                ${components.value}                       ${components.uuid}           
    ELSE IF    '${field}' == '${content_unit.field}'   
        Dropdown row 3                                     ${content_unit.field}              ${content_unit.value}                     ${content_unit.uuid}                   
    ELSE IF    '${field}' == '${country_of_region.field}'   
        Dropdown row 3                                     ${country_of_region.field}         ${country_of_region.value}                ${country_of_region.uuid}
    ELSE IF    '${field}' == '${first_sale_date.field}'   
        Input text editmass row 3                          ${first_sale_date.field}           ${first_sale_date.value}                  ${first_sale_date.uuid}
    ELSE IF    '${field}' == '${gross_contents.field}'   
        Input text editmass row 3                          ${gross_contents.field}            ${gross_contents.value}                   ${gross_contents.uuid}
    ELSE IF    '${field}' == '${hazardous_no.field}'   
        Input text editmass row 3                          ${hazardous_no.field}              ${hazardous_no.value}                     ${hazardous_no.uuid}
    ELSE IF    '${field}' == '${hb_nonhb.field}'   
        Dropdown row 3                                     ${hb_nonhb.field}                  ${hb_nonhb.value}                         ${hb_nonhb.uuid}
    ELSE IF    '${field}' == '${production.field}'   
        Dropdown row 3                                     ${production.field}                ${production.value}                       ${production.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 3                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${merchandise_category3.field}'   
        Dropdown row 3                                     ${merchandise_category3.field}     ${merchandise_category3.value}            ${merchandise_category3.uuid}
    ELSE IF    '${field}' == '${net_contents.field}'   
        Dropdown row 3                                     ${net_contents.field}              ${net_contents.value}                     ${net_contents.uuid}
    ELSE IF    '${field}' == '${price_band_cat.field}'   
        Dropdown row 3                                     ${price_band_cat.field}            ${price_band_cat.value}                   ${price_band_cat.uuid}
    ELSE IF    '${field}' == '${regions_origin.field}'   
        Dropdown row 3                                     ${regions_origin.field}            ${regions_origin.value}                   ${regions_origin.uuid}
    ELSE IF    '${field}' == '${rem_shelf_life.field}'   
        Input text editmass row 3 (day warranty)           ${rem_shelf_life.field}            ${rem_shelf_life.value}                   ${rem_shelf_life.uuid}
    ELSE IF    '${field}' == '${repack.field}'   
        Dropdown row 3                                     ${repack.field}                    ${repack.value}                           ${repack.uuid}
    ELSE IF    '${field}' == '${search_word.field}'   
        Input text editmass row 3                          ${search_word.field}               ${search_word.value}                      ${search_word.uuid}
    ELSE IF    '${field}' == '${site_artl_status.field}'   
        Dropdown row 3                                     ${site_artl_status.field}          ${site_artl_status.value}                 ${site_artl_status.uuid}
    ELSE IF    '${field}' == '${tax_class.field}'   
        Dropdown row 3                                     ${tax_class.field}                 ${tax_class.value}                        ${tax_class.uuid}
    ELSE IF    '${field}' == '${temperature.field}'   
        Input text editmass row 3 (day warranty)           ${temperature.field}               ${temperature.value}                      ${temperature.uuid}
    ELSE IF    '${field}' == '${name_th.field}'   
        Input text editmass row 3                          ${name_th.field}                   ${name_th.value}                          ${name_th.uuid}
    ELSE IF    '${field}' == '${tot_shelf_life.field}'   
        Input text editmass row 3 (day warranty)           ${tot_shelf_life.field}            ${tot_shelf_life.value}                   ${tot_shelf_life.uuid}
    ELSE IF    '${field}' == '${tradmark.field}'   
        Dropdown row 3                                     ${tradmark.field}                  ${tradmark.value}                         ${tradmark.uuid}
    END


No. 4 Edit field name (A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${profitable_product.field}'
        Input text editmass row 4                          ${profitable_product.field}        ${profitable_product.value}               ${profitable_product.uuid}        
    ELSE IF    '${field}' == '${brand_type.field}'   
        Dropdown row 4                                     ${brand_type.field}                ${brand_type.value}                       ${brand_type.uuid}
    ELSE IF    '${field}' == '${seasonal_products.field}'   
        Check box month row 4                              ${seasonal_products.field}         ${seasonal_products.value}                ${seasonal_products.uuid}
    ELSE IF    '${field}' == '${search_remark.field}'   
        Input text editmass row 4                          ${search_remark.field}             ${search_remark.value}                    ${search_remark.uuid}
    ELSE IF    '${field}' == '${product_transform.field}'   
        Dropdown row 4                                     ${product_transform.field}                    ${product_transform.value}                ${product_transform.uuid}
    ELSE IF    '${field}' == '${product_detail.field}'   
        Input text editmass row 4                          ${product_detail.field}            ${product_detail.value}                   ${product_detail.uuid}
    ELSE IF    '${field}' == '${sales_period.field}'   
        Check box month row 4                              ${sales_period.field}                   ${sales_period.value}                     ${sales_period.uuid}
    ELSE IF    '${field}' == '${warranty_terms.field}'   
        Input text editmass row 4 (section14)              ${warranty_terms.field}            ${warranty_terms.value}                   ${warranty_terms.uuid}
    ELSE IF    '${field}' == '${old_article.field}'   
        Input text editmass row 4                          ${old_article.field}               ${old_article.value}                      ${old_article.uuid}
    ELSE IF    '${field}' == '${recommended_minimum.field}'   
        Input text editmass row 4 (day warranty)           ${recommended_minimum.field}       ${recommended_minimum.value}              ${recommended_minimum.uuid}
    ELSE IF    '${field}' == '${customs_tariff.field}'   
        Input text editmass row 4                          ${customs_tariff.field}            ${customs_tariff.value}                   ${customs_tariff.uuid}
    ELSE IF    '${field}' == '${components.field}'   
        Input text editmass row 4                          ${components.field}                ${components.value}                       ${components.uuid}           
    ELSE IF    '${field}' == '${content_unit.field}'   
        Dropdown row 4                                     ${content_unit.field}              ${content_unit.value}                     ${content_unit.uuid}                   
    ELSE IF    '${field}' == '${country_of_region.field}'   
        Dropdown row 4                                     ${country_of_region.field}         ${country_of_region.value}                ${country_of_region.uuid}
    ELSE IF    '${field}' == '${first_sale_date.field}'   
        Input text editmass row 4                          ${first_sale_date.field}           ${first_sale_date.value}                  ${first_sale_date.uuid}
    ELSE IF    '${field}' == '${gross_contents.field}'   
        Input text editmass row 4                          ${gross_contents.field}            ${gross_contents.value}                   ${gross_contents.uuid}
    ELSE IF    '${field}' == '${hazardous_no.field}'   
        Input text editmass row 4                          ${hazardous_no.field}              ${hazardous_no.value}                     ${hazardous_no.uuid}
    ELSE IF    '${field}' == '${hb_nonhb.field}'   
        Dropdown row 4                                     ${hb_nonhb.field}                  ${hb_nonhb.value}                         ${hb_nonhb.uuid}
    ELSE IF    '${field}' == '${production.field}'   
        Dropdown row 4                                     ${production.field}                ${production.value}                       ${production.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 4                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 4                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${net_contents.field}'   
        Dropdown row 4                                     ${net_contents.field}              ${net_contents.value}                     ${net_contents.uuid}
    ELSE IF    '${field}' == '${price_band_cat.field}'   
        Dropdown row 4                                     ${price_band_cat.field}            ${price_band_cat.value}                   ${price_band_cat.uuid}
    ELSE IF    '${field}' == '${regions_origin.field}'   
        Dropdown row 4                                     ${regions_origin.field}            ${regions_origin.value}                   ${regions_origin.uuid}
    ELSE IF    '${field}' == '${rem_shelf_life.field}'   
        Input text editmass row 4 (day warranty)           ${rem_shelf_life.field}            ${rem_shelf_life.value}                   ${rem_shelf_life.uuid}
    ELSE IF    '${field}' == '${repack.field}'   
        Dropdown row 4                                     ${repack.field}                    ${repack.value}                           ${repack.uuid}
    ELSE IF    '${field}' == '${search_word.field}'   
        Input text editmass row 4                          ${search_word.field}               ${search_word.value}                      ${search_word.uuid}
    ELSE IF    '${field}' == '${site_artl_status.field}'   
        Dropdown row 4                                     ${site_artl_status.field}          ${site_artl_status.value}                 ${site_artl_status.uuid}
    ELSE IF    '${field}' == '${tax_class.field}'   
        Dropdown row 4                                     ${tax_class.field}                 ${tax_class.value}                        ${tax_class.uuid}
    ELSE IF    '${field}' == '${temperature.field}'   
        Input text editmass row 4 (day warranty)           ${temperature.field}               ${temperature.value}                      ${temperature.uuid}
    ELSE IF    '${field}' == '${name_th.field}'   
        Input text editmass row 4                          ${name_th.field}                   ${name_th.value}                          ${name_th.uuid}
    ELSE IF    '${field}' == '${tot_shelf_life.field}'   
        Input text editmass row 4 (day warranty)           ${tot_shelf_life.field}            ${tot_shelf_life.value}                   ${tot_shelf_life.uuid}
    ELSE IF    '${field}' == '${tradmark.field}'   
        Dropdown row 4                                     ${tradmark.field}                  ${tradmark.value}                         ${tradmark.uuid}
    END


No. 5 Edit field name (A2) :
    [Arguments]    ${field}
    IF         '${field}' == '${profitable_product.field}'
        Input text editmass row 5                          ${profitable_product.field}        ${profitable_product.value}               ${profitable_product.uuid}        
    ELSE IF    '${field}' == '${brand_type.field}'   
        Dropdown row 5                                     ${brand_type.field}                ${brand_type.value}                       ${brand_type.uuid}
    ELSE IF    '${field}' == '${seasonal_products.field}'   
        Check box month row 5                              ${seasonal_products.field}         ${seasonal_products.value}                ${seasonal_products.uuid}
    ELSE IF    '${field}' == '${search_remark.field}'   
        Input text editmass row 5                          ${search_remark.field}             ${search_remark.value}                    ${search_remark.uuid}
    ELSE IF    '${field}' == '${product_transform.field}'   
        Dropdown row 5                                     ${product_transform.field}                    ${product_transform.value}                ${product_transform.uuid}
    ELSE IF    '${field}' == '${product_detail.field}'   
        Input text editmass row 5                          ${product_detail.field}            ${product_detail.value}                   ${product_detail.uuid}
    ELSE IF    '${field}' == '${sales_period.field}'   
        Check box month row 5                              ${sales_period.field}                   ${sales_period.value}                     ${sales_period.uuid}
    ELSE IF    '${field}' == '${warranty_terms.field}'   
        Input text editmass row 5 (section14)              ${warranty_terms.field}            ${warranty_terms.value}                   ${warranty_terms.uuid}
    ELSE IF    '${field}' == '${old_article.field}'   
        Input text editmass row 5                          ${old_article.field}               ${old_article.value}                      ${old_article.uuid}
    ELSE IF    '${field}' == '${recommended_minimum.field}'   
        Input text editmass row 5 (day warranty)           ${recommended_minimum.field}       ${recommended_minimum.value}              ${recommended_minimum.uuid}
    ELSE IF    '${field}' == '${customs_tariff.field}'   
        Input text editmass row 5                          ${customs_tariff.field}            ${customs_tariff.value}                   ${customs_tariff.uuid}
    ELSE IF    '${field}' == '${components.field}'   
        Input text editmass row 5                          ${components.field}                ${components.value}                       ${components.uuid}           
    ELSE IF    '${field}' == '${content_unit.field}'   
        Dropdown row 5                                     ${content_unit.field}              ${content_unit.value}                     ${content_unit.uuid}                   
    ELSE IF    '${field}' == '${country_of_region.field}'   
        Dropdown row 5                                     ${country_of_region.field}         ${country_of_region.value}                ${country_of_region.uuid}
    ELSE IF    '${field}' == '${first_sale_date.field}'   
        Input text editmass row 5                          ${first_sale_date.field}           ${first_sale_date.value}                  ${first_sale_date.uuid}
    ELSE IF    '${field}' == '${gross_contents.field}'   
        Input text editmass row 5                          ${gross_contents.field}            ${gross_contents.value}                   ${gross_contents.uuid}
    ELSE IF    '${field}' == '${hazardous_no.field}'   
        Input text editmass row 5                          ${hazardous_no.field}              ${hazardous_no.value}                     ${hazardous_no.uuid}
    ELSE IF    '${field}' == '${hb_nonhb.field}'   
        Dropdown row 5                                     ${hb_nonhb.field}                  ${hb_nonhb.value}                         ${hb_nonhb.uuid}
    ELSE IF    '${field}' == '${production.field}'   
        Dropdown row 5                                     ${production.field}                ${production.value}                       ${production.uuid}
    ELSE IF    '${field}' == '${merchandise_category4.field}'   
        Dropdown row 5                                     ${merchandise_category4.field}     ${merchandise_category4.value}            ${merchandise_category4.uuid}
    ELSE IF    '${field}' == '${merchandise_category3.field}'   
        Dropdown row 5                                     ${merchandise_category3.field}     ${merchandise_category3.value}            ${merchandise_category3.uuid}
    ELSE IF    '${field}' == '${net_contents.field}'   
        Dropdown row 5                                     ${net_contents.field}              ${net_contents.value}                     ${net_contents.uuid}
    ELSE IF    '${field}' == '${price_band_cat.field}'   
        Dropdown row 5                                     ${price_band_cat.field}            ${price_band_cat.value}                   ${price_band_cat.uuid}
    ELSE IF    '${field}' == '${regions_origin.field}'   
        Dropdown row 5                                     ${regions_origin.field}            ${regions_origin.value}                   ${regions_origin.uuid}
    ELSE IF    '${field}' == '${rem_shelf_life.field}'   
        Input text editmass row 5 (day warranty)           ${rem_shelf_life.field}            ${rem_shelf_life.value}                   ${rem_shelf_life.uuid}
    ELSE IF    '${field}' == '${repack.field}'   
        Dropdown row 5                                     ${repack.field}                    ${repack.value}                           ${repack.uuid}
    ELSE IF    '${field}' == '${search_word.field}'   
        Input text editmass row 5                          ${search_word.field}               ${search_word.value}                      ${search_word.uuid}
    ELSE IF    '${field}' == '${site_artl_status.field}'   
        Dropdown row 5                                     ${site_artl_status.field}          ${site_artl_status.value}                 ${site_artl_status.uuid}
    ELSE IF    '${field}' == '${tax_class.field}'   
        Dropdown row 5                                     ${tax_class.field}                 ${tax_class.value}                        ${tax_class.uuid}
    ELSE IF    '${field}' == '${temperature.field}'   
        Input text editmass row 5 (day warranty)           ${temperature.field}               ${temperature.value}                      ${temperature.uuid}
    ELSE IF    '${field}' == '${name_th.field}'   
        Input text editmass row 5                          ${name_th.field}                   ${name_th.value}                          ${name_th.uuid}
    ELSE IF    '${field}' == '${tot_shelf_life.field}'   
        Input text editmass row 5 (day warranty)           ${tot_shelf_life.field}            ${tot_shelf_life.value}                   ${tot_shelf_life.uuid}
    ELSE IF    '${field}' == '${tradmark.field}'   
        Dropdown row 5                                     ${tradmark.field}                  ${tradmark.value}                         ${tradmark.uuid}
    END






*** Test Cases ***
Article Edit mass round 1
    [Setup]    Login dohome and click web art(Edit Mass) A2
    Search by article    10337742
    Check value article    10337742
    Click check box all article
    Click button edit field    
    No. 1 Edit field name (A2) :    รุ่นเหล็ก (Mdes Catary4 )
    No. 2 Edit field name (A2) :    เลขที่สำหรับวัตถุอันตราย (Haz. artl no.)
    No. 3 Edit field name (A2) :    ส่วนประกอบตัวลูกตัวแม่ (components)
    No. 4 Edit field name (A2) :    อายุขั้นต่ำที่แนะนำให้รับสินค้า
    No. 5 Edit field name (A2) :    เงื่อนไขการรับประกัน






for(var i = 0; i < MAX_ITME_BOX; i++) {
    if (global.item[i] != spr_none) {
        global.item_time[i] += shop_button1.item[global.item[i]].max_time * 0.8
    }
}
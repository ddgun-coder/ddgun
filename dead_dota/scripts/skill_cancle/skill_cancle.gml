function skill_cancle(){
   if (variable_instance_exists(id, "cancle")) {
      cancle--;
      if (cancle > 0) {
         exit;
      }
   }
   if (cid_id.charge == false or cid_id.sturn > 0 or cid_id.cancle_able == false) {
      instance_destroy()
   }
}
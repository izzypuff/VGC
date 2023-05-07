///@param time
///@param amount
function shake_screen(_time, _amount){
	obj_cam_controller.shake_amount = _amount;
	obj_cam_controller.alarm[0] = _time;
	obj_cam_controller.shaking = true;
}
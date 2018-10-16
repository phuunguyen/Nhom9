function validateForm() {
	if(validateUsername() & validateDes() & validatePrice()){
		return true;
	}else
	{
		return false;
	}

}

function validateUsername(){
	var field = $('#name').val();
	var filter = /^.{6,}$/;
	if(filter.test(field) == false){
		$('#name').parent().parent().addClass('has-error');
		$('#name').next().css("color","pink").html('Chưa nhập sản phẩm');
		return false;
	}else
	{
		$('#name').parent().parent().removeClass('has-error');
		$('#name').next().html('');
		return true;
	}

// function validateDes(){
// 	var field = $('#description').val();
// 	var filter = /^.{6,}$/;
// 	if(filter.test(field) == false){
// 		$('#description').parent().parent().addClass('has-error');
// 		$('#description').next().css("color","pink").html('Chưa nhập mô tả');
// 		return false;
// 	}else
// 	{
// 		$('#description').parent().parent().removeClass('has-error');
// 		$('#description').next().html('');
// 		return true;
// 	}

// function validatePrice(){
// 	var field = $('#price').val();
// 	var filter = /^.{6,}$/;
// 	if(filter.test(field) == false){
// 		$('#price').parent().parent().addClass('has-error');
// 		$('#price').next().css("color","pink").html('Chưa nhập giá');
// 		return false;
// 	}else
// 	{
// 		$('#price').parent().parent().removeClass('has-error');
// 		$('#price').next().html('');
// 		return true;
// 	}
}
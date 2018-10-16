<?php
	class Db
	{
		//Tao bien ket noi $conn
		public static $conn;
		//Viet ham construct ket noi
		public function __construct()
		{
			self::$conn = new mysqli(Db_HOST, Db_USER, Db_PASS,Db_NAME);
			self::$conn->set_charset('utf8');
		}
		//Ngat ket noi
		public function __destruct()
		{
			self::$conn->close();
		}

		public function getData($obj)
		{
			$arr = array();
			while ($row = $obj->fetch_assoc()) {
				# code...
				$arr[] = $row;
			}
			return $arr;
		}

		// Tat ca cac san pham
		public function product()
		{
			$sql = "SELECT * FROM `products`,`manufactures`,`protypes` WHERE manufactures.manu_ID = products.manu_id AND protypes.type_id = products.type_id";
			$result = self::$conn->query($sql);
			return $this->getData($result);
		}

		public function product1()
		{
			if(isset($_GET['key']))
			{
				$key = $_GET['key'];
			}
			$sql1 = "SELECT * FROM `products` JOIN `manufactures` ON `products`.`manu_id` = `manufactures`.`manu_ID` JOIN `protypes` ON `products`.`type_id` = `protypes`.`type_id` WHERE Name LIKE '%".$key."%'";
			$result1 = self::$conn->query($sql1);
			return $this->getData($result1);
		}

		public function getAllProducts($page, $per_page)
		{
 
			// Tính số thứ tự trang bắt đầu  
   
			$first_link = ($page - 1) * $per_page; 
  
			$sql = "SELECT * FROM `products`,`manufactures`,`protypes` WHERE manufactures.manu_ID = products.manu_id AND protypes.type_id = products.type_id LIMIT $first_link, $per_page"; 
     
			$result = self::$conn->query ($sql);        
  
			return $this->getData($result);     
		}

		public function paginate($url, $total, $page, $per_page)
		{
			$total_links = ceil($total/$per_page);
  
			$link =""; 
     
			for($j=1; $j <= $total_links ; $j++) 
      		{
       			$link = $link."<a href='$url?page=$j'> $j </a>";
      		}  

			return $link; 
		} 

		public function product3($name, $price, $image, $description,$manu_ID,$type_ID)
		{
			if(isset($_POST['name']))
			{
				$name = $_POST['name'];
				$type_id = $_POST['type_id'];
				$manu_id = $_POST['manu_id'];
				$image = $_FILES['fileToUpload']['name'];
				$description = $_POST['description'];
				$price = $_POST['price'];
			}
			$sql = "INSERT INTO `products`( `name`, `image`, `description`, `Price`, `manu_id`, `type_id`) VALUES ( '$name','$image','$description','$price',$manu_id,$type_id)";
			$result = self::$conn->query($sql);
			return $result;
		}

		public function delete($ID)
		{
			$sql = "DELETE FROM `products` WHERE ID = $ID ";
			return self::$conn->query($sql);
		}

	} 
 ?>
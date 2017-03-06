<?php 
	/**
	* 
	*/
	class Auth_Model_Api extends Base_model
	{
		
		function __construct()
		{
			parent::__construct();
		}

		public function cekUser($username)
		{
			$result = $this->db->where('email', $username)->get('users')->result_array();
			if($result)
			{
			    return $result;
			}
			return FALSE;
		}
	}
 ?>
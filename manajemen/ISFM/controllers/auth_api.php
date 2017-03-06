<?php 

	class auth_api extends CI_Controller
	{
		
		function __construct()
		{
			parent::__construct();
			$this->load->model('Auth_Model_Api','auth_api');
		}

		public function cekUser()
		{
			$posts = (array)json_decode(file_get_contents('php://input'));
			// var_dump($posts);
			$username = $posts['username'];
			$password = $posts['password'];

			$data = $this->ion_auth->login($this->db->escape_like_str($username),$this->db->escape_like_str($password),false);
			$data_user = '';
			if ($data) {
				$data_user = $this->auth_api->cekUser($username);
			}
			$response = array(
				'status' 	=> $data,
				// 'data'	 	=> $data_user,
				'id'	 	=> $data_user[0]['id'],
				'email'		=> $data_user[0]['email'],
				'username'	=> $data_user[0]['username'],
				'password'  => $data_user[0]['password'],
			);
			$this->output
			    ->set_status_header(200)
			    ->set_content_type('application/json', 'utf-8')
			    ->set_output(json_encode($response, JSON_PRETTY_PRINT))
			    ->_display();
			exit;
		}
	}
 ?>
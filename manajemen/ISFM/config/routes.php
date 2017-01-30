<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
/*
  | -------------------------------------------------------------------------
  | URI ROUTING
  | -------------------------------------------------------------------------
  | This file lets you re-map URI requests to specific controller functions.
  |
  | Typically there is a one-to-one relationship between a URL string
  | and its corresponding controller class/method. The segments in a
  | URL normally follow this pattern:
  |
  |	example.com/class/method/id/
  |
  | In some instances, however, you may want to remap this relationship
  | so that a different class/function is called than the one
  | corresponding to the URL.
  |
  | Please see the user guide for complete details:
  |
  |	http://codeigniter.com/user_guide/general/routing.html
  |
  | -------------------------------------------------------------------------
  | RESERVED ROUTES
  | -------------------------------------------------------------------------
  |
  | There area two reserved routes:
  |
  |	$route['default_controller'] = 'welcome';
  |
  | This route indicates which controller class should be loaded if the
  | URI contains no data. In the above example, the "welcome" class
  | would be loaded.
  |
  |	$route['404_override'] = 'errors/page_missing';
  |
  | This route will tell the Router what URI segments to use if those provided
  | in the URL cannot be matched to a valid route.
  |
 */

//$route['default_controller'] = "fva";
$route['default_controller'] = "auth";
/*Get Student for by class ID*/
$route['api/student/(:num)'] = 'student_api/getStudent/$1';

/*Save student*/
$route['api/savestudent'] = 'student_api/saveStudent';

/*attendance*/
/* {
"date" : "23-01-2017",
"class_title" : "Class New 3"
} */
$route['api/attendance'] = 'student_api/attendance';

/*get Cabang*/
$route['api/getcabang'] = 'student_api/getCabang';

/*get class by cabang*/
$route['api/class/(:num)'] = 'student_api/getClassByCabang/$1';

/*show jurnal berdasarkan user id*/
$route['api/jurnal/(:num)'] = 'jurnal_api/get_class/$1';

/*Show detail berdasarkan ID*/
$route['api/jurnal/edit/(:num)'] = 'jurnal_api/getById/$1';

/*Save Jurnal
$data = array(
            'class_id' => $posts['class_id'],
            'task' => $posts['task'],
            'situasi_kelas' => $posts['situasi_kelas'],
            'catatan' => $posts['catatan'],
            'time' => $compTime,
            'date' => strtotime(date('d-m-Y')),
            'user' => $posts['user'],
            'user_id' => $posts['user_id'],
            'year' => date('Y'),
            'approval' => '1',
        );
*/
$route['api/savejurnal'] = 'jurnal_api/saveJurnal';

/*Update jurnal berdasarkan ID
$data = array(
            'task' => $posts['task'],
            'situasi_kelas' => $posts['situasi_kelas'],
            'catatan' => $posts['catatan'],
        );
*/
$route['api/updatejurnal/(:num)'] = 'jurnal_api/updateJurnal/$1';

/*delete jurnal*/
$route['api/deletejurnal/(:num)'] = 'jurnal_api/deleteJurnal/$1';


$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */
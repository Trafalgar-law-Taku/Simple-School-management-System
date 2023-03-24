<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use App\Models\students;
use App\Models\User;
use App\Models\staff;
use App\Models\degree;
use App\Models\updates;
use Encore\Admin\Widgets\InfoBox;
use Encore\Admin\Layout\Row;
use Encore\Admin\Facades\Admin;

Admin::js('/vendor/chartjs/dist/Chart.min.js');

class HomeController extends Controller
{
    public function index(Content $content)
    {

        $content->header('Campus Address Book');
        $content->description('page description');
        $content->body('hello world');

        return $content->row(function(Row $row) {
$user= User::all()->count();
$students = students::all()->count();
$Updates = updates::all()->count();
$degrees = degree::all()->count();

$staff = staff::all()->count();
$Lecturers = staff::where('occupation', '=', 'Lecturer')->count();

            $infoBox = new InfoBox('New Users', 'user', 'aqua', 'admin/users', $user);
            $infoBox2 = new InfoBox('Sudents', 'users', 'aqua', 'admin/students', $students);
            $infoBox3 = new InfoBox('Updates', 'calendar-check-o', 'aqua', 'admin/updates', $Updates);
            $infoBox4 = new InfoBox('Degrees', 'book', 'aqua', 'admin/degrees', $degrees );
            $infoBox5 = new InfoBox('Lecturers', 'user-secret', 'aqua', 'admin/staff', $Lecturers);
            $infoBox6 = new InfoBox('All Staff', 'blind', 'aqua', 'admin/staff', $staff);
         

            $row->column(4, $infoBox->render());
            $row->column(4, $infoBox2->render());
            $row->column(4, $infoBox3->render());
            $row->column(4, $infoBox4->render());
            $row->column(4, $infoBox5->render());
            $row->column(4, $infoBox6->render());
            
          
        });
        
        $content->body(view('admin.charts.bar'));

            
    }
}

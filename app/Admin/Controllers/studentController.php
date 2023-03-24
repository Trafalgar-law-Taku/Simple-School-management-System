<?php

namespace App\Admin\Controllers;

use App\Models\students;
use App\Models\degree;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class studentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'students';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new students());

        $grid->column('id', __('Id'))->sortable();
        $grid->column('name', __('Name'))->sortable();
        $grid->column('surname', __('Surname'));
        $grid->column('email', __('Email'));
        $grid->column('reg', __('Reg'));
        $grid->column('phone', __('Phone'));
        $grid->column('dob', __('Dob'));
        $grid->column('sex', __('Sex'));
       
        $grid->column('faculty', __('Faculty'));
        $grid->column('degree', __('Degree'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        $grid->column('image',__('image'))->image('','60','60');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(students::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('surname', __('Surname'));
        $show->field('email', __('Email'));
        $show->field('reg', __('Reg'));
        $show->field('phone', __('Phone'));
        $show->field('dob', __('Dob'));
        $show->field('sex', __('Sex'));
        $show->field('image', __('Image'));
        $show->field('faculty', __('Faculty'));
        $show->field('degree', __('Degree'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new students());

      
     
      


            $form->text('name', __('Name'))->required();
            $form->text('surname', __('Surname'));
       
            $form->date('dob', __('Dob'));
            $form->select('sex', 'Sex')->options(['Male' => 'Male', 'Female' => 'Female']);
        


           $form->image('image');
          $form->email('email');
           $form->mobile('phone');
           $form->text('reg', __('Reg-Number'));
        
       
           $form->select('faculty', 'Faculty')->options(['Commerce' => 'Commerce', 'Development Studies' => 'Development Studies']);
           $form->select('degree','Degree')->options(degree::all()->pluck('title','title'));

        
        return $form;
    }
}

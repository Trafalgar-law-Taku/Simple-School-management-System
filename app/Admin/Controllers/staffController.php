<?php

namespace App\Admin\Controllers;
use App\Models\categories;
use App\Models\staff;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class staffController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'staff';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new staff());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('surname', __('Surname'));
        $grid->column('email', __('Email'));
        $grid->column('phone', __('Phone'));
        $grid->column('sex', __('Sex'));
        $grid->column('occupation', __('Occupation'));
        $grid->column('dob', __('Dob'));
        $grid->column('residence', __('Residence'));
        $grid->column('qualification', __('Qualification'));
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
        $show = new Show(staff::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('surname', __('Surname'));
        $show->field('email', __('Email'));
        $show->field('phone', __('Phone'));
        $show->field('sex', __('Sex'));
        $show->field('occupation', __('Occupation'));
        $show->field('dob', __('Dob'));
        $show->field('residence', __('Residence'));
        $show->field('qualification', __('Qualification'));
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
        $form = new Form(new staff());

        $form->text('name', __('Name'));
        $form->text('surname', __('Surname'));
        $form->email('email', __('Email'));
        $form->mobile('phone', __('Phone'));
        $form->image('image', __('image'));
        $form->select('sex', 'Sex')->options(['Male' => 'Male', 'Female' => 'Female']);
        $form->select('occupation','occupation')->options(categories::all()->pluck('name','name'));
        $form->date('dob', __('Date of birth'));
        $form->textarea('residence', __('Residence'));
      
        $form->select('qualification', 'Qualification')->options(['Bachelors' => 'Bachelors', 'Masters' => 'Masters', 'PHD' => 'PHD']);
        return $form;
    }
}

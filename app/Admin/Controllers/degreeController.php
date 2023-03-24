<?php

namespace App\Admin\Controllers;

use App\Models\staff;
use App\Models\degree;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class degreeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'degree';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new degree());
        $grid->column('name', __('name'));
        $grid->column('description', __('description'));
        $grid->column('period', __('Years'));
        $grid->column('lecturer', __('Lecturer'));

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
        $show = new Show(degree::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new degree());
        $form->text('title', __('Name'));
        $form->textarea('description', __('Description'));
        $form->number('period', __('Years'));
        $form->select('lecturer','lecturer')->options(staff::where('occupation', '=', 'Lecturer')->pluck( 'surname', 'surname' ));


        return $form;
    }
}

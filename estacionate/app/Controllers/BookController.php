<?php

namespace App\Controllers;

class BookController extends BaseController
{
    public function index(){
        return view('login');
    }
    public function show_books(){
        return view('layaouts/header',$data).view('book/show_books').view('layaouts/footer');
    }

    public function show_detail_book(){
        return view('layaouts/header',$data).view('book/show_detail_book').view('layaouts/footer');
    }

    public function vista_add_book(){
        return view('layaouts/header',$data).view('book/show_add_book').view('layaouts/footer');
    }
    public function delete_book(){

       return redirect()->to(base_url('show_books'));
    }
   
    public function post_delete_book(){

    }
    public function post_add_book(){

    }

}
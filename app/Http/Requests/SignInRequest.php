<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SignInRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
   
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'email|required',
            'password' => 'required|min:4|max:6'

        ];
    }

    public function message(){
        return [
            'password.required' => 'שדה זה הוא חובה!',
            'password.min' => 'מינימום 4 תווים!'
        ];
    }
}

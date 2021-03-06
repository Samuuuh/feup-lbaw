<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Answer;

use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;

class AnswerPolicy{
    use HandlesAuthorization;

    public function create(){
      // Any user can create a new answer, as long as he is logged in
      return Auth::check();
    }

    public function edit(User $user, Answer $answer){
      // Only a question owner can edit the question;
      return $user->id === $answer->answer_owner_id;
    }

    public function delete(User $user, Answer $answer){
      // Only a question owner or the Administrator can delete it
      return $user->id === $answer->answer_owner_id || $user->isAdmin() || $user->isModerator();
    }

    public function valid(?User $user, Answer $answer){
      // Only a question owner can mark answers as valid.
      return Auth::check() && $user->id === $answer->question->question_owner_id && $user->id !== $answer->answer_owner_id;
  }

    public function report(User $user, Answer $answer){
      return Auth::check() && ($answer->owner && $answer->owner->id != Auth::user()->id);
    }
}

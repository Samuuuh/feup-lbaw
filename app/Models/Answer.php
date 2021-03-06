<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
  // Don't add create and update timestamps in database.
  public $timestamps  = false;
  protected $table = 'answer';

  protected $fillable = ['content', 'deleted', 'date', 'answer_owner_id', 'valid', 'score', 'question_id'];

  public function owner() {
    return $this->belongsTo(User::class, 'answer_owner_id');
  }

  public function comments(){
    return $this->hasMany(Comment::class);
  }

  public function commentsNotDeleted(){
    return $this->hasMany(Comment::class)->where('deleted','=',false);
  }

  public function orderedComments($user){
    return (!is_null($user) && ($user->isAdmin() || $user->isModerator()) ? $this->comments(): $this->commentsNotDeleted())->orderBy('id', 'DESC');
  }

  public function votes(){
    return $this->hasMany(Vote::class);
  }

  public function question() {
    return $this->belongsTo(Question::class, 'question_id');
  }

  public function userVote($id){

    $votes = $this->votes()->where('user_id', '=', $id);

    if($votes->count() > 0)
        return $votes->first()->value_vote;
    return 0;
  }
}

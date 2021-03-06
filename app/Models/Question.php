<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    // Don't add create and update timestamps in database.
    public $timestamps  = false;

    protected $table = 'question';


    protected $fillable = [
        'question_owner_id', 'title', 'content', 'date', 'score', 'number_answer','search', 'answers_search', 'deleted'
    ];

    protected $appends = array('mimeType');

    // code for $this->mimeType attribute
    public function getMimeTypeAttribute($value) {
        $mimeType = null;
        if ($this->uploadMime) {
            $mimeType = $this->uploadMime->type;
        }
        return $mimeType;
    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'search', 'answers_search'
    ];

    public function owner(){
        return $this->belongsTo(User::class, 'question_owner_id');
    }

    public function answers(){
        return $this->hasMany(Answer::class);
    }

    public function answersNotDeleted(){
        return $this->hasMany(Answer::class)->where('deleted','=',false);
    }

    public function votes(){
        return $this->hasMany(Vote::class);
    }

    public function courses(){
        return $this->belongsToMany(Course::class, 'question_course');
    }

    public function tags(){
        return $this->belongsToMany(Tag::class, 'question_tag');
    }

    public function userVote($id){

        $votes = $this->votes()->where('user_id', '=', $id);

        if($votes->count() > 0)
            return $votes->first()->value_vote;
        return 0;
    }
}

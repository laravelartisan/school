<?php

namespace Erp\Models\Student;


use Erp\Models\ProjectModel;
use Erp\Models\Routine\Routine;
use Erp\Models\Subject\Subject;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\User\User;
use Erp\Models\Result\ResultSystem;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\Status\Status;
use Erp\Models\Examinations\ExaminationSchedule;

class StudentClass extends ProjectModel
{
    use SoftDeletes;

    const CLASS_NAME = 'class_name';
    const TEACHER = 'user_id';
    const RESULT_SYSTEM = 'result_system_id';
    const NOTE = 'note';
    const STATUS = 'status';

    public $timestamps = false;
    protected $fillable = [
        self::CLASS_NAME,
        self::TEACHER,
        self::RESULT_SYSTEM,
        self::NOTE,
        self::STATUS
    ];

    public $ownFields = [
        self::CLASS_NAME,
        self::TEACHER,
        self::RESULT_SYSTEM,
        self::NOTE,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    /***
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function sections()
    {
        return $this->hasMany(Section::class);
    }

    /**
     * StudentClass hasMany Subject
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subjects()
    {
        return $this->hasMany(Subject::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function students()
    {
        return $this->hasMany(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function teachers()
    {
        return $this->hasMany(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function classTeacher()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function resultSystem()
    {
        return $this->belongsTo(ResultSystem::class);
    }

    // StudentClass hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // StudentClass hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }
}

<?php

/**
 * This is the model class for table "usuarios".
 *
 * The followings are the available columns in table 'usuarios':
 * @property integer $id
 * @property string $email
 * @property string $password
 * @property string $firstName
 * @property string $lastName
 * @property integer $managerId
 * @property string $title
 * @property string $department
 * @property string $officePhone
 * @property string $cellPhone
 * @property string $city
 * @property string $picture
 * @property string $twitterId
 * @property string $blogURL
 */
class Usuario extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Usuario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'usuarios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('email, firstName, lastName, managerId, title, department, officePhone, cellPhone, city, picture', 'required'),
			array('managerId', 'numerical', 'integerOnly'=>true),
			array('email, title, department, officePhone, cellPhone, city, twitterId', 'length', 'max'=>45),
			array('password', 'length', 'max'=>10),
			array('firstName, lastName', 'length', 'max'=>30),
			array('picture', 'length', 'max'=>250),
			array('blogURL', 'length', 'max'=>200),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, email, password, firstName, lastName, managerId, title, department, officePhone, cellPhone, city, picture, twitterId, blogURL', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'email' => 'Email',
			'password' => 'Password',
			'firstName' => 'First Name',
			'lastName' => 'Last Name',
			'managerId' => 'Manager',
			'title' => 'Title',
			'department' => 'Department',
			'officePhone' => 'Office Phone',
			'cellPhone' => 'Cell Phone',
			'city' => 'City',
			'picture' => 'Picture',
			'twitterId' => 'Twitter',
			'blogURL' => 'Blog Url',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('firstName',$this->firstName,true);
		$criteria->compare('lastName',$this->lastName,true);
		$criteria->compare('managerId',$this->managerId);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('department',$this->department,true);
		$criteria->compare('officePhone',$this->officePhone,true);
		$criteria->compare('cellPhone',$this->cellPhone,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('picture',$this->picture,true);
		$criteria->compare('twitterId',$this->twitterId,true);
		$criteria->compare('blogURL',$this->blogURL,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
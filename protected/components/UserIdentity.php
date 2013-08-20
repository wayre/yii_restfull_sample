<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	/**
	 * Authenticates a user.
	 * @return boolean whether authentication succeeds.
	 */
	public function authenticate()
	{
		Yii::app()->session['isLogged'] = false;

		$model = Usuario::model()->findByAttributes(array('email'=>$this->username));
		if(empty($model)){
		    $this->errorCode=self::ERROR_USERNAME_INVALID;
		}
		else if($model->password !== $this->password){
		    $this->errorCode=self::ERROR_PASSWORD_INVALID;
		}
		else{
			Yii::app()->session['isLogged'] = true;

			// popula setState
			foreach ($model as $key => $value) {
				$this->setState($key, (string) $value);
			}
			$this->errorCode=self::ERROR_NONE;
		}
        return !$this->errorCode;
	}
}
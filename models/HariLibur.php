<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "hari_libur".
 *
 * @property integer $id
 * @property string $tanggal
 * @property string $keterangan
 */
class HariLibur extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'hari_libur';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tanggal', 'keterangan'], 'required'],
            [['tanggal'], 'safe'],
            [['keterangan'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tanggal' => 'Tanggal',
            'keterangan' => 'Keterangan',
        ];
    }

    public static function getTahun($tahun)
    {
       $query = HariLibur::find()->select('tanggal')
        ->andFilterWhere(['like', 'tanggal', $tahun])
        ->asArray()->all();
        return array_column($query, 'tanggal');
    }
}

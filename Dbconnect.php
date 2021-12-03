<?php

class Dbconnect
{
    protected $dsn;
    protected $username;
    protected $password;

    public function __construct()
    {
    $dsn = "mysql:host=localhost; dbname=demo-library;charset=utf8";
    $username = "root";
    $password = "123456789";
    }

    public function connect()
    {
        try {
            $connect = new PDO($this->dsn,$this->username,$this->password);
            return $connect;
        } catch (PDOException $e) {
            exit($e->getMessage());
        }
    }
}
$dbcon = new Dbconnect();
$dbcon->connect();
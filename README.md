yiidemo-cms
===========

Yii框架学习Demo 文章管理系统


##如何使用？
* 拷贝`evironment/config`目录下的配置文件`main.php`到`protected/config`目录
* 创建您的本地数据库，导入数据库文件`environment/cms.sql`
* 打开配置文件`protected/config/main.php`,找到
        ......
        db=>array(
            'connectionString' => 'mysql:host=<<DB_host>>;dbname=<<DB_name>>',
            'emulatePrepare' => true,
            'username' => '<<DB_username>>',
            'password' => '<<DB_password>>',
            'charset' => 'utf8',
        ),
        ......
    把&lt;&lt;DB_host&gt;&gt; &lt;&lt;DB_name&gt;&gt; &lt;&lt;DB_username&gt;&gt; &lt;&lt;DB_password&gt;&gt;
    替换为您的数据库配置。

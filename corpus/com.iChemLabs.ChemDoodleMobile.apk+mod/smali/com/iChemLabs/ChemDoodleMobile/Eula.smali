.class Lcom/iChemLabs/ChemDoodleMobile/Eula;
.super Ljava/lang/Object;
.source "Eula.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;
    }
.end annotation


# static fields
.field private static final ASSET_EULA:Ljava/lang/String; = "EULA"

.field private static final PREFERENCES_EULA:Ljava/lang/String; = "eula"

.field private static final PREFERENCE_EULA_ACCEPTED:Ljava/lang/String; = "eula.accepted"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "preferences"

    .prologue
    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eula.accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method static synthetic access$0(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->accept(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-static {p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->refuse(Landroid/app/Activity;)V

    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 125
    if-eqz p0, :cond_0

    .line 127
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static readEula(Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "activity"

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "EULA"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, buffer:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 115
    invoke-static {v3}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->closeStream(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 113
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :goto_1
    return-object v0

    .line 110
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 112
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 115
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->closeStream(Ljava/io/Closeable;)V

    .line 113
    const-string v0, ""

    goto :goto_1

    .line 114
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 115
    :goto_3
    invoke-static {v2}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->closeStream(Ljava/io/Closeable;)V

    .line 116
    throw v5

    .line 114
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 112
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static refuse(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    return-void
.end method

.method static show(Landroid/app/Activity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const-string v4, "eula"

    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v4, "eula.accepted"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "ChemDoodle Mobile License"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 68
    const-string v3, "Accept"

    new-instance v4, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;

    invoke-direct {v4, v1, p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;-><init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    const-string v3, "Reject"

    new-instance v4, Lcom/iChemLabs/ChemDoodleMobile/Eula$2;

    invoke-direct {v4, p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance v3, Lcom/iChemLabs/ChemDoodleMobile/Eula$3;

    invoke-direct {v3, p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-static {p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->readEula(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 93
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local p0
    :goto_0
    return v2

    .line 90
    .restart local p0
    :cond_0
    instance-of v2, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;

    if-eqz v2, :cond_1

    .line 91
    check-cast p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;

    .end local p0
    invoke-interface {p0}, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;->onEulaAgreedTo()V

    :cond_1
    move v2, v3

    .line 93
    goto :goto_0
.end method

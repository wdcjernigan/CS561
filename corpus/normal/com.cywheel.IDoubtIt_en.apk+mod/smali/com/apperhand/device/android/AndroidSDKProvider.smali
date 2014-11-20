.class public Lcom/apperhand/device/android/AndroidSDKProvider;
.super Landroid/app/IntentService;
.source "AndroidSDKProvider.java"

# interfaces
.implements Lcom/apperhand/device/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/AndroidSDKProvider$2;,
        Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/apperhand/device/a/d/c;

.field private g:Lcom/apperhand/device/a/c/a;

.field private h:Lcom/apperhand/device/android/a/a;

.field private i:Lcom/apperhand/device/android/a/b;

.field private j:Lcom/apperhand/device/android/a/e;

.field private k:Lcom/apperhand/device/android/a/f;

.field private l:Lcom/apperhand/device/android/a/d;

.field private m:Lcom/apperhand/device/android/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const-string v0, "AndroidSDKProvider"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-static {p0, v0, v1}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v2, "com.apperhand.global"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 192
    const-string v3, "TERMINATE"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 193
    if-nez v2, :cond_0

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    if-eqz p2, :cond_2

    .line 199
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    :cond_2
    const-string v3, "CRoQAlVGS1keGVoEHgRLEBoOGRdLEUE+agQtJzsiJj8tABJOHhYdGwYHQQU="

    invoke-static {v3, v4}, Lcom/apperhand/device/a/d/a;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 204
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/apperhand/device/a/d/b;->a([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 209
    const-string v3, "APPLICATION_ID"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "DEVELOPER_ID"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v0, "M_SERVER_URL"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v0, "FIRST_RUN"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    const-string v0, "USER_AGENT"

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v0, "SERVICE_MODE"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic b(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->initSDK(Landroid/content/Context;Z)V

    .line 115
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->initSDK(Landroid/content/Context;Z)V

    .line 119
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 129
    :goto_1
    if-eqz v0, :cond_12

    .line 130
    sget-boolean v0, Lcom/apperhand/device/android/AndroidSDKProvider;->a:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v0, "android.permission.INTERNET"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.htc.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.motorola.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.motorola.dlauncher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.fede.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.lge.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "org.adw.launcher.permission.READ_SETTINGS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.motorola.launcher.permission.INSTALL_SHORTCUT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.motorola.dlauncher.permission.INSTALL_SHORTCUT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.lge.launcher.permission.INSTALL_SHORTCUT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1005

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_f

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz v3, :cond_4

    array-length v8, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v9, v3, v2

    const-string v10, "com.apperhand.device.android.EULAActivity"

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    move v3, v0

    .line 130
    const/4 v0, 0x1

    if-eqz v6, :cond_6

    array-length v8, v6

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_6

    aget-object v9, v6, v2

    const-string v10, "com.apperhand.device.android.AndroidSDKProvider"

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v0, 0x0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move v2, v0

    if-eqz v7, :cond_8

    array-length v6, v7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_8

    aget-object v8, v7, v0

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v6, v7}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    if-eqz v3, :cond_9

    const-string v3, "Decleration of Activity, \'com.apperhand.device.android.EULAActivity\', is missing\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v2, :cond_a

    const-string v2, "Decleration of Service, \'com.apperhand.device.android.AndroidSDKProvider\', is missing\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Developer-ID is missing\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "Application-ID is missing\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v0, :cond_e

    const-string v0, "The following permissions are missing\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    const-string v1, "You have done a success integration!"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    if-eqz v0, :cond_11

    const-string v0, "apperhand"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "StartApp"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_f
    const-string v0, "Can\'t retrieve packageInfo"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    move v0, v1

    goto :goto_8

    :cond_11
    const-string v0, "apperhand"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 134
    :cond_12
    if-nez p1, :cond_13

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 139
    :cond_13
    new-instance v1, Lcom/apperhand/device/android/a;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/a;-><init>(Landroid/content/Context;)V

    .line 140
    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "ACCEPTED_EULA"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 140
    :cond_14
    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NewEulaTemplate"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "empty_terminate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v0, Lcom/apperhand/device/android/a$a;->c:Lcom/apperhand/device/android/a$a;

    :goto_b
    sget-object v2, Lcom/apperhand/device/android/a$a;->c:Lcom/apperhand/device/android/a$a;

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/apperhand/device/android/a$a;->b:Lcom/apperhand/device/android/a$a;

    goto :goto_b

    :cond_16
    sget-object v0, Lcom/apperhand/device/android/a$a;->a:Lcom/apperhand/device/android/a$a;

    goto :goto_b

    :cond_17
    sget-object v2, Lcom/apperhand/device/android/a$a;->b:Lcom/apperhand/device/android/a$a;

    if-ne v0, v2, :cond_19

    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "NewEulaChain"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NewStep"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EulaCounter"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "EulaGlobalCounter"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Lcom/apperhand/common/dto/EULAAcceptDetails;

    invoke-direct {v9}, Lcom/apperhand/common/dto/EULAAcceptDetails;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setButton(Ljava/lang/String;)V

    const-string v10, "empty"

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setTemplate(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setAccepted(Z)V

    if-nez v0, :cond_18

    const-string v0, "default"

    :cond_18
    invoke-virtual {v9, v0}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setChain(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setStep(Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EulaGlobalCounter"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v9, v4, v5}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setCounter(J)V

    invoke-virtual {v9, v6, v7}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setGlobalCounter(J)V

    const-string v0, "eulaAcceptDetails"

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1, v8}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_19
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-class v3, Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, v1, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method public static searchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->WEB:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    invoke-static {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->searchURL(Ljava/lang/String;Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static searchURL(Ljava/lang/String;Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v0

    const-string v1, "SEARCH_URL"

    const-string v2, "http://www.searchmobileonline.com/{$CATEGORY$}?sourceid=7&q={$QUERY$}"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/apperhand/device/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/apperhand/device/android/AndroidSDKProvider$2;->a:[I

    invoke-virtual {p1}, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    const-string v1, "{$CATEGORY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    if-eqz p0, :cond_0

    .line 169
    const-string v1, "{$QUERY$}"

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1
    return-object v0

    .line 154
    :pswitch_0
    const-string v1, "{$CATEGORY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v1, "{$CATEGORY$}"

    const-string v2, "simages"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v1, "{$CATEGORY$}"

    const-string v2, "svideos"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_0
    const-string v1, "{$QUERY$}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/apperhand/device/a/d/c;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->f:Lcom/apperhand/device/a/d/c;

    return-object v0
.end method

.method public final b()Lcom/apperhand/device/a/c/a;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->g:Lcom/apperhand/device/a/c/a;

    return-object v0
.end method

.method public final c()Lcom/apperhand/device/a/a/a;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->h:Lcom/apperhand/device/android/a/a;

    return-object v0
.end method

.method public final d()Lcom/apperhand/device/a/a/b;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->i:Lcom/apperhand/device/android/a/b;

    return-object v0
.end method

.method public final e()Lcom/apperhand/device/a/a/e;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->j:Lcom/apperhand/device/android/a/e;

    return-object v0
.end method

.method public final f()Lcom/apperhand/device/a/a/f;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->k:Lcom/apperhand/device/android/a/f;

    return-object v0
.end method

.method public final g()Lcom/apperhand/device/a/a/d;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->l:Lcom/apperhand/device/android/a/d;

    return-object v0
.end method

.method public final h()Lcom/apperhand/device/a/a/c;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->m:Lcom/apperhand/device/android/a/c;

    return-object v0
.end method

.method public final i()Lcom/apperhand/device/a/d/d;
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/apperhand/common/dto/ApplicationDetails;
    .locals 4

    .prologue
    .line 443
    new-instance v1, Lcom/apperhand/common/dto/ApplicationDetails;

    invoke-direct {v1}, Lcom/apperhand/common/dto/ApplicationDetails;-><init>()V

    .line 445
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setApplicationId(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setDeveloperId(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setUserAgent(Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setDeviceId(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setLocale(Ljava/util/Locale;)V

    .line 451
    const-string v0, "1.0.20"

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setProtocolVersion(Ljava/lang/String;)V

    .line 452
    new-instance v0, Lcom/apperhand/common/dto/DisplayMetrics;

    invoke-direct {v0}, Lcom/apperhand/common/dto/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->density:F

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->densityDpi:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->heightPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->scaledDensity:F

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iput v3, v0, Lcom/apperhand/common/dto/DisplayMetrics;->xdpi:F

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v0, Lcom/apperhand/common/dto/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setDisplayMetrics(Lcom/apperhand/common/dto/DisplayMetrics;)V

    .line 453
    new-instance v2, Lcom/apperhand/common/dto/Build;

    invoke-direct {v2}, Lcom/apperhand/common/dto/Build;-><init>()V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setBrand(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setDevice(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setManufacturer(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setModel(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setVersionRelease(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setVersionSDKInt(I)V

    const-string v0, "Android"

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setOs(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setNetworkCode(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/ApplicationDetails;->setBuild(Lcom/apperhand/common/dto/Build;)V

    .line 454
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setPackageId(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/ApplicationDetails;->setAndroidId(Ljava/lang/String;)V

    .line 458
    return-object v1

    .line 453
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/Build;->setNetworkCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    const-string v0, "1.0.20"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->setIntentRedelivery(Z)V

    .line 228
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    const-string v1, "SERVICE_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 236
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->b:Ljava/lang/String;

    .line 238
    const-string v2, "M_SERVER_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    const-string v3, "FIRST_RUN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 240
    const-string v4, "APPLICATION_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->c:Ljava/lang/String;

    .line 241
    const-string v4, "DEVELOPER_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->d:Ljava/lang/String;

    .line 242
    const-string v4, "USER_AGENT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->e:Ljava/lang/String;

    .line 244
    sget-object v4, Lcom/apperhand/device/android/c/c;->a:Lcom/apperhand/device/android/c/c;

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->f:Lcom/apperhand/device/a/d/c;

    .line 245
    new-instance v4, Lcom/apperhand/device/android/a/a;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->h:Lcom/apperhand/device/android/a/a;

    .line 246
    new-instance v4, Lcom/apperhand/device/android/a/b;

    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/apperhand/device/android/a/b;-><init>(Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->i:Lcom/apperhand/device/android/a/b;

    .line 247
    new-instance v4, Lcom/apperhand/device/android/a/e;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/e;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->j:Lcom/apperhand/device/android/a/e;

    .line 248
    new-instance v4, Lcom/apperhand/device/android/a/f;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/f;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->k:Lcom/apperhand/device/android/a/f;

    .line 249
    new-instance v4, Lcom/apperhand/device/android/a/d;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/d;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->l:Lcom/apperhand/device/android/a/d;

    .line 250
    new-instance v4, Lcom/apperhand/device/android/a/c;

    invoke-direct {v4, p0}, Lcom/apperhand/device/android/a/c;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->m:Lcom/apperhand/device/android/a/c;

    .line 252
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/apperhand/device/android/c/a;->a(Landroid/content/Context;)V

    .line 254
    new-instance v4, Lcom/apperhand/device/android/AndroidSDKProvider$1;

    invoke-direct {v4, p0, p0, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;-><init>(Lcom/apperhand/device/android/AndroidSDKProvider;Lcom/apperhand/device/a/a;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4, v3}, Lcom/apperhand/device/a/b;->a(Z)V

    .line 349
    new-instance v5, Lcom/apperhand/device/android/b/d;

    invoke-direct {v5, p0, p0, v4, v2}, Lcom/apperhand/device/android/b/d;-><init>(Landroid/content/Context;Lcom/apperhand/device/a/a;Lcom/apperhand/device/a/b;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/apperhand/device/android/AndroidSDKProvider;->g:Lcom/apperhand/device/a/c/a;

    .line 351
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 352
    new-instance v0, Lcom/apperhand/common/dto/Command;

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v0, v1}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 353
    invoke-virtual {v4, v0}, Lcom/apperhand/device/a/b;->a(Lcom/apperhand/common/dto/Command;)V

    .line 388
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 356
    const-string v1, "eulaAcceptDetails"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/apperhand/common/dto/Command;

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v1, v2}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 358
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 359
    const-string v3, "details"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v4, v1, v2}, Lcom/apperhand/device/a/b;->a(Lcom/apperhand/common/dto/Command;Ljava/util/Map;)V

    goto :goto_0

    .line 364
    :cond_1
    if-eqz v3, :cond_3

    .line 365
    const-string v0, "com.apperhand.global"

    invoke-virtual {p0, v0, v6}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 368
    const-string v1, "NEXT_RUN"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 370
    cmp-long v5, v0, v7

    if-nez v5, :cond_2

    move-wide v0, v2

    .line 378
    :goto_1
    cmp-long v5, v2, v0

    if-gez v5, :cond_3

    .line 380
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 381
    invoke-virtual {v4, v0, v1}, Lcom/apperhand/device/a/b;->a(J)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {v4, v6}, Lcom/apperhand/device/a/b;->a(Z)V

    goto :goto_1

    .line 386
    :cond_3
    invoke-virtual {v4}, Lcom/apperhand/device/a/b;->a()V

    goto :goto_0
.end method

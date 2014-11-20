.class final Lcom/apperhand/device/android/AndroidSDKProvider$1;
.super Lcom/apperhand/device/a/b;
.source "AndroidSDKProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apperhand/device/android/AndroidSDKProvider;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apperhand/device/android/AndroidSDKProvider;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/AndroidSDKProvider;Lcom/apperhand/device/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    iput-object p3, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/apperhand/device/a/b;-><init>(Lcom/apperhand/device/a/a;)V

    return-void
.end method

.method private a(Landroid/app/PendingIntent;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 297
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-long v3, p2, v5

    add-long/2addr v1, v3

    .line 300
    const-string v3, "NEXT_RUN"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v1, "INTERVAL"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 307
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 308
    const/4 v3, 0x3

    mul-long v4, p2, v5

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 309
    return-void
.end method

.method private i()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v1, "APPLICATION_ID"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "DEVELOPER_ID"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->b(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "M_SERVER_URL"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "FIRST_RUN"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    const-string v1, "USER_AGENT"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->c(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "SERVICE_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->i()Landroid/content/Intent;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 262
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a(Landroid/app/PendingIntent;J)V

    .line 264
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "Apperhand service was started successfully"

    invoke-interface {v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    .line 265
    invoke-super {p0}, Lcom/apperhand/device/a/b;->a()V

    .line 266
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "After executing commands"

    invoke-interface {v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1, v2}, Lcom/apperhand/device/android/c/a;->b(Landroid/content/Context;)V

    .line 269
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->e()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a(Landroid/app/PendingIntent;J)V

    .line 274
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Next command is on ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-direct {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->i()Landroid/content/Intent;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0, p1, p2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a(Landroid/app/PendingIntent;J)V

    .line 282
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    const-string v1, "ABTEST_STR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    const-string v1, "ABTEST_STR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method protected final b(J)V
    .locals 3
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    const-string v1, "LAST_INTERVAL"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return-void
.end method

.method protected final c()J
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    const-string v1, "LAST_INTERVAL"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 330
    return-wide v0
.end method

.method protected final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ENC_DEVICE_ID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ENC_DUMMY_ID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/apperhand/device/android/c/c;->a:Lcom/apperhand/device/android/c/c;

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    const-string v2, "Device id is missing"

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/c/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ENC_DEVICE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ENC_DUMMY_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

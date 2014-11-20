.class public final Lcom/apperhand/device/android/a/e;
.super Ljava/lang/Object;
.source "AndroidShortcutsDMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/a/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/apperhand/device/android/a/e$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/device/android/a/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/apperhand/device/android/a/e;->a:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 330
    .line 332
    if-nez p1, :cond_0

    move-object v0, v6

    .line 353
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/apperhand/device/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 343
    :goto_1
    if-nez v6, :cond_1

    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/apperhand/device/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".settings/favorites?notify=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method private static a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 315
    if-nez p0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const-string v1, "intent"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 320
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apperhand/device/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 324
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a/e$a;

    .line 361
    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v0

    .line 362
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v0, -0x3e7

    .line 224
    long-to-float v1, p2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 226
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v1}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_3

    .line 239
    if-eqz v1, :cond_2

    :try_start_1
    const-string v2, "screen"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 242
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_3
    :goto_1
    return v0

    .line 242
    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/apperhand/device/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iput-object v9, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/apperhand/device/android/a/e$a;

    invoke-direct {v5}, Lcom/apperhand/device/android/a/e$a;-><init>()V

    iget-object v6, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LAUNCHER_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v9, v2}, Lcom/apperhand/device/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0, v8}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lcom/apperhand/device/android/a/e$a;->c:Z

    iget-boolean v0, v5, Lcom/apperhand/device/android/a/e$a;->c:Z

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    :cond_1
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a/e$a;

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    iput-boolean v1, v0, Lcom/apperhand/device/android/a/e$a;->c:Z

    :cond_5
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    .line 60
    return-void
.end method

.method public final a(Lcom/apperhand/common/dto/Shortcut;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    .line 181
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_0

    .line 186
    :try_start_0
    invoke-static {v3, p1}, Lcom/apperhand/device/android/a/e;->a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 218
    :goto_1
    return v0

    .line 188
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 194
    goto :goto_1

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/apperhand/device/android/a/e;->d()Ljava/util/List;

    move-result-object v3

    .line 205
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    invoke-static {v0, p1}, Lcom/apperhand/device/android/a/e;->a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 211
    :goto_2
    if-eqz v0, :cond_2

    .line 212
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->a(Ljava/util/List;)V

    move v0, v1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 212
    :cond_3
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->a(Ljava/util/List;)V

    move v0, v2

    .line 218
    goto :goto_1

    .line 215
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->a(Ljava/util/List;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/apperhand/common/dto/Shortcut;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 425
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getIcon()[B

    move-result-object v2

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_0

    new-array v0, v6, [B

    const-string v2, "android.intent.extra.shortcut.ICON"

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    return-void

    .line 425
    :cond_0
    array-length v0, v2

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/apperhand/device/android/a/e;->d()Ljava/util/List;

    move-result-object v3

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 167
    if-nez v0, :cond_2

    move v0, v1

    .line 172
    :goto_1
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->a(Ljava/util/List;)V

    move v1, v0

    .line 173
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

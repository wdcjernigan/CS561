.class public Lcom/google/analytics/tracking/android/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsReceiver.java"


# static fields
.field static final CAMPAIGN_KEY:Ljava/lang/String; = "referrer"

.field static final INSTALL_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 29
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, campaign:Ljava/lang/String;
    const-string v3, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    :try_start_0
    const-string v3, "gaInstallData"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 40
    .local v2, output:Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 41
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v2           #output:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Error storing install campaign."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

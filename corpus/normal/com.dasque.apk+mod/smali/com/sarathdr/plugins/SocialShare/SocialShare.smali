.class public Lcom/sarathdr/plugins/SocialShare/SocialShare;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SocialShare.java"


# instance fields
.field private callback:Ljava/lang/String;

.field public smsCopy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sarathdr/plugins/SocialShare/SocialShare;->smsCopy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"

    .prologue
    const/4 v5, 0x0

    .line 34
    const-string v6, "CordovaLog"

    const-string v7, "SOCIAL SHARE EXECUTE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_0
    const-string v6, "startSmsActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, obj:Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, type:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sarathdr/plugins/SocialShare/SocialShare;->startSmsActivity(Ljava/lang/String;)V

    .line 67
    .end local v2           #obj:Lorg/json/JSONObject;
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v5, 0x1

    :goto_2
    return v5

    .line 41
    .restart local v2       #obj:Lorg/json/JSONObject;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 44
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_2
    const-string v6, "startEmailActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 46
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    .restart local v2       #obj:Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, msg:Ljava/lang/String;
    :goto_3
    const-string v6, "subject"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "subject"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, subject:Ljava/lang/String;
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/sarathdr/plugins/SocialShare/SocialShare;->startEmailActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #obj:Lorg/json/JSONObject;
    .end local v3           #subject:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 47
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #obj:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v1, ""

    goto :goto_3

    .line 48
    .restart local v1       #msg:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_4

    .line 52
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #obj:Lorg/json/JSONObject;
    :cond_5
    const-string v6, "startSocialActivity"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 55
    .restart local v2       #obj:Lorg/json/JSONObject;
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .restart local v1       #msg:Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/sarathdr/plugins/SocialShare/SocialShare;->startSocialActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v1           #msg:Ljava/lang/String;
    :cond_6
    const-string v1, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public startEmailActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "msg"
    .parameter "subject"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, emailIntent:Landroid/content/Intent;
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/sarathdr/plugins/SocialShare/SocialShare;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public startSmsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 72
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v0, it:Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/sarathdr/plugins/SocialShare/SocialShare;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 77
    return-void
.end method

.method public startSocialActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SOCIAL ACTIVITY!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, sharingIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/sarathdr/plugins/SocialShare/SocialShare;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/sarathdr/plugins/SocialShare/SocialShare;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Share via"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

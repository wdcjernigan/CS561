.class public Lcom/phonegap/DroidGap$GapViewClient;
.super Landroid/webkit/WebViewClient;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GapViewClient"
.end annotation


# instance fields
.field ctx:Lcom/phonegap/DroidGap;

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 841
    iput-object p2, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    .line 842
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 942
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$108(Lcom/phonegap/DroidGap;)I

    .line 950
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{ PhoneGap.onNativeReady.fire();}catch(e){_nativeReady = true;}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget v0, v0, Lcom/phonegap/DroidGap;->splashscreen:I

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iput v5, v0, Lcom/phonegap/DroidGap;->splashscreen:I

    .line 955
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v0, v0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iput-boolean v5, v0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 961
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "Notification"

    const-string v2, "activityStop"

    const/4 v3, 0x0

    const-string v4, "[]"

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v0, v0, Lcom/phonegap/DroidGap;->clearHistory:Z

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iput-boolean v5, v0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 967
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 969
    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 982
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: Error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$108(Lcom/phonegap/DroidGap;)I

    .line 988
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "Notification"

    const-string v2, "activityStop"

    const/4 v3, 0x0

    const-string v4, "[]"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v0, p2, p3, p4}, Lcom/phonegap/DroidGap;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 855
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 857
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 859
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v5, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error dialing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v6, "geo:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 869
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 871
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v5, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 872
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 873
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error showing map "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 879
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 881
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 883
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v5, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 884
    .end local v2           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 885
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error sending email "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 891
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v6, "sms:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 893
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 895
    const-string v5, "address"

    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v5, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 898
    .end local v2           #intent:Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 899
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error sending sms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v6, "http://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "https://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "file://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 907
    :cond_4
    const/16 v6, 0x2f

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 908
    .local v1, i:I
    move-object v3, p2

    .line 909
    .local v3, newBaseUrl:Ljava/lang/String;
    if-lez v1, :cond_5

    .line 910
    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 914
    :cond_5
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-boolean v5, v5, Lcom/phonegap/DroidGap;->loadInWebView:Z

    if-nez v5, :cond_6

    const-string v5, "file://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    #getter for: Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/phonegap/DroidGap;->access$200(Lcom/phonegap/DroidGap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 915
    :cond_6
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v5, v5, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v5, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 921
    :cond_7
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 923
    iget-object v5, p0, Lcom/phonegap/DroidGap$GapViewClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-virtual {v5, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 924
    .end local v2           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v0

    .line 925
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:I
    .end local v3           #newBaseUrl:Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 931
    goto/16 :goto_0
.end method

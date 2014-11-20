.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$url:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    return-object v0
.end method

.method private loadDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v1, v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 336
    .local v0, input:Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v15, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14, v15}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$3(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    new-instance v15, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 231
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v2, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v2, backParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v9, forwardParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-direct {v7, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 234
    .local v7, editParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v5, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v5, closeParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v13, wvParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v14, v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v11, main:Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v14, v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .local v12, toolbar:Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v14, v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v1, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, back:Landroid/widget/ImageButton;
    new-instance v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$2;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V

    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setId(I)V

    .line 251
    :try_start_0
    const-string v14, "www/childbrowser/icon_arrow_left.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->loadDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    new-instance v8, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v14, v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 258
    .local v8, forward:Landroid/widget/ImageButton;
    new-instance v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$3;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setId(I)V

    .line 265
    :try_start_1
    const-string v14, "www/childbrowser/icon_arrow_right.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->loadDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14, v15}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$8(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    new-instance v15, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$4;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setId(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v14, v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v14, Landroid/content/Context;

    invoke-direct {v4, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 288
    .local v4, close:Landroid/widget/ImageButton;
    new-instance v14, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$5;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/widget/ImageButton;->setId(I)V

    .line 295
    :try_start_2
    const-string v14, "www/childbrowser/icon_close.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->loadDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v15, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14, v15}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$12(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/webkit/WebView;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 304
    new-instance v3, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v15}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V

    .line 305
    .local v3, client:Landroid/webkit/WebViewClient;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->val$url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setId(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebView;->requestFocus()Z

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 314
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #calls: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->getShowLocationBar()Z
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$14(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 320
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 325
    .local v10, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 326
    const/4 v14, -0x1

    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 327
    const/4 v14, -0x1

    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v14}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 332
    return-void

    .line 252
    .end local v3           #client:Landroid/webkit/WebViewClient;
    .end local v4           #close:Landroid/widget/ImageButton;
    .end local v8           #forward:Landroid/widget/ImageButton;
    .end local v10           #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v6

    .line 253
    .local v6, e:Ljava/io/IOException;
    const-string v14, "ChildBrowser"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 266
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #forward:Landroid/widget/ImageButton;
    :catch_1
    move-exception v6

    .line 267
    .restart local v6       #e:Ljava/io/IOException;
    const-string v14, "ChildBrowser"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 296
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #close:Landroid/widget/ImageButton;
    :catch_2
    move-exception v6

    .line 297
    .restart local v6       #e:Ljava/io/IOException;
    const-string v14, "ChildBrowser"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

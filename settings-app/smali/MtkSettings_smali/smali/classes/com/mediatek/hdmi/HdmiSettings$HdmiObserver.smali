.class Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;
.super Landroid/os/UEventObserver;
.source "HdmiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HdmiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/hdmi/HdmiSettings;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/content/Context;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->mContext:Landroid/content/Context;

    .line 319
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->init()V

    .line 320
    return-void
.end method

.method private getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 356
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 357
    nop

    .line 358
    nop

    .line 360
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 362
    invoke-static {v0, v4, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    const-string v1, "HdmiReceiver.HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " content is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    nop

    .line 373
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 376
    :goto_0
    goto/16 :goto_8

    .line 374
    :catch_0
    move-exception p1

    .line 375
    const-string v1, "HdmiReceiver.HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v3, "close reader fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :catch_1
    move-exception p1

    goto :goto_2

    .line 366
    :catch_2
    move-exception v1

    goto :goto_3

    .line 364
    :catch_3
    move-exception v1

    goto :goto_4

    .line 371
    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_9

    .line 368
    :catch_4
    move-exception p1

    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_5

    .line 366
    :catch_5
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v1, v2

    goto :goto_6

    .line 364
    :catch_6
    move-exception v0

    move-object v0, v1

    :goto_4
    move-object v1, v2

    goto :goto_7

    .line 371
    :catchall_1
    move-exception p1

    goto/16 :goto_9

    .line 368
    :catch_7
    move-exception p1

    move-object v0, v1

    .line 369
    :goto_5
    :try_start_4
    const-string v2, "HdmiReceiver.HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    if-eqz v1, :cond_0

    .line 373
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_0

    .line 374
    :catch_8
    move-exception p1

    .line 375
    const-string v1, "HdmiReceiver.HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 366
    :catch_9
    move-exception v0

    move-object v0, v1

    .line 367
    :goto_6
    :try_start_6
    const-string v2, "HdmiReceiver.HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception when read file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    if-eqz v1, :cond_0

    .line 373
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_0

    .line 374
    :catch_a
    move-exception p1

    .line 375
    const-string v1, "HdmiReceiver.HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 364
    :catch_b
    move-exception v0

    move-object v0, v1

    .line 365
    :goto_7
    :try_start_8
    const-string v2, "HdmiReceiver.HdmiObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 371
    if-eqz v1, :cond_0

    .line 373
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 374
    :catch_c
    move-exception p1

    .line 375
    const-string v1, "HdmiReceiver.HdmiObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1

    .line 379
    :cond_0
    :goto_8
    return-object v0

    .line 371
    :goto_9
    if-eqz v1, :cond_1

    .line 373
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 376
    goto :goto_a

    .line 374
    :catch_d
    move-exception v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close reader fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiReceiver.HdmiObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    :goto_a
    throw p1
.end method

.method private declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 347
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    nop

    .line 352
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->update(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    :try_start_2
    const-string v0, "HdmiReceiver.HdmiObserver"

    const-string v1, "HDMI state fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 345
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(I)V
    .locals 1

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {v0}, Lcom/mediatek/hdmi/HdmiSettings;->access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    if-nez p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/hdmi/HdmiSettings;->access$202(Lcom/mediatek/hdmi/HdmiSettings;Z)Z

    .line 386
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$300(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mediatek/hdmi/HdmiSettings;->access$202(Lcom/mediatek/hdmi/HdmiSettings;Z)Z

    .line 389
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdmiSettings;->access$300(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3

    .line 332
    nop

    .line 334
    :try_start_0
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v0, "HdmiReceiver.HdmiObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HdmiObserver: Could not parse switch state from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->update(I)V

    .line 341
    return-void
.end method

.method public startObserve()V
    .locals 1

    .line 323
    const-string v0, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->startObserving(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public stopObserve()V
    .locals 0

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->stopObserving()V

    .line 328
    return-void
.end method

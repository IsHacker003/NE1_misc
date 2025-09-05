.class Lcom/android/settings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 326
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1100(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->access$1000(Lcom/android/settings/CryptKeeper;)V

    .line 329
    nop

    .line 335
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

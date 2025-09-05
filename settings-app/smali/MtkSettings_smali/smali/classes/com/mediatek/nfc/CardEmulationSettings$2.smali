.class Lcom/mediatek/nfc/CardEmulationSettings$2;
.super Landroid/database/ContentObserver;
.source "CardEmulationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/CardEmulationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/CardEmulationSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$2;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 338
    const-string p1, "@M_CardEmulationSettings"

    const-string p2, "mActiveCardModeObserver, onChange()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$2;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/CardEmulationSettings;->access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V

    .line 340
    return-void
.end method

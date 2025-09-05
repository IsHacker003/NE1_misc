.class Lcom/mediatek/nfc/CardEmulationSettings$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string p2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-virtual {p1}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    const-string p1, "@M_CardEmulationSettings"

    const-string p2, "Receive broadcast: RF field on detected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    const-string p2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-virtual {p1}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 83
    const-string p1, "@M_CardEmulationSettings"

    const-string p2, "Receive broadcast: RF field off detected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    :goto_0
    return-void
.end method

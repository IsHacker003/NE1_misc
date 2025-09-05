.class Lcom/mediatek/nfc/NfcSettings$2;
.super Landroid/database/ContentObserver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/NfcSettings;Landroid/os/Handler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 125
    const-string p1, "@M_NfcSettings"

    const-string p2, "mActiveCardModeObserver, onChange()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$300(Lcom/mediatek/nfc/NfcSettings;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    .line 128
    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$400(Lcom/mediatek/nfc/NfcSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "nfc_multise_active"

    .line 127
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    const-string p2, "@M_NfcSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferences, active mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EMULATION_OFF is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    .line 131
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p2, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p2}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p2}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    const p2, 0x7f1200ec    # @string/android_beam_off_summary 'Off'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p2, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p2}, Lcom/mediatek/nfc/NfcSettings;->access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

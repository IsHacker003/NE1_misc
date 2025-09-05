.class Lcom/android/settings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1191
    iput-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1193
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p1

    .line 1194
    iget-object v0, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    .line 1195
    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v1

    .line 1196
    iget-object v2, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v2

    .line 1197
    iget-object v3, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v3}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v3

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v4, 0x7f120af8    # @string/radio_info_ims_reg_status_registered 'Registered'

    invoke-virtual {p1, v4}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1201
    :cond_0
    iget-object p1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v4, 0x7f120af7    # @string/radio_info_ims_reg_status_not_registered 'Not Registered'

    invoke-virtual {p1, v4}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1203
    :goto_0
    iget-object v4, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v5, 0x7f120af4    # @string/radio_info_ims_feature_status_available 'Available'

    invoke-virtual {v4, v5}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1204
    iget-object v5, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v6, 0x7f120af5    # @string/radio_info_ims_feature_status_unavailable 'Unavailable'

    invoke-virtual {v5, v6}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1207
    iget-object v6, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v7, 0x7f120af6    # @string/radio_info_ims_reg_status 'IMS Registration: %1$s\nVoice over LTE: %2$s\nVoice over WiFi: %3$s\nVideo Calling: %4$s\nUT Interface:  ...'

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 1209
    if-eqz v0, :cond_1

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object p1, v5

    :goto_1
    const/4 v0, 0x1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    .line 1210
    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v1, v5

    :goto_2
    aput-object v1, v8, p1

    const/4 p1, 0x3

    .line 1211
    if-eqz v2, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    aput-object v1, v8, p1

    const/4 p1, 0x4

    .line 1212
    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v5

    :goto_4
    aput-object v4, v8, p1

    .line 1207
    invoke-virtual {v6, v7, v8}, Lcom/android/settings/RadioInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1215
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/RadioInfo$12;->this$0:Lcom/android/settings/RadioInfo;

    const v2, 0x7f120af9    # @string/radio_info_ims_reg_status_title 'IMS Status'

    .line 1216
    invoke-virtual {v1, v2}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1219
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1221
    return v0
.end method

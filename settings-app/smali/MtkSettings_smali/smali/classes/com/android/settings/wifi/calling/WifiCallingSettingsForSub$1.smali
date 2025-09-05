.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettingsForSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 143
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 148
    move v1, v3

    goto :goto_0

    .line 145
    :cond_0
    nop

    .line 148
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 151
    nop

    .line 152
    nop

    .line 153
    const-string v0, "carrier_config"

    .line 154
    invoke-virtual {p2, v0}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 155
    if-eqz p2, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 157
    if-eqz p2, :cond_2

    .line 158
    const-string v0, "editable_wfc_mode_bool"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    const-string v4, "editable_wfc_roaming_mode_bool"

    invoke-virtual {p2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_2

    .line 165
    :cond_2
    move p2, v2

    move v0, v3

    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "wifi_calling_mode"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_4

    .line 167
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 171
    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "wifi_calling_roaming_mode"

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 176
    :cond_6
    return-void
.end method

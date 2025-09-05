.class Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;
.super Ljava/lang/Object;
.source "AdvancedWifiCallingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

.field final synthetic val$switchView:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;Landroid/widget/Switch;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->val$switchView:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 233
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$302(Z)Z

    .line 234
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->val$switchView:Landroid/widget/Switch;

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 235
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$400(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 236
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$500(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 237
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$600(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 238
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;->this$0:Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;

    invoke-static {p2}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->access$700(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/support/v7/preference/ListPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 239
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string p2, "Wifi Calling OFF"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

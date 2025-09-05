.class public Lcom/mediatek/settings/display/HdmiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "HdmiPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mHdmiManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/settings/display/HdmiPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/settings/display/HdmiPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/settings/display/HdmiPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/display/HdmiPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mHdmiManager:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1206c3    # @string/hdmi_replace_hdmi 'HDMI'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "DISPLAY_TYPE_MHL"

    invoke-static {v1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v1

    .line 61
    const-string v2, "DISPLAY_TYPE_SLIMPORT"

    invoke-static {v2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v2

    .line 62
    iget-object v3, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mHdmiManager:Ljava/lang/Object;

    invoke-static {v3}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayType(Ljava/lang/Object;)I

    move-result v3

    .line 63
    if-ne v3, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1206c4    # @string/hdmi_replace_mhl 'MHL'

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120cb1    # @string/slimport_replace_hdmi 'SlimPort'

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    nop

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "hdmi_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 41
    const-class v0, Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiService()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mHdmiManager:Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/display/HdmiPreferenceController;->mHdmiManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

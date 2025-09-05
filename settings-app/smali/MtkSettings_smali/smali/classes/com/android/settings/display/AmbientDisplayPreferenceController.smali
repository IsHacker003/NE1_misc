.class public Lcom/android/settings/display/AmbientDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AmbientDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 40
    iput-object p3, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AOD_SUPPORT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f1200e3    # @string/ambient_display_screen_summary_always_on 'Always on / Increased battery usage'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f1200e4    # @string/ambient_display_screen_summary_notifications 'New notifications'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const v0, 0x7f120db8    # @string/switch_on_text 'On'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 59
    :cond_2
    const v0, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 61
    :goto_0
    return-void
.end method

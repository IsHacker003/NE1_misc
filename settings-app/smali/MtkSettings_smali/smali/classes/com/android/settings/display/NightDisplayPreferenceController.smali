.class public Lcom/android/settings/display/NightDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NightDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013    # @bool/config_night_light_suggestion_enabled 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 36
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 37
    return v1

    .line 39
    :cond_0
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "night_display"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

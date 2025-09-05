.class public Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "TurnOverToRejectCallPreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_turn_over_to_reject_call_video"


# instance fields
.field private final mTurnOverRejectKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->mTurnOverRejectKey:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static isGestureAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050049    # @bool/config_turn_over_reject_call 'true'

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->mTurnOverRejectKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "gesture_turn_over_to_reject_call_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_turn_over_reject_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcust/settings/gestures/TurnOverToRejectCallPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_turn_over_reject_call"

    .line 45
    nop

    .line 44
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    const/4 p1, 0x1

    return p1
.end method

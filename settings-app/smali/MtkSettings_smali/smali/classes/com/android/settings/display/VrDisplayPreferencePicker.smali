.class public Lcom/android/settings/display/VrDisplayPreferencePicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VrDisplayPreferencePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;

    const/4 v3, 0x0

    const v4, 0x7f120570    # @string/display_vr_pref_low_persistence 'Reduce blur (recommended)'

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;

    const/4 v3, 0x1

    const v4, 0x7f120571    # @string/display_vr_pref_off 'Reduce flicker'

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$VrCandidateInfo;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vr_display_mode"

    iget v2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vr_display_pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x399

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 38
    const v0, 0x7f1500b8    # @xml/vr_display_settings 'res/xml/vr_display_settings.xml'

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "vr_display_pref_1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    :pswitch_1
    const-string v2, "vr_display_pref_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 76
    return v1

    .line 73
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "vr_display_mode"

    iget v1, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 70
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "vr_display_mode"

    iget v2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->mUserId:I

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5e462714
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

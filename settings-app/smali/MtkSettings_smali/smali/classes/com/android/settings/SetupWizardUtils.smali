.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field static final SYSTEM_PROP_SETUPWIZARD_THEME:Ljava/lang/String; = "setupwizard.theme"


# direct methods
.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    .line 72
    const-string v0, "theme"

    const-string v1, "theme"

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 74
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 3

    .line 31
    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string p0, "setupwizard.theme"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    :cond_0
    const v0, 0x7f1300b5    # @style/GlifTheme.Light

    if-eqz p0, :cond_2

    .line 36
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 48
    :pswitch_0
    const p0, 0x7f1300b4    # @style/GlifTheme

    return p0

    .line 46
    :pswitch_1
    return v0

    .line 44
    :pswitch_2
    const p0, 0x7f1300b6    # @style/GlifV2Theme

    return p0

    .line 42
    :pswitch_3
    const p0, 0x7f1300b7    # @style/GlifV2Theme.Light

    return p0

    .line 40
    :pswitch_4
    const p0, 0x7f1300bc    # @style/GlifV3Theme

    return p0

    .line 38
    :pswitch_5
    const p0, 0x7f1300bd    # @style/GlifV3Theme.Light

    return p0

    .line 51
    :cond_2
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p0

    .line 56
    nop

    .line 57
    const v0, 0x7f1300bc    # @style/GlifV3Theme

    if-ne p0, v0, :cond_0

    .line 58
    const p0, 0x7f1300bf    # @style/GlifV3Theme.Transparent

    goto :goto_0

    .line 59
    :cond_0
    const v0, 0x7f1300bd    # @style/GlifV3Theme.Light

    if-ne p0, v0, :cond_1

    .line 60
    const p0, 0x7f1300be    # @style/GlifV3Theme.Light.Transparent

    goto :goto_0

    .line 61
    :cond_1
    const v0, 0x7f1300b6    # @style/GlifV2Theme

    if-ne p0, v0, :cond_2

    .line 62
    const p0, 0x7f1300b9    # @style/GlifV2Theme.Transparent

    goto :goto_0

    .line 63
    :cond_2
    const v0, 0x7f1300b5    # @style/GlifTheme.Light

    if-ne p0, v0, :cond_3

    .line 64
    const p0, 0x7f130121    # @style/SetupWizardTheme.Light.Transparent

    goto :goto_0

    .line 65
    :cond_3
    const v0, 0x7f1300b4    # @style/GlifTheme

    if-ne p0, v0, :cond_4

    .line 66
    const p0, 0x7f130122    # @style/SetupWizardTheme.Transparent

    goto :goto_0

    .line 68
    :cond_4
    const p0, 0x7f1300b8    # @style/GlifV2Theme.Light.Transparent

    :goto_0
    return p0
.end method

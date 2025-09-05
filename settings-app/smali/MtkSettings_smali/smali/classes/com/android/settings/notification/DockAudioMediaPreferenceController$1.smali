.class Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "DockAudioMediaPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/DockAudioMediaPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/notification/DockAudioMediaPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    .line 42
    iput-object p1, p0, Lcom/android/settings/notification/DockAudioMediaPreferenceController$1;->this$0:Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    .line 51
    packed-switch p2, :pswitch_data_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 56
    :pswitch_0
    const p2, 0x7f120583    # @string/dock_audio_media_enabled 'Media audio only'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_1
    const p2, 0x7f120582    # @string/dock_audio_media_disabled 'All audio'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05004f    # @bool/has_dock_settings 'false'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

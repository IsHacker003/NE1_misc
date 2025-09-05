.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoPreference"
.end annotation


# instance fields
.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mVideoBackgroundView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 51
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    const v1, 0x7f070125    # @dimen/screen_magnification_video_background_width '750.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 60
    nop

    .line 61
    const v1, 0x7f070128    # @dimen/screen_magnification_video_width '170.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 62
    nop

    .line 63
    const v1, 0x7f070126    # @dimen/screen_magnification_video_height '311.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 64
    const v1, 0x7f070127    # @dimen/screen_magnification_video_margin_top '40.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 68
    const v1, 0x7f0a03ca    # @id/video_background

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f0a03c9    # @id/video

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/VideoView;

    .line 72
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)V

    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    const-string v1, "video_resource"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "%s://%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.resource"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->this$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 88
    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "video_resource"

    .line 89
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 93
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 96
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;Landroid/widget/VideoView;IIII)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 112
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mVideoBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    return-void
.end method
